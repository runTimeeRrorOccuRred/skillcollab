
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/publicPosts/widgets/explore_post_tile.dart';
class ExplorePublicPostView extends ConsumerStatefulWidget {
  final List<String> interests;
  final String searchKey;
  const ExplorePublicPostView({super.key, required this.interests, required this.searchKey});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExplorePublicPostViewState();
}

class _ExplorePublicPostViewState extends ConsumerState<ExplorePublicPostView> with BaseScreenView{
  
  final ScrollController _scrollController = ScrollController();

  @override
  void initState(){
    super.initState();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        Logger.printError("end");
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExplorePost(
          context, 
          ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 
          5, 
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
        // ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExplorePost(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 5, ref.watch(exploreSearchViewModel).allDataPageNumber,);
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
        itemCount: ref.watch(exploreSearchViewModel).postDataList.length,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ExplorePostTile(postData: ref.watch(exploreSearchViewModel).postDataList[index], index: index, interests: widget.interests,);
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
