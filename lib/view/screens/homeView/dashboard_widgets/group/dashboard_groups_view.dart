// ignore_for_file: avoid_print, require_trailing_commas

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsWithLogin/models/get_all_groups_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/group/dashboard_groups_view_tile.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/group/dashboard_groups_view_tile_WOL.dart';
// import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
// import 'package:skill_colab/view/screens/search/search_view_model.dart';

class DashboardGroupsView extends ConsumerStatefulWidget {
  final ScrollController parentScrollController;
  const DashboardGroupsView({super.key, required this.parentScrollController});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardGroupsViewState();
}

class _DashboardGroupsViewState extends ConsumerState<DashboardGroupsView> with BaseScreenView {

  // final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(() {
    //   // Logger.printError(_scrollController.offset.toString());
    //   if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
    //     print("check");
    //     ref.read(dashboardViewModel).incrementGroupPageNumber();
    //     if(AppConstants.usertype == 0) {
    //       // ref.read(dashboardViewModel).getAllGroupsWithoutLogin(
    //       //   context, 
    //       //   const GetAllGroupsWithoutLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
    //       //   ref.read(dashboardViewModel).allGroupsPageSize,
    //       //   load: false
    //       // );
    //     } else {
    //       ref.read(dashboardViewModel).getPublicPosts(
    //         context, 
    //         const GetPublicPostsRequestModel(interests: '', searchKey: '', timeFilter: 'allTime', feedFilter: ''),
    //         ref.watch(dashboardViewModel).allGroupsAndPeoplePageSize, ref.read(dashboardViewModel).groupPageNumber,
    //         load: false
    //       );
    //     }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    final _dashboardViewModel = ref.watch(dashboardViewModel);
    // final size = MediaQuery.of(context).size;
    if(AppConstants.usertype == 0){
      return ListView.builder(
      controller: widget.parentScrollController,
      itemCount: ref.watch(dashboardViewModel).groupDataList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: ()=> guestLoginRequestDialog(context, "to get into the menu section"),
          child: AbsorbPointer(child: DashboardGroupsViewTileWOL(groupModel: ref.watch(dashboardViewModel).groupDataList[index], index : index),));
      },
    );
    }else{
      return CustomMaterialIndicator(
        onRefresh: ()async{
              Future.delayed(const Duration(seconds: 2));
              _dashboardViewModel.clearData();
              _dashboardViewModel.getAllGroupsAndPeopleWithLogin(
                context,
                const GetAllGroupsAndPeopleWithLoginRequestModel(
                    interests: '', searchKey: '', timeFilter: 'allTime',),
                    _dashboardViewModel.allGroupsAndPeoplePageSize,
                    _dashboardViewModel.pageNumber,
                    load: false,
                    isDefault: true,);
                _dashboardViewModel.getAllPeopleWithLogin(
                context,
                const GetAllPeopleWithLoginRequestModel(
                    interests: '', searchKey: '', timeFilter: 'allTime',),
                _dashboardViewModel.allPeoplePageSize,
                ref.watch(dashboardViewModel).peoplePageNumber,
                load: false,
                isDefault: true,);
                _dashboardViewModel.getAllGroupsWithLogin(
                context,
                // load:false,
                const GetAllGroupsWithLoginRequestModel(
                    interests: '', searchKey: '', timeFilter: 'allTime',),
                _dashboardViewModel.allGroupsPageSize,
                isDefault: true,);
                _dashboardViewModel.getPublicPosts(context,const GetPublicPostsRequestModel(searchKey: '', interests: '', timeFilter: "allTime", feedFilter: 'New'), _dashboardViewModel.allGroupsAndPeoplePageSize, _dashboardViewModel.groupPageNumber, );
              // return false;
            },
            indicatorBuilder: (context, controller) {
              return const Icon(
                Icons.refresh,
                color: primaryColor,
                size: 30,
              );
            },
        child: ListView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          controller: widget.parentScrollController,
          itemCount:  ref.watch(dashboardViewModel).groupDataList.length + 1,
          itemBuilder: (context, index) {
            if(index == ref.watch(dashboardViewModel).groupDataList.length) {
              if(_dashboardViewModel.paginationLoader) {
                return SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(child: CircularProgressIndicator(color: primaryColor,),),
                );
              } else {
                Container();
              }
            } else {
              return DashboardGroupsViewTile(groupModel: ref.watch(dashboardViewModel).groupDataList[index], index : index); 
            }

            return Container();
          },
        ),
      );
    }
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
