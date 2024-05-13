// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:skill_colab/core/constants.dart';
// // import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
// import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
// import 'package:skill_colab/helpers/base_screen_view.dart';
// import 'package:skill_colab/routes/app_routes.dart';
// import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
// import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/user_post_tile.dart';
// import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

// ignore_for_file: avoid_dynamic_calls, avoid_print, no_leading_underscores_for_local_identifiers
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsWithLogin/models/get_all_groups_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsAndPeopleWithoutLogin/models/get_all_groups_and_people_without_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/group_post_tile.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/group_post_tile_WoL.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/user_post_tile.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/user_post_tile_WoL.dart';

class DashboardAllView extends ConsumerStatefulWidget {
  final ScrollController parentScrollController;
  const DashboardAllView({super.key, required this.parentScrollController});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardAllViewState();
}

class _DashboardAllViewState extends ConsumerState<DashboardAllView> with BaseScreenView {
  // final ScrollController _scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController.addListener(() {
  //     // Logger.printError(_scrollController.offset.toString());
  //     if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
  //       print("check");
  //       ref.read(dashboardViewModel).incrementPageNumber();
  //       if(AppConstants.usertype == 0) {
  //         // ref.read(dashboardViewModel).getAllGroupsAndPeopleWithoutLogin(context, ref.read(dashboardViewModel).allGroupsAndPeoplePageSize, load: false);
  //       } else {
  //         ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
  //           context, 
  //           const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'), 
  //           ref.read(dashboardViewModel).allGroupsAndPeoplePageSize, 
  //           ref.read(dashboardViewModel).pageNumber,
  //           load: false,
  //         );
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final _dashboardViewModel = ref.watch(dashboardViewModel);
        if(AppConstants.usertype == 0){
          return CustomMaterialIndicator(
            onRefresh: ()async{
              Future.delayed(const Duration(seconds: 2));
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
            controller: widget.parentScrollController,
            itemCount: _dashboardViewModel.getAllGroupsAndPeopleWithoutLoginResponseModel.data?.length ?? 0,
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if(_dashboardViewModel.getAllGroupsAndPeopleWithoutLoginResponseModel.data?[index]?.groupId == null) {
                // return UserPostTileWithoutLogin(userPostData: __dashboardViewModel.getAllGroupsAndPeopleWithoutLoginResponseModel.data?[index]);
                return InkWell(
                  onTap: ()=> guestLoginRequestDialog(context, "to get into the menu section"),
                  child: AbsorbPointer(child: UserPostTileWithoutLogin(userPostData: _dashboardViewModel.getAllGroupsAndPeopleWithoutLoginResponseModel.data?[index] ?? const PeopleAndGroupPostWOL())),);
              } else {
                return GestureDetector(
                  onTap: ()=> guestLoginRequestDialog(context, "to get into the menu section"),
                  child: AbsorbPointer(child: GroupPostTileWithoutLogin(userPostData: _dashboardViewModel.getAllGroupsAndPeopleWithoutLoginResponseModel.data?[index] ?? const PeopleAndGroupPostWOL())),);
              }
            },
            ),
          );
        }else{
          // final size = MediaQuery.of(context).size;
          return CustomMaterialIndicator(
            onRefresh: () async {
              Future.delayed(const Duration(seconds: 2));
              _dashboardViewModel.clearData();
              _dashboardViewModel.getAllGroupsAndPeopleWithLogin(
                context,
                const GetAllGroupsAndPeopleWithLoginRequestModel(
                    interests: '', searchKey: '', timeFilter: 'allTime',),
                    _dashboardViewModel.allGroupsAndPeoplePageSize,
                    _dashboardViewModel.pageNumber,
                    // load: false,
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
                load:false,
                const GetAllGroupsWithLoginRequestModel(
                    interests: '', searchKey: '', timeFilter: 'allTime',),
                _dashboardViewModel.allGroupsPageSize,
                isDefault: true,);
                _dashboardViewModel.getPublicPosts(context,const GetPublicPostsRequestModel(searchKey: '', interests: '', timeFilter: "allTime", feedFilter: 'New'), _dashboardViewModel.allGroupsAndPeoplePageSize, _dashboardViewModel.groupPageNumber, load: false);
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
              padding: EdgeInsets.zero,
              // physics: const NeverScrollableScrollPhysics(),
              controller: widget.parentScrollController,
              itemCount: _dashboardViewModel.allDataList.length + 1,
              itemBuilder: (context, index) {

                if(index == _dashboardViewModel.allDataList.length) {
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
                  if(_dashboardViewModel.allDataList[index].groupId == null) {
                    return UserPostTile(userPostData: _dashboardViewModel.allDataList[index], index: index,);
                  } else {
                    return GroupPostTile(userPostData: _dashboardViewModel.allDataList[index], index: index,);
                  }
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
