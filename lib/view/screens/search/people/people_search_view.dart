// ignore_for_file: avoid_dynamic_calls, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
// import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/people_tile.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class PeopleSearchView extends ConsumerStatefulWidget {
  const PeopleSearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PeopleSearchViewState();
}

class _PeopleSearchViewState extends ConsumerState<PeopleSearchView> with BaseScreenView {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Logger.printError(_scrollController.offset.toString());
      // if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      //   print("check");
      //   ref.read(dashboardViewModel).incrementAllPeoplePageSize();
      //   if(AppConstants.usertype == 0) {
      //     ref.read(dashboardViewModel).getAllPeopleWithoutLogin(
      //       context, 
      //       const GetAllPeopleWithoutLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
      //       ref.read(dashboardViewModel).allPeoplePageSize,
      //       load: false
      //     );
      //   } else {
      //     ref.read(dashboardViewModel).getAllPeopleWithLogin(
      //       context, 
      //       const GetAllPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
      //       ref.read(dashboardViewModel).allPeoplePageSize,
      //       load: false
      //     );
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _dashboardViewModel = ref.watch(dashboardViewModel);
    // Logger.printWarning(_dashboardViewModel.getAllPeopleWithoutLoginResponseModel.data?.length.toString() ?? "");
    // final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: ref.watch(searchViewModel).allPeopleResponseModel.data?.isEmpty ?? true
      ? SizedBox(
        height: MediaQuery.of(context).size.height / 1.15,
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
        // controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: ref.watch(searchViewModel).allPeopleResponseModel.data?.length ?? 0,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return PeopleTile(peopleData: ref.watch(searchViewModel).allPeopleResponseModel.data?[index] ?? const UserData());
        },
      ),
      // child: AppConstants.usertype == 0
      //   ? ListView.builder(
      //       shrinkWrap: true,
      //       itemCount: _dashboardViewModel.getAllPeopleWithoutLoginResponseModel.data?.length ?? 0,
      //       physics: const NeverScrollableScrollPhysics(),
      //       itemBuilder: (context, index) {
      //         return PeopleTile(peopleData: _dashboardViewModel.getAllPeopleWithoutLoginResponseModel.data?[index] ?? const People());
      //       },
      //     )
      //   : ListView.builder(
      //       shrinkWrap: true,
      //       itemCount: _dashboardViewModel.getAllPeopleWithLoginResponseModel.data?.length ?? 0,
      //       physics: const NeverScrollableScrollPhysics(),
      //       itemBuilder: (context, index) {
      //         return PeopleTile(peopleData: _dashboardViewModel.getAllPeopleWithLoginResponseModel.data?[index] ?? const People());
      //         // return Text("People");
      //       },
      //     ),
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
