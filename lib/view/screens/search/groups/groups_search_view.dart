// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/group_tile.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class GroupsSearchView extends ConsumerStatefulWidget {
  const GroupsSearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GroupsSearchViewState();
}

class _GroupsSearchViewState extends ConsumerState<GroupsSearchView> with BaseScreenView {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Logger.printError(_scrollController.offset.toString());
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        print("check");
        ref.read(dashboardViewModel).incrementAllGroupsPageSize();
        // if(AppConstants.usertype == 0) {
        //   ref.read(dashboardViewModel).getAllGroupsWithoutLogin(
        //     context, 
        //     const GetAllGroupsWithoutLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
        //     ref.read(dashboardViewModel).allGroupsPageSize,
        //     load: false
        //   );
        // } else {
        //   ref.read(dashboardViewModel).getAllGroupsWithLogin(
        //     context, 
        //     const GetAllGroupsWithLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
        //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
        //     load: false
        //   );
        // }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _dashboardViewModel = ref.watch(dashboardViewModel);
    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ref.watch(searchViewModel).allGroupResponseModel.data?.isEmpty ?? true 
        ? SizedBox(
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width,
          child: const Center(
              child: Text(
                '',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,),
              ),
            ),
        )
        : ListView.builder(
          shrinkWrap: true,
          itemCount: ref.watch(searchViewModel).allGroupResponseModel.data?.length ?? 0,
          //
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GroupTile(groupData: ref.watch(searchViewModel).allGroupResponseModel.data?[index] ?? const GroupDataa());
          },
        ),
        // child: AppConstants.usertype == 0
          // ? ListView.builder(
          //     itemCount: _dashboardViewModel.getAllGroupsWithoutLoginResponseModel.data?.length ?? 0,
          //     physics: const NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) {
          //       return GroupTile(groupData: _dashboardViewModel.getAllGroupsWithoutLoginResponseModel.data?[index] ?? const GroupDatum());
          //     },
          //   )
          // : ListView.builder(
          //     itemCount: _dashboardViewModel.getAllGroupsWithLoginResponseModel.data?.length ?? 0,
          //     physics: const NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) {
          //       return GroupTile(groupData: _dashboardViewModel.getAllGroupsWithLoginResponseModel.data?[index] ?? const GroupDatum());
          //     },
          //   ),
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
