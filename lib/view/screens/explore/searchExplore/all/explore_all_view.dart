// ignore_for_file: avoid_dynamic_calls, body_might_complete_normally_nullable
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/all/widgets/group_tile.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/all/widgets/people_tile.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/all/widgets/post_tile.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';

class ExploreAllView extends ConsumerStatefulWidget {
  final List<String> interests;
  final String searchKey;
  const ExploreAllView({super.key, required this.interests, required this.searchKey});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExploreAllViewState();
}

class _ExploreAllViewState extends ConsumerState<ExploreAllView> with BaseScreenView{

  final ScrollController _scrollController = ScrollController();

  @override
  void initState(){
    super.initState();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        Logger.printError("end");
        Logger.printWarning(ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey).toString());
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExploreAll(
          context, 
          ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 
          2, 
          ref.watch(exploreSearchViewModel).allDataPageNumber, 
          load: false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: ()async{
        Future.delayed(const Duration(seconds: 2));
        ref.read(exploreSearchViewModel).clearAllDataList();
        Logger.printError("end");
        // ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExploreAll(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 2, ref.watch(exploreSearchViewModel).allDataPageNumber,);
      },
      indicatorBuilder: (context, controller) {
        return const Icon(
          Icons.refresh,
          color: primaryColor,
          size: 30,
        );
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: ref.watch(exploreSearchViewModel).allDataList.length,
        physics: const BouncingScrollPhysics(),
        // padding: const EdgeInsets.only(bottom: 10),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          if (ref.watch(exploreSearchViewModel).allDataList[index].exploreType == 'usersPost') {
            return ExplorePostTile(index: index, postData: ref.watch(exploreSearchViewModel).allDataList[index], interests: widget.interests,);
          }else if(ref.watch(exploreSearchViewModel).allDataList[index].exploreType == 'groupPost'){
            return ExplorePostTile(index: index, postData: ref.watch(exploreSearchViewModel).allDataList[index], interests: widget.interests,);
          }else if(ref.watch(exploreSearchViewModel).allDataList[index].exploreType == 'groups'){
            return ExploreGroupTile(groupData: ref.watch(exploreSearchViewModel).allDataList[index], index: index, interests: widget.interests,);
          }else if(ref.watch(exploreSearchViewModel).allDataList[index].exploreType == 'users'){
            return ExplorePeopleTile(userData: ref.watch(exploreSearchViewModel).allDataList[index], interests: widget.interests,);
          }
        },
      ),
    );
  }
  
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
  
  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }
  
  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
