// ignore_for_file: use_named_constants, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_group_interest_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class MyGroupsView extends ConsumerStatefulWidget {
  const MyGroupsView({super.key});

  @override
  ConsumerState<MyGroupsView> createState() => _MyGroupsViewState();
}

class _MyGroupsViewState extends ConsumerState<MyGroupsView> with BaseScreenView {
  late MyGroupsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(myGroupsViewModel);
      _viewModel.attachView(this);
      _viewModel.getMyGroups(context);
      _viewModel.getMyInterestGroups(MyGroupInterestRequestModel(interests: ref.watch(selfDataProvider).singleUserResponseModel.data?.interests));
      _viewModel.getUserMemberOfList(AppConstants.userId);
    });
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(myGroupsViewModel);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        _viewModel.clearData();
        context.pop();
      },
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: const BoxDecoration(color: primaryColor),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _viewModel.clearData();
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.arrow_back_ios,
                                          color: primaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 22),
                                    const Text(
                                      'My Groups',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                context.pushNamed(AppRoute.settings.name);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                  top: 10,
                                  bottom: 10,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: primaryColor,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 15),
                      ],),
                  // elevation: 5,
                  // color: kWhite,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  margin: const EdgeInsets.only(right: 16, left: 16),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Groups',
                            style: TextStyle(
                              color: Color(0xFF1B9AAA),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          gapH8,
                          const Divider(
                            color: Color.fromARGB(255, 225, 225, 225),
                            thickness: 1,
                            height: 5,
                          ),
                          gapH8,
                          Container(
                            child: _viewModel.loading
                                ? ShimmerWidget()
                                : _viewModel.memberOfResponseModel.data?.isEmpty ?? false
                                    ? Column(
                                        children: [
                                          gapH24,
                                          const Center(child: Text("You dont have any groups :(", style: TextStyle(color: primaryColor,),)),
                                          gapH24,
                                          TextButton(
                                            onPressed: () {
                                              context.pushNamed(AppRoute.myGroupsViewAll.name);
                                            },
                                            child: const Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'View Other Groups',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF1B9AAA),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.expand_more,
                                                  color: primaryColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          ...List.generate(
                                            (_viewModel.memberOfResponseModel.data?.length ?? 0) > 10 ? 10 : _viewModel.memberOfResponseModel.data?.length ?? 0, // size of the list for my groups
                                            (index) => GestureDetector(
                                              onTap: () {                                              
                                                if(_viewModel.memberOfResponseModel.data?[index]?.groupId?.privacy == "public") {
                                                  context.pushNamed(
                                                    AppRoute.publicGroupProfileView.name,
                                                    extra: {
                                                      'groupDetails': GroupDatum(id: _viewModel.memberOfResponseModel.data?[index]?.groupId?.id), 
                                                      'isSelfGroup':  (_viewModel.memberOfResponseModel.data?[index]?.groupId?.userId ?? "") == AppConstants.userId,
                                                    },
                                                  ); 
                                                } else if(_viewModel.memberOfResponseModel.data?[index]?.groupId?.privacy == "private") {
                                                  context.pushNamed(
                                                    AppRoute.privateGroupProfileView.name,
                                                    extra: {
                                                      'groupDetails': GroupDatum(id: _viewModel.memberOfResponseModel.data?[index]?.groupId?.id), 
                                                      'isSelfGroup':  (_viewModel.memberOfResponseModel.data?[index]?.groupId?.userId ?? "") == AppConstants.userId,
                                                    },
                                                  ); 
                                                } else {
                                                  context.pushNamed(
                                                    AppRoute.premiumGroupProfileView.name,
                                                    extra: {
                                                      'groupDetails': GroupDatum(id: _viewModel.memberOfResponseModel.data?[index]?.groupId?.id), 
                                                      'isSelfGroup':  (_viewModel.memberOfResponseModel.data?[index]?.groupId?.userId ?? "") == AppConstants.userId,
                                                    },
                                                  ); 
                                                }  
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.only(bottom: 10),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      child: !(_viewModel.memberOfResponseModel.data![index]?.groupId?.groupPhoto ?? "").contains('https://skill') && (_viewModel.memberOfResponseModel.data![index]?.groupId?.groupPhoto?.isNotEmpty ?? false)
                                                          ? Container(
                                                              height: 38,
                                                              width: 38,
                                                              padding: const EdgeInsets.all(4),
                                                              decoration: BoxDecoration(
                                                                shape: BoxShape.circle,
                                                                border: Border.all(color: primaryColor),
                                                              ),
                                                              child: Image.asset("assets/icons/group-icon.png"),
                                                            )
                                                          : Container(
                                                              height: 38,
                                                              width: 38,
                                                              padding: const EdgeInsets.all(4),
                                                              decoration: BoxDecoration(
                                                                shape: BoxShape.circle,
                                                                border: Border.all(color: primaryColor),
                                                                image: DecorationImage(
                                                                  image: NetworkImage(_viewModel.memberOfResponseModel.data![index]?.groupId?.groupPhoto ?? AppConstants.imageNotFoundLink),
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                            ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "${_viewModel.memberOfResponseModel.data?[index]?.groupId?.name ?? ""}, ${_viewModel.memberOfResponseModel.data?[index]?.groupId?.location ?? ""}",
                                                        overflow: TextOverflow.ellipsis,
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              context.pushNamed(AppRoute.myGroupsViewAll.name);
                                            },
                                            child: const Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'View All',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF1B9AAA),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.expand_more,
                                                  color: primaryColor,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                context.pushNamed(AppRoute.createGroupView.name).then((value) {
                  ref.read(myGroupsViewModel).clearData();
                  ref.read(myGroupsViewModel).getMyGroups(context);
                  ref.read(myGroupsViewModel).getUserMemberOfList(AppConstants.userId);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(13),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F1B9AAA),
                      blurRadius: 18,
                      offset: Offset(0, 8),
                    ),
                    BoxShadow(
                      color: Color(0x0A141414),
                      blurRadius: 1,
                    ),
                  ],
                ),
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      'Create Group',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            gapH32,
          ],
        ),
      ),
    );
  }



  Widget ShimmerWidget() {
    return Column(
      children: [
        ShimmerContainer(),
        gapH10,
        ShimmerContainer(),
        gapH10,
        ShimmerContainer(),
      ],
    );
  }

  Widget ShimmerContainer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          gapW20,
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 20,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }


  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushNamed(appRoute.name,).then((value) =>  _viewModel.getMyGroups(context));
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }
}
