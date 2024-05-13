// ignore_for_file: must_be_immutable, avoid_print, unused_element

import 'dart:developer';
import 'dart:ui';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
// import 'package:palette_generator/palette_generator.dart';
// import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/customerTips/models/customer_tips_model.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
// import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/text.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/components/shimmer.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/auth/signUp/signup_view.dart';
import 'package:skill_colab/view/screens/groups/invite/invite_view.dart';
import 'package:skill_colab/view/screens/groups/posts/public_group_posts_list.dart';
// import 'package:skill_colab/view/screens/groups/editGroup/edit_group_view.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/questions/question_card_list.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/homeView/post_card.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view_model.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/create_question_view_model.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/createTutorial/create_tutorial_view_model.dart';

class PublicGroupProfileView extends ConsumerStatefulWidget {
  final bool isSelfGroup;
  GroupDatum? groupDetails;

  PublicGroupProfileView({
    super.key,
    this.groupDetails,
    this.isSelfGroup = false,
  });

  @override
  ConsumerState<PublicGroupProfileView> createState() =>
      _PublicGroupProfileViewState();
}

class _PublicGroupProfileViewState extends ConsumerState<PublicGroupProfileView>
    with BaseScreenView {
  int index = 0;
  // Brightness imageBrightness = Brightness.dark;

  List<String> feedsFilterList = [
    "Most Popular",
    "Newest",
  ];
  List<String> filterValues = ["popular", ""];
  int feedsFilterIndex = 1;
  int amount = 0;

  final TextEditingController _amountController = TextEditingController();

  // List<bool> likes = [];
  // List<bool> dislikes = [];

  late PublicGroupProfileViewModel _viewModel;
  // late GroupDatum? _viewModel.groupData;

  @override
  void initState() {
    super.initState();
    // _viewModel.groupData = widget.groupDetails ?? const GroupDatum();
    Logger.printError("IS SELF GROUP =====> ${widget.isSelfGroup}");
    log("Group details =====> ${widget.groupDetails}");
    Logger.printSuccess(widget.groupDetails?.id ?? "");
    // getImagePalette(NetworkImage(_viewModel.groupData?.coverPhoto ?? AppConstants.imageNotFoundLink));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(publicGroupProfileViewModel);
      _viewModel.attachView(this);
      _viewModel.load();
      _viewModel.setGroupData(widget.groupDetails ?? const GroupDatum());
      _viewModel.getGroupRating(context, widget.groupDetails?.id ?? "");
      _viewModel.getFollowersOfGroup(context, widget.groupDetails?.id ?? "", isOwner: widget.isSelfGroup);
      _viewModel.getGroupDataFromApi(context, widget.groupDetails?.id ?? "")
          .then((value) {
        // getImagePalette(NetworkImage(_viewModel.groupData?.coverPhoto ??
        //     AppConstants.imageNotFoundLink,),);
        setState(() {});
      });
      _viewModel.getPostsByGroup(
        context,
        const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"),
        widget.groupDetails?.id ?? "",
      );
      _viewModel.getTutorialByGroup(context, widget.groupDetails?.id ?? "",
          const GetTutorialRequestModel(searchKey: "", filter: ""),);
      _viewModel.getQuestionByGroup(context, widget.groupDetails?.id ?? "",
          const GetQuestionByGroupRequestModel(searchKey: "", filter: ""),);
      _viewModel.load();
      // if (widget.isSelfGroup) {
      //   _viewModel.followGroup(context, widget.groupDetails?.id ?? "");
      // }
    });
    // Future.delayed(const Duration(seconds: 2), () {
    //   setState(() {
    //     getImagePalette(NetworkImage(_viewModel.groupData?.coverPhoto ?? AppConstants.imageNotFoundLink));
    //   });
    // });
  }

  @override
  void dispose() {
    _viewModel.detachView();
    // _viewModel.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(publicGroupProfileViewModel);

    return _viewModel.loading
        ? Scaffold(
            body: ShimmerWidgets.userProfileShimmerWidget(context),
          )
        : DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                surfaceTintColor: Colors.white,
                foregroundColor: Colors.white,
                backgroundColor: Colors.white,
                leading: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: primaryColor,
                      size: 20,
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/logo_full_high_res.png",
                    height: 35.h,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      children: [
                        Visibility(
                          visible: widget.isSelfGroup,
                          child: InkWell(
                            onTap: () {
                              context.pushNamed(
                                AppRoute.earningsView.name,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 4,
                                top: 4,
                                bottom: 4,
                                right: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: primaryColor),
                              ),
                              child: const Icon(
                                Icons.trending_up,
                                color: primaryColor,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        gapW10,
                        Visibility(
                          visible: widget.isSelfGroup,
                          child: InkWell(
                            onTap: () {
                              Logger.printWarning(
                                _viewModel.groupData.toString(),
                              );
                              context
                                  .pushNamed(
                                AppRoute.editGroupView.name,
                                extra:
                                    _viewModel.groupData ?? const GroupDatum(),
                              )
                                  .then((value) {
                                _viewModel.getGroupDataFromApi(
                                    context, widget.groupDetails?.id ?? "",);
                                // getImagePalette(NetworkImage(
                                //     _viewModel.groupData?.coverPhoto ??
                                //         AppConstants.imageNotFoundLink,),);
                                setState(() {});
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 4,
                                top: 4,
                                bottom: 4,
                                right: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: primaryColor),
                              ),
                              child: const Icon(
                                Icons.edit_outlined,
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
              body: CustomMaterialIndicator(
                onRefresh: () async {
                  Future.delayed(const Duration(seconds: 2));
                  _viewModel.load();
                  _viewModel
                      .setGroupData(widget.groupDetails ?? const GroupDatum());
                  _viewModel.getGroupRating(
                      context, widget.groupDetails?.id ?? "",);
                  _viewModel.getFollowersOfGroup(
                      context, widget.groupDetails?.id ?? "",);
                  _viewModel.getGroupDataFromApi(
                      context, widget.groupDetails?.id ?? "",);
                  _viewModel.getPostsByGroup(
                    context,
                    const GetPostsByGroupRequestModel(
                        searchKey: "", timeFilter: "alltime",),
                    widget.groupDetails?.id ?? "",
                  );
                  _viewModel.getTutorialByGroup(
                      context,
                      widget.groupDetails?.id ?? "",
                      const GetTutorialRequestModel(searchKey: "", filter: ""),);
                  _viewModel.getQuestionByGroup(
                      context,
                      widget.groupDetails?.id ?? "",
                      const GetQuestionByGroupRequestModel(
                          searchKey: "", filter: "",),);
                  _viewModel.load();
                  // return false;
                },
                indicatorBuilder: (context, controller) {
                  return const Icon(
                    Icons.refresh,
                    color: primaryColor,
                    size: 30,
                  );
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        // alignment: Alignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                //height: MediaQuery.of(context).size.height / 2.6,
                                height: 250.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: ((_viewModel.groupData?.coverPhoto ??
                                                    "") ==
                                                "") ||
                                            !(_viewModel.groupData?.coverPhoto
                                                    ?.contains(
                                                  "https://skillcollab",
                                                ) ??
                                                true)
                                        ? Image.asset(
                                            "assets/images/no-cover-bg.png",
                                          ).image
                                        : NetworkImage(
                                            _viewModel.groupData?.coverPhoto ??
                                                AppConstants.imageNotFoundLink,
                                          ),
                                  ),
                                ),
                                child: SizedBox(
                                  child: _viewModel.loading
                                      ? const Center(
                                          child: CircularProgressIndicator(
                                            color: primaryColor,
                                          ),
                                        )
                                      : Column(
                                          children: [
                                            const SizedBox(height: 30),
                                            // Padding(
                                            //   padding: const EdgeInsets.symmetric(
                                            //       horizontal: 16,),
                                            //   child: Row(
                                            //     mainAxisAlignment:
                                            //         MainAxisAlignment
                                            //             .spaceBetween,
                                            //     children: [
                                            //       InkWell(
                                            //         onTap: () {
                                            //           Navigator.of(context).pop();
                                            //         },
                                            //         child: Container(
                                            //           padding:
                                            //               const EdgeInsets.only(
                                            //             left: 10,
                                            //             top: 10,
                                            //             bottom: 10,
                                            //           ),
                                            //           decoration:
                                            //               const BoxDecoration(
                                            //             color: Colors.white,
                                            //             shape: BoxShape.circle,
                                            //           ),
                                            //           child: const Icon(
                                            //             Icons.arrow_back_ios,
                                            //             color: primaryColor,
                                            //             size: 20,
                                            //           ),
                                            //         ),
                                            //       ),
                                            //       Row(
                                            //         children: [
                                            //           Visibility(
                                            //             visible: widget.isSelfGroup,
                                            //             child: InkWell(
                                            //               onTap: () {
                                            //                 context.pushNamed(AppRoute.earningsView.name,);
                                            //               },
                                            //               child: Container(
                                            //                 padding:
                                            //                     const EdgeInsets.only(
                                            //                   left: 8,
                                            //                   top: 8,
                                            //                   bottom: 8,
                                            //                   right: 8,
                                            //                 ),
                                            //                 decoration:
                                            //                     const BoxDecoration(
                                            //                   color: Colors.white,
                                            //                   shape: BoxShape.circle,
                                            //                 ),
                                            //                 child: const Icon(
                                            //                   Icons.trending_up,
                                            //                   color: primaryColor,
                                            //                   size: 20,
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ),
                                            //           gapW10,
                                            //           Visibility(
                                            //             visible: widget.isSelfGroup,
                                            //             child: InkWell(
                                            //               onTap: () {
                                            //                 Logger.printWarning(
                                            //                     _viewModel.groupData
                                            //                         .toString(),);
                                            //                 context.pushNamed(
                                            //                     AppRoute.editGroupView
                                            //                         .name,
                                            //                     extra: _viewModel
                                            //                             .groupData ??
                                            //                         const GroupDatum(),);
                                            //               },
                                            //               child: Container(
                                            //                 padding:
                                            //                     const EdgeInsets.only(
                                            //                   left: 8,
                                            //                   top: 8,
                                            //                   bottom: 8,
                                            //                   right: 8,
                                            //                 ),
                                            //                 decoration:
                                            //                     const BoxDecoration(
                                            //                   color: Colors.white,
                                            //                   shape: BoxShape.circle,
                                            //                 ),
                                            //                 child: const Icon(
                                            //                   Icons.edit_outlined,
                                            //                   color: primaryColor,
                                            //                   size: 20,
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: kWhite,
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 2,
                                                ),
                                                // image: const DecorationImage(
                                                //   image: AssetImage(
                                                //     "assets/icons/peoplePic.png",
                                                //   ),
                                                // ),
                                              ),
                                              child: ((_viewModel.groupData
                                                                  ?.groupPhoto ??
                                                              "") ==
                                                          "") ||
                                                      !(_viewModel.groupData
                                                              ?.groupPhoto
                                                              ?.contains(
                                                            "https://skillcollab",
                                                          ) ??
                                                          true)
                                                  ? Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                        15.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/icons/group-icon.png',
                                                        color: primaryColor,
                                                      ),
                                                    )
                                                  : ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              35,),
                                                      child: Image.network(
                                                        _viewModel
                                                                .groupData
                                                                ?.groupPhoto ??
                                                            AppConstants
                                                                .imageNotFoundLink,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),

                                              // CircleAvatar(
                                              //     backgroundImage:
                                              //         NetworkImage(
                                              //       _viewModel.groupData
                                              //               ?.groupPhoto ??
                                              //           AppConstants
                                              //               .imageNotFoundLink,
                                              //     ),
                                              //     backgroundColor: kWhite,
                                              //   ),
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    print(widget.groupDetails
                                                            ?.userId?.id ??
                                                        "",);
                                                    print(AppConstants.userId);
                                                    // getImagePalette(
                                                    //     NetworkImage(_viewModel
                                                    //             .groupData
                                                    //             ?.coverPhoto ??
                                                    //         AppConstants
                                                    //             .imageNotFoundLink,),);
                                                    setState(() {});
                                                  },
                                                  child: SvgPicture.asset(
                                                    (_viewModel.groupData
                                                                    ?.privacy ??
                                                                "") ==
                                                            "public"
                                                        ? "assets/icons/unlock.svg"
                                                        : "assets/icons/lock.svg",
                                                    height: 14,
                                                    width: 14,
                                                    color:  Colors.white,
                                                  ),
                                                ),
                                                gapW4,
                                                Text(
                                                  _viewModel.groupData?.name ??
                                                      "",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color:  Colors.white,
                                                    fontSize: 14,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    shadows: CustomTextShadow()
                                                  ),
                                                ),
                                                gapW6,
                                                Visibility(
                                                  visible : !widget.isSelfGroup,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      bool tiploader = false;
                                                      showModalBottomSheet(
                                                        context: context,
                                                        isScrollControlled: true,
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.vertical(
                                                                  top: Radius
                                                                      .circular(
                                                                          25.0,),),
                                                        ),
                                                        builder: (context) {

                                                          return StatefulBuilder(
                                                            builder: (context, bottomSheetSetState,) {
                                                              return PopScope(
                                                                canPop: false,
                                                                onPopInvoked:
                                                                    (didPop) {
                                                                  if (MediaQuery.of(
                                                                              context,)
                                                                          .viewInsets
                                                                          .bottom >
                                                                      0) {
                                                                    SystemChannels
                                                                        .textInput
                                                                        .invokeMethod(
                                                                            'TextInput.hide',);
                                                                  }
                                                                },
                                                                child: Padding(
                                                                  padding:
                                                                      MediaQuery.of(
                                                                              context,)
                                                                          .viewInsets,
                                                                  child: Container(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .symmetric(
                                                                            vertical:
                                                                                16,),
                                                                    child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: <Widget>[
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .spaceBetween,
                                                                          children: [
                                                                            gapW60,
                                                                            const Text(
                                                                              'Send Tips',
                                                                              style:
                                                                                  TextStyle(
                                                                                color:
                                                                                    primaryColor,
                                                                                fontWeight:
                                                                                    FontWeight.bold,
                                                                                fontSize:
                                                                                    24,
                                                                              ),
                                                                            ),
                                                                            IconButton(
                                                                              onPressed:
                                                                                  () {
                                                                                if (MediaQuery.of(context).viewInsets.bottom >
                                                                                    0) {
                                                                                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                                                                                } else {
                                                                                  Navigator.pop(context);
                                                                                }
                                                                              },
                                                                              icon: const Icon(
                                                                                  Icons.close,),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                16,),
                                                                        gapH10,
                                                                        const TextFieldTitle(
                                                                          title: "Amount",
                                                                        ),
                                                                        gapH10,
                                                                        // CommonTextField(
                                                                        //   hintText: '\$50',
                                                                        //   controller: _amountController,
                                                                        // ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets
                                                                                  .only(
                                                                            left: AppSizes
                                                                                .p14,
                                                                            right: AppSizes
                                                                                .p14,
                                                                          ),
                                                                          child:
                                                                              DecoratedBox(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color:
                                                                                  kWhite,
                                                                              borderRadius:
                                                                                  BorderRadius.circular(5),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  color:
                                                                                      Colors.grey.withOpacity(
                                                                                    0.3,
                                                                                  ),
                                                                                  spreadRadius:
                                                                                      1,
                                                                                  blurRadius:
                                                                                      10,
                                                                                  offset:
                                                                                      const Offset(0, 3),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                TextFormField(
                                                                                  onChanged: (value) {
                                                                                    bottomSheetSetState(() {});
                                                                                  },
                                                                              keyboardType:
                                                                                  TextInputType.number,
                                                                              validator:
                                                                                  (value) {
                                                                                if (value!
                                                                                    .isEmpty) {
                                                                                  return "Amount can't be empty";
                                                                                }
                                                                                return null;
                                                                              },
                                                                              controller: _amountController,
                                                                              textCapitalization:
                                                                                  TextCapitalization.sentences,
                                                                              decoration:
                                                                                  textFormDecoration.copyWith(
                                                                                hintText:
                                                                                    'Amount',
                                                                                prefixIcon: const Icon(Icons.attach_money_rounded)
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height:16,),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .spaceEvenly,
                                                                          children: <Widget>[
                                                                            Container(
                                                                              width:
                                                                                  MediaQuery.of(context).size.width /
                                                                                      4,
                                                                              height:
                                                                                  45,
                                                                              decoration:
                                                                                  BoxDecoration(
                                                                                color:
                                                                                    kWhite,
                                                                                borderRadius:
                                                                                    BorderRadius.circular(5),
                                                                                boxShadow: [
                                                                                  CustomBoxShadow(),
                                                                                ],
                                                                              ),
                                                                              child:
                                                                                  MaterialButton(
                                                                                onPressed:
                                                                                    () {
                                                                                  print(50);
                                                                                  bottomSheetSetState(() {
                                                                                    amount = 50;
                                                                                    _amountController.text = '$amount';
                                                                                  });
                                                                                },
                                                                                child:
                                                                                    const Text(
                                                                                  "\$50",
                                                                                  style:
                                                                                      TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width:
                                                                                  MediaQuery.of(context).size.width /
                                                                                      4,
                                                                              height:
                                                                                  45,
                                                                              decoration:
                                                                                  BoxDecoration(
                                                                                color:
                                                                                    kWhite,
                                                                                borderRadius:
                                                                                    BorderRadius.circular(5),
                                                                                boxShadow: [
                                                                                  CustomBoxShadow(),
                                                                                ],
                                                                              ),
                                                                              child:
                                                                                  MaterialButton(
                                                                                onPressed:
                                                                                    () {
                                                                                  print(100);
                                                                                  bottomSheetSetState(() {
                                                                                    amount = 100;
                                                                                    _amountController.text = '$amount';
                                                                                  });
                                                                                },
                                                                                child:
                                                                                    const Text(
                                                                                  "\$100",
                                                                                  style:
                                                                                      TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width:
                                                                                  MediaQuery.of(context).size.width /
                                                                                      4,
                                                                              height:
                                                                                  45,
                                                                              decoration:
                                                                                  BoxDecoration(
                                                                                color:
                                                                                    kWhite,
                                                                                borderRadius:
                                                                                    BorderRadius.circular(5),
                                                                                boxShadow: [
                                                                                  CustomBoxShadow(),
                                                                                ],
                                                                              ),
                                                                              child:
                                                                                  MaterialButton(
                                                                                onPressed:
                                                                                    () {
                                                                                  print(150);
                                                                                  bottomSheetSetState(() {
                                                                                    amount = 150;
                                                                                    _amountController.text = '$amount';
                                                                                  });
                                                                                },
                                                                                child:
                                                                                    const Text(
                                                                                  "\$150",
                                                                                  style:
                                                                                      TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                24,),
                                                                        Container(
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal:
                                                                                  16,),
                                                                          width: double
                                                                              .infinity,
                                                                          child: _amountController.text == ""
                                                                              ? ElevatedButton(
                                                                                  onPressed:
                                                                                      () async {
                                                                                    showDialog(
                                                                                      context: context,
                                                                                      builder: (BuildContext context) {
                                                                                        return AlertDialog(
                                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                                                          title: const Center(
                                                                                              child: Text(
                                                                                            "Error",
                                                                                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                                                                                          ),),
                                                                                          content: SizedBox(
                                                                                            height: MediaQuery.of(context).size.height / 6.5,
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Text(
                                                                                                  "Enter a Valid Amount",
                                                                                                  style: TextStyle(color: Colors.grey[600]),
                                                                                                  textAlign: TextAlign.center,
                                                                                                ),
                                                                                                gapH16,
                                                                                                gapH16,
                                                                                                gapH16,
                                                                                                SizedBox(
                                                                                                  height: 45,
                                                                                                  width: MediaQuery.of(context).size.width / 1.3,
                                                                                                  child: GestureDetector(
                                                                                                    onTap: () {
                                                                                                      Navigator.pop(context);
                                                                                                      Navigator.pop(context);
                                                                                                    },
                                                                                                    child: const CustomButton(
                                                                                                      text: "OK",
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  style:
                                                                                      ElevatedButton.styleFrom(
                                                                                    backgroundColor: primaryColor,
                                                                                    padding: const EdgeInsets.symmetric(vertical: 12),
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(8),
                                                                                    ),
                                                                                  ),
                                                                                  child:
                                                                                      const Text(
                                                                                    'Send Tips',
                                                                                    style: TextStyle(fontSize: 18, color: kWhite),
                                                                                  ),
                                                                                )
                                                                              : ElevatedButton(
                                                                                  onPressed:
                                                                                      () async {
                                                                                    bottomSheetSetState(() {
                                                                                      tiploader = true;
                                                                                    });

                                                                                    _viewModel
                                                                                        .getGroupTipStripeLink(
                                                                                          context,
                                                                                          CustomerTipRequestModel(
                                                                                            groupId: _viewModel.groupData?.id ?? "",
                                                                                            tipAmount: int.parse(_amountController.text),
                                                                                            userId: _viewModel.groupData?.userId?.id ?? "",
                                                                                          ),
                                                                                          ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? "",
                                                                                        )
                                                                                        .then(
                                                                                          (value) => bottomSheetSetState(() {
                                                                                            tiploader = false;
                                                                                          }),
                                                                                        );
                                                                                  },
                                                                                  style:
                                                                                      ElevatedButton.styleFrom(
                                                                                    backgroundColor: primaryColor,
                                                                                    padding: const EdgeInsets.symmetric(vertical: 12),
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(8),
                                                                                    ),
                                                                                  ),
                                                                                  child: tiploader
                                                                                      ? const Center(
                                                                                          child: SizedBox(
                                                                                            height: 20,
                                                                                            width: 20,
                                                                                            child: CircularProgressIndicator(
                                                                                              color: kWhite,
                                                                                            ),
                                                                                          ),
                                                                                        )
                                                                                      : const Text(
                                                                                          'Send Tips',
                                                                                          style: TextStyle(fontSize: 18, color: kWhite),
                                                                                        ),
                                                                                ),
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                16,),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        }                                                        
                                                      ).then((value) {
                                                        setState(() {
                                                          _amountController.clear();
                                                        });
                                                      });

                                                      HapticFeedback.heavyImpact();
                                                    },
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration: BoxDecoration(
                                                        color: kWhite,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20,),
                                                      ),
                                                      child: Image.asset(
                                                        "assets/icons/tip-icon.png",
                                                        height: 30,
                                                        width: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '(${TextUtils.firstLetterUpperCase(_viewModel.groupData?.privacy ?? "public")})',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color:  Colors.white,
                                                    shadows: CustomTextShadow(),
                                                    fontSize: 10,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                SizedBox(
                                                  child: _viewModel.loading
                                                      ? const SpinKitThreeBounce(
                                                          color: kWhite,
                                                          size: 15,
                                                        )
                                                      : GestureDetector(
                                                          onTap: () =>
                                                              context.pushNamed(
                                                            AppRoute
                                                                .groupMembers
                                                                .name,
                                                            extra: {
                                                              'groupId': _viewModel
                                                                      .groupData
                                                                      ?.id ??
                                                                  "",
                                                              'isSelfGroup': widget
                                                                  .isSelfGroup,
                                                              "groupProfile": 0,
                                                            },
                                                          ),
                                                          // Members
                                                          child: Text(
                                                            '${TextUtils.formatNumber(_viewModel.getFollowersModel.data?.length ?? 0)} ${_viewModel.formatMembers(_viewModel.getFollowersModel.data?.length ?? 0)}',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:  Colors.white,
                                                              shadows: CustomTextShadow(),
                                                              fontSize: 10,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            GestureDetector(
                                              onTap: _viewModel
                                                          .groupRatingResponseModel
                                                          .data
                                                          ?.isEmpty ??
                                                      false
                                                  ? () {}
                                                  : () => context.pushNamed(
                                                        AppRoute.groupRatingView
                                                            .name,
                                                        extra: {
                                                          "groupId": widget
                                                                  .groupDetails
                                                                  ?.id ??
                                                              "",
                                                          "groupPrivacy":
                                                              "public",
                                                        },
                                                      ).then(
                                                        (value) => _viewModel
                                                            .getGroupRating(
                                                          context,
                                                          widget.groupDetails
                                                                  ?.id ??
                                                              "",
                                                        ),
                                                      ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "( ${_viewModel.groupRatingResponseModel.data?.isEmpty ?? false ? 0 : _viewModel.groupRatingResponseModel.data?[0].reviews?.length ?? 0} ) ",
                                                    style: TextStyle(
                                                      color:  Colors.white,
                                                      shadows: CustomTextShadow(),
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  RatingBarIndicator(
                                                    rating: _viewModel
                                                                .groupRatingResponseModel
                                                                .data
                                                                ?.isEmpty ??
                                                            false
                                                        ? 0
                                                        : _viewModel
                                                                .groupRatingResponseModel
                                                                .data?[0]
                                                                .averageRating ??
                                                            0,
                                                    itemSize: 12.0,
                                                    physics:
                                                        const BouncingScrollPhysics(),
                                                    itemBuilder: (context, _) =>
                                                        const Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            GestureDetector(
                                              onTap: () {
                                                context.pushNamed(
                                                  AppRoute
                                                      .groupDescription.name,
                                                  // extra: widget.groupDetails
                                                );
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                ),
                                                child: Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            "${(_viewModel.groupData?.description ?? "").length > 130 ? (_viewModel.groupData?.description ?? "").substring(0, 130) : (_viewModel.groupData?.description ?? "")}...",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.33,
                                                          shadows: CustomTextShadow()
                                                        ),
                                                      ),
                                                      const TextSpan(
                                                        text: ' Read More',
                                                        style: TextStyle(
                                                          color: primaryColor,
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          height: 1.33,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            SizedBox(
                                              child: _viewModel.loading
                                                  ? const CircularProgressIndicator(
                                                      color: primaryColor,
                                                    )
                                                  : widget.isSelfGroup
                                                      ? SizedBox(
                                                          width: 150,
                                                          height: 35,
                                                          child: MaterialButton(
                                                            onPressed: () {
                                                              // _viewModel.triggerInviteNotification(InviteRequestModel(
                                                              //   groupId: _viewModel.groupData?.id ?? "",
                                                              //   invitedUserId: "6597a90ca837a2001816838c"
                                                              // ));
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const InviteView(),),);
                                                            },
                                                            color: Colors
                                                                .transparent,
                                                            splashColor: kWhite,
                                                            elevation: 0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side: const BorderSide(
                                                                color:  Colors
                                                                        .white,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                5,
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                 Icon(
                                                                  Icons.group_add_outlined,
                                                                  color: Colors.white,
                                                                  shadows: CustomTextShadow(),
                                                                  size: 20,
                                                                ),
                                                                const SizedBox(
                                                                  width: 6,
                                                                ),
                                                                Text(
                                                                  'Invite',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      TextStyle(
                                                                    color:  Colors.white,
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w600,
                                                                    shadows: CustomTextShadow()
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      : Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            // Visibility(
                                                            //   visible: (_viewModel.groupData?.privacy ?? "") == 'premium',
                                                            //   child: Container(
                                                            //     padding: const EdgeInsets.all(12),
                                                            //     decoration: BoxDecoration(
                                                            //       color: primaryColor,
                                                            //       borderRadius: BorderRadius.circular(5),
                                                            //     ),
                                                            //     child: const Text(
                                                            //       'Subscribe (\$5.99/mo)',
                                                            //       textAlign: TextAlign.center,
                                                            //       style: TextStyle(
                                                            //         color: Colors.white,
                                                            //         fontSize: 14,
                                                            //         fontWeight: FontWeight.w600,
                                                            //       ),
                                                            //     ),
                                                            //   ),
                                                            // ),
                                                            const SizedBox(
                                                              width: 8,
                                                            ),
                                                            SizedBox(
                                                              width: 150,
                                                              height: 35,
                                                              child: !_viewModel
                                                                      .isGroupFollowed
                                                                  ? MaterialButton(
                                                                      onPressed:
                                                                          () {
                                                                        _viewModel
                                                                            .followGroup(
                                                                          context,
                                                                          widget.groupDetails?.id ??
                                                                              "",
                                                                        );
                                                                      },
                                                                      color:
                                                                          primaryColor,
                                                                      splashColor:
                                                                          kWhite,
                                                                      elevation:
                                                                          2,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          const Text(
                                                                        'Join Group',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  : MaterialButton(
                                                                      onPressed:
                                                                          () {
                                                                        showModalBottomSheet(
                                                                          context:
                                                                              context,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          builder:
                                                                              (context) {
                                                                            return Container(
                                                                              height: 300,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              padding: const EdgeInsets.only(top: 16, bottom: 32),
                                                                              decoration: BoxDecoration(
                                                                                color: kWhite,
                                                                                borderRadius: BorderRadius.circular(20),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                                                                    child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      children: [
                                                                                        IconButton(
                                                                                          onPressed: () {
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          icon: const Icon(
                                                                                            Icons.close,
                                                                                            color: kGrey,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  const Padding(
                                                                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                                                                    child: Text(
                                                                                      "Are you sure you want to leave this group?",
                                                                                      textAlign: TextAlign.center,
                                                                                      style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 18),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 60,
                                                                                    height: 60,
                                                                                    decoration: BoxDecoration(
                                                                                      color: const Color(0xffF3F5F6),
                                                                                      borderRadius: BorderRadius.circular(50),
                                                                                    ),
                                                                                    // padding: const EdgeInsets.only(right: 4),
                                                                                    child: const Center(
                                                                                        child: Icon(
                                                                                      Icons.logout_rounded,
                                                                                      color: primaryColor,
                                                                                    ),),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.symmetric(horizontal: 14),
                                                                                    child: Row(
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: SizedBox(
                                                                                            height: 45,
                                                                                            child: MaterialButton(
                                                                                              onPressed: () {
                                                                                                Navigator.pop(context);
                                                                                              },
                                                                                              color: const Color(0xffC4C4C4),
                                                                                              child: const Center(
                                                                                                child: Text(
                                                                                                  "Cancel",
                                                                                                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff5D5D5D)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        const SizedBox(
                                                                                          width: 18,
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: SizedBox(
                                                                                            height: 45,
                                                                                            child: MaterialButton(
                                                                                              onPressed: () async {
                                                                                                Navigator.pop(context);
                                                                                                _viewModel.unfollowGroup(context, widget.groupDetails?.id ?? "");
                                                                                              },
                                                                                              color: primaryColor,
                                                                                              child: Center(
                                                                                                child: _viewModel.loading
                                                                                                    ? const SizedBox(
                                                                                                        height: 20,
                                                                                                        width: 20,
                                                                                                        child: CircularProgressIndicator(
                                                                                                          color: kWhite,
                                                                                                        ),)
                                                                                                    : const Text(
                                                                                                        "Leave",
                                                                                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: kWhite),
                                                                                                      ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      color: Colors
                                                                          .white,
                                                                      splashColor:
                                                                          primaryColor,
                                                                      elevation:
                                                                          0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          const Text(
                                                                        'Joined',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              primaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    ),
                                                            ),
                                                            gapW10,
                                                            SizedBox(
                                                              child: _viewModel
                                                                          .groupRatingResponseModel
                                                                          .data
                                                                          ?.isEmpty ??
                                                                      false
                                                                  ? const SizedBox
                                                                      .shrink()
                                                                  : _viewModel
                                                                              .groupRatingResponseModel
                                                                              .data?[
                                                                                  0]
                                                                              .reviews
                                                                              ?.where(
                                                                                (element) => element.userId == (ref.read(selfDataProvider).singleUserResponseModel.data?.id ?? ""),
                                                                              )
                                                                              .toList()
                                                                              .isEmpty ??
                                                                          false
                                                                      ? MaterialButton(
                                                                          onPressed:
                                                                              () {
                                                                            if (_viewModel.groupRatingResponseModel.data?.isEmpty ??
                                                                                false) {
                                                                              context.pushNamed(AppRoute.addGroupRating.name, extra: widget.groupDetails?.id ?? "");
                                                                            } else {
                                                                              /// The below code is checking if the
                                                                              /// user has already added a rating
                                                                              /// for a group. If the user has not
                                                                              /// added a rating, it will navigate
                                                                              /// to the "addGroupRating" screen
                                                                              /// with the group ID as an extra
                                                                              /// parameter. If the user has already
                                                                              /// added a rating, it will show a
                                                                              /// custom snackbar with the message
                                                                              /// "You've already added rating" in
                                                                              /// red color.
                                                                              if (_viewModel.groupRatingResponseModel.data?[0].reviews
                                                                                      ?.where(
                                                                                        (element) => element.userId == (ref.read(selfDataProvider).singleUserResponseModel.data?.id ?? ""),
                                                                                      )
                                                                                      .toList()
                                                                                      .isEmpty ??
                                                                                  false) {
                                                                                context.pushNamed(AppRoute.addGroupRating.name, extra: widget.groupDetails?.id ?? "");
                                                                              } else {
                                                                                showCustomSnackBar(context, text: "You've already added rating", color: Colors.redAccent);
                                                                              }
                                                                            }
                                                                          },
                                                                          color:
                                                                              Colors.transparent,
                                                                          splashColor:
                                                                              kWhite,
                                                                          elevation:
                                                                              0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            side: const BorderSide(
                                                                              color:  Colors.white,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              5,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                             Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.star_rounded,
                                                                                color: Colors.white,
                                                                                shadows: CustomTextShadow(),
                                                                                size: 14,
                                                                              ),
                                                                              const SizedBox(
                                                                                width: 2,
                                                                              ),
                                                                              Text(
                                                                                'Add Ratings',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: Colors.white,
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  shadows: CustomTextShadow(),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                      : const SizedBox
                                                                          .shrink(),
                                                            ),
                                                            Visibility(
                                                              visible: _viewModel
                                                                      .groupRatingResponseModel
                                                                      .data
                                                                      ?.isEmpty ??
                                                                  false,
                                                              child: ClipRRect(
                                                                child:
                                                                    BackdropFilter(
                                                                  filter: ImageFilter
                                                                      .blur(
                                                                          sigmaX:
                                                                              7,
                                                                          sigmaY:
                                                                              7,),
                                                                  child:
                                                                      SizedBox(
                                                                    width: 150,
                                                                    height: 35,
                                                                    child:
                                                                        MaterialButton(
                                                                      onPressed:
                                                                          () {
                                                                        if (_viewModel.groupRatingResponseModel.data?.isEmpty ??
                                                                            false) {
                                                                          context.pushNamed(
                                                                              AppRoute.addGroupRating.name,
                                                                              extra: widget.groupDetails?.id ?? "",);
                                                                        } else {
                                                                          /// The above code is checking if the
                                                                          /// user has already added a rating
                                                                          /// for a group. If the user has not
                                                                          /// added a rating, it will navigate
                                                                          /// to the "addGroupRating" screen
                                                                          /// with the group ID as an extra
                                                                          /// parameter. If the user has already
                                                                          /// added a rating, it will show a
                                                                          /// custom snackbar with the message
                                                                          /// "You've already added rating" in
                                                                          /// red color.
                                                                          if (_viewModel.groupRatingResponseModel.data?[0].reviews
                                                                                  ?.where(
                                                                                    (element) => element.userId == (ref.read(selfDataProvider).singleUserResponseModel.data?.id ?? ""),
                                                                                  )
                                                                                  .toList()
                                                                                  .isEmpty ??
                                                                              false) {
                                                                            context.pushNamed(AppRoute.addGroupRating.name,
                                                                                extra: widget.groupDetails?.id ?? "",);
                                                                          } else {
                                                                            showCustomSnackBar(context,
                                                                                text: "You've already added rating",
                                                                                color: Colors.redAccent,);
                                                                          }
                                                                        }
                                                                      },
                                                                      color: Colors
                                                                          .transparent,
                                                                      splashColor:
                                                                          kWhite,
                                                                      elevation:
                                                                          0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        side:
                                                                            const BorderSide(
                                                                          color:
                                                                              kWhite,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          const Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.star_rounded,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                14,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                2,
                                                                          ),
                                                                          Text(
                                                                            'Add Ratings',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            // Container(
                                                            //     padding: const EdgeInsets.only(
                                                            //         top: 10,
                                                            //         bottom: 10,
                                                            //         left: 30,
                                                            //         right: 30),
                                                            //     decoration: BoxDecoration(
                                                            //         borderRadius: BorderRadius.circular(5),
                                                            //         color: Colors.transparent,
                                                            //         border:
                                                            //             Border.all(color: Colors.white)),
                                                            // child: const Row(
                                                            //   mainAxisAlignment: MainAxisAlignment.center,
                                                            //   children: [
                                                            //     Icon(
                                                            //       Icons.person_add_outlined,
                                                            //       color: Colors.white,
                                                            //       size: 14,
                                                            //     ),
                                                            //     SizedBox(
                                                            //       width: 2,
                                                            //     ),
                                                            //     Text(
                                                            //       'Invite',
                                                            //       textAlign: TextAlign.center,
                                                            //       style: TextStyle(
                                                            //         color: Colors.white,
                                                            //         fontSize: 14,
                                                            //         fontWeight: FontWeight.w600,
                                                            //       ),
                                                            //     ),
                                                            //   ],
                                                            // )),
                                                          ],
                                                        ),
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                              DecoratedBox(
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Column(
                                  children: [
                                    gapH4,
                                    TabBar(
                                      onTap: (value) {
                                        index = value;
                                        // _viewModel.getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.groupDetails?.id ?? "", load: true);
                                        // _viewModel.getTutorialByGroup(context, widget.groupDetails?.id ?? "", const GetTutorialRequestModel(searchKey: "", filter: "",));
                                        // _viewModel.getQuestionByGroup(context, widget.groupDetails?.id ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: ""));
                                        setState(() {});
                                      },
                                      padding: EdgeInsets.zero,
                                      isScrollable: true,
                                      indicatorColor: primaryColor,
                                      labelColor: primaryColor,
                                      unselectedLabelColor: kGrey,
                                      indicator: const HalfCircleTabIndicator(
                                        color:
                                            primaryColor, // Change this to the desired indicator color
                                      ),
                                      tabs: [
                                        Tab(
                                          child: _viewModel.loading
                                              ? const SpinKitThreeBounce(
                                                  color: primaryColor,
                                                  size: 15,
                                                )
                                              : Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.widgets_outlined,
                                                    ),
                                                    Text(
                                                      "${_viewModel.postsByGroupModel.data?.length ?? 0} Posts",
                                                    ),
                                                  ],
                                                ),
                                          // icon: Icon(Icons.lock_open_rounded),
                                          // text: "137 Public Posts",
                                        ),
                                        Tab(
                                          child: _viewModel.loading
                                              ? const SpinKitThreeBounce(
                                                  color: primaryColor,
                                                  size: 15,
                                                )
                                              : Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.forum_outlined,
                                                    ),
                                                    Text(
                                                      "${_viewModel.getQuestionByGroupModel.data?.length ?? ""} Question",
                                                    ),
                                                  ],
                                                ),
                                        ),
                                        Tab(
                                          child: _viewModel.loading
                                              ? const SpinKitThreeBounce(
                                                  color: primaryColor,
                                                  size: 15,
                                                )
                                              : Row(
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .border_color_outlined,
                                                    ),
                                                    Text(
                                                      "${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?.length ?? 0} Tutorials",
                                                    ),
                                                  ],
                                                ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.black.withOpacity(0.2),
                                      width: double.infinity,
                                      height: 1,
                                    ),
                                    if (AppConstants.usertype == 0)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 100,
                                        ),
                                        child: GuestLoginRequestWidget(
                                          text: "to see the group's contents",
                                        ),
                                      )
                                    else
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 11,
                                              right: 16,
                                              left: 16,
                                            ),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    context.pushNamed(
                                                      AppRoute.profileView.name,
                                                      extra: {
                                                        "userId":
                                                            AppConstants.userId,
                                                        "isSelfProfile": true,
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 48,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color: primaryColor,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      width: 45,
                                                      height: 45,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      child: ((ref
                                                                          .read(
                                                                            selfDataProvider,
                                                                          )
                                                                          .singleUserResponseModel
                                                                          .data
                                                                          ?.profilePhoto ??
                                                                      "") ==
                                                                  "") ||
                                                              !(ref
                                                                      .read(
                                                                        selfDataProvider,
                                                                      )
                                                                      .singleUserResponseModel
                                                                      .data
                                                                      ?.profilePhoto
                                                                      ?.contains(
                                                                        "https://skillcollab",
                                                                      ) ??
                                                                  true)
                                                          ? SvgPicture.asset(
                                                              'assets/icons/user.svg',
                                                            )
                                                          : ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24,),
                                                              child:
                                                                  Image.network(
                                                                      ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ??
                                                                    AppConstants
                                                                        .imageNotFoundLink,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),

                                                      // CircleAvatar(
                                                      //     backgroundImage:
                                                      //         NetworkImage(ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,),
                                                      //   ),
                                                    ),
                                                  ),
                                                ),
                                                gapW16,
                                                Expanded(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      if (_viewModel
                                                          .isGroupFollowed) {
                                                        if (index == 0) {
                                                          print(
                                                            _viewModel
                                                                .groupData,
                                                          );
                                                          context.pushNamed(
                                                            AppRoute.createPost
                                                                .name,
                                                            extra: {
                                                              'groupId': _viewModel
                                                                      .groupData
                                                                      ?.id ??
                                                                  "",
                                                              'privacy':
                                                                  _viewModel
                                                                      .groupData
                                                                      ?.privacy,
                                                            },
                                                          ).then((value) {
                                                            ref
                                                                .read(
                                                                    createPostViewModel,)
                                                                .clearAllData();
                                                            Logger.printInfo(
                                                              _viewModel
                                                                      .groupData
                                                                      ?.id ??
                                                                  "",
                                                            );
                                                            _viewModel
                                                                .getPostsByGroup(
                                                              context,
                                                              const GetPostsByGroupRequestModel(
                                                                  searchKey: "",
                                                                  timeFilter:
                                                                      "",),
                                                              _viewModel
                                                                      .groupData
                                                                      ?.id ??
                                                                  "",
                                                            );
                                                          });
                                                        } else if (index == 2) {
                                                          context.pushNamed(
                                                              AppRoute
                                                                  .createTutorial
                                                                  .name,
                                                              extra: {
                                                                'groupId': _viewModel
                                                                        .groupData
                                                                        ?.id ??
                                                                    "",
                                                                'privacy':
                                                                    _viewModel
                                                                        .groupData
                                                                        ?.privacy,
                                                              },).then((value) {
                                                            // _viewModel.disposeController();
                                                            ref
                                                                .read(
                                                                    createTutorialViewModel,)
                                                                .clearAllData();
                                                          });
                                                        } else if (index == 1) {
                                                          // print(_viewModel.groupData.toString());
                                                          context.pushNamed(
                                                              AppRoute
                                                                  .createQuestion
                                                                  .name,
                                                              extra: {
                                                                'groupId': _viewModel
                                                                        .groupData
                                                                        ?.id ??
                                                                    "",
                                                                'privacy':
                                                                    _viewModel
                                                                        .groupData
                                                                        ?.privacy,
                                                              },).then((value) {
                                                            // _viewModel.disposeController();
                                                            ref
                                                                .read(
                                                                    createQuestionViewModel,)
                                                                .clearAllData();
                                                          });
                                                          // .then((value) {
                                                          //   Logger.printInfo(widget.groupDetails?.groupId?.id ?? "");
                                                          //   _viewModel.getPostsByGroup(context, widget.groupDetails?.groupId?.id ?? "");
                                                          // });
                                                        }
                                                      } else {
                                                        showCustomSnackBar(
                                                          context,
                                                          text:
                                                              "Please follow the group to post here",
                                                          color: Colors.grey,
                                                        );
                                                      }
                                                    },
                                                    child: TextFormField(
                                                      enabled: false,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .sentences,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor: const Color(
                                                          0xFFF8F7F9,
                                                        ),
                                                        filled: true,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 16,
                                                        ),
                                                        hintText:
                                                            "Write Something.....",
                                                        hintStyle:
                                                            const TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: primaryColor,
                                                          ),
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  if (index == 0) {
                                                    context.pushNamed(
                                                      AppRoute
                                                          .searchPostView.name,
                                                      extra: {
                                                        "groupId": _viewModel
                                                            .groupData?.id,
                                                        "data": _viewModel
                                                            .postsByGroupModel,
                                                      },
                                                    );
                                                  } else if (index == 1) {
                                                    context.pushNamed(
                                                      AppRoute
                                                          .searchQuestionView
                                                          .name,
                                                      extra: _viewModel
                                                          .groupData?.id,
                                                    );
                                                  } else if (index == 2) {
                                                    context.pushNamed(
                                                      AppRoute
                                                          .searchTutorialView
                                                          .name,
                                                      extra: _viewModel
                                                          .groupData?.id,
                                                    );
                                                  }
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 18,
                                                    vertical: 6,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: primaryColor,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x3F1B9AAA),
                                                        blurRadius: 18,
                                                        offset: Offset(0, 8),
                                                      ),
                                                      BoxShadow(
                                                        color:
                                                            Color(0x0A141414),
                                                        blurRadius: 1,
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5,),
                                                  ),
                                                  child: const Row(
                                                    children: [
                                                      Icon(
                                                        Icons.search,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(width: 8),
                                                      //go to search
                                                      Text(
                                                        'Search',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 15),
                                              GestureDetector(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                    context: context,
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        30,),
                                                                topRight: Radius
                                                                    .circular(
                                                                        30,),),),
                                                    builder: (context) {
                                                      return StatefulBuilder(
                                                        builder: (context,
                                                            filterSetState,) {
                                                          return Container(
                                                            height: 280,
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        16,),
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    gapW60,
                                                                    const Text(
                                                                      'Filter',
                                                                      style:
                                                                          TextStyle(
                                                                        color:
                                                                            primaryColor,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            24,
                                                                      ),
                                                                    ),
                                                                    IconButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context,);
                                                                      },
                                                                      icon: const Icon(
                                                                          Icons
                                                                              .close,),
                                                                    ),
                                                                  ],
                                                                ),
                                                                gapH16,
                                                                ...List
                                                                    .generate(
                                                                  feedsFilterList
                                                                      .length,
                                                                  (index) =>
                                                                      InkWell(
                                                                    onTap: () {
                                                                      filterSetState(
                                                                          () {
                                                                        feedsFilterIndex =
                                                                            index;
                                                                        Logger
                                                                            .printError(
                                                                          feedsFilterIndex
                                                                              .toString(),
                                                                        );
                                                                      });
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .only(
                                                                        left:
                                                                            16.0,
                                                                        top: 8,
                                                                        bottom:
                                                                            8,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          DecoratedBox(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: feedsFilterIndex == index ? primaryColor : Colors.white,
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(color: primaryColor),
                                                                            ),
                                                                            child: feedsFilterIndex != index
                                                                                ? const Center(
                                                                                    child: Icon(
                                                                                      Icons.check,
                                                                                      color: Colors.transparent,
                                                                                    ),
                                                                                  )
                                                                                : const Center(
                                                                                    child: Icon(
                                                                                      Icons.check,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ),
                                                                          ),
                                                                          gapW16,
                                                                          Text(
                                                                            feedsFilterList[index],
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 16,
                                                                              fontFamily: 'Inter',
                                                                              fontWeight: feedsFilterIndex != index ? FontWeight.w500 : FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                gapH10,
                                                                SizedBox(
                                                                  height: 50,
                                                                  width: MediaQuery.of(
                                                                              context,)
                                                                          .size
                                                                          .width -
                                                                      50,
                                                                  // padding: const EdgeInsets.symmetric(horizontal: 16),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                            color:
                                                                                Colors.grey,
                                                                            boxShadow: [
                                                                              CustomBoxShadow(),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              MaterialButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              "Cancel",
                                                                              style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      gapW10,
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                            color:
                                                                                primaryColor,
                                                                            boxShadow: [
                                                                              CustomBoxShadow(),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              MaterialButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                              if (index == 0) {
                                                                                _viewModel.getPostsByGroup(
                                                                                  context,
                                                                                  GetPostsByGroupRequestModel(searchKey: "", timeFilter: filterValues[feedsFilterIndex]),
                                                                                  widget.groupDetails?.id ?? "",
                                                                                );
                                                                              } else if (index == 1) {
                                                                                _viewModel.getTutorialByGroup(context, widget.groupDetails?.id ?? "", GetTutorialRequestModel(searchKey: "", filter: filterValues[feedsFilterIndex]));
                                                                              } else if (index == 2) {
                                                                                _viewModel.getQuestionByGroup(context, widget.groupDetails?.id ?? "", GetQuestionByGroupRequestModel(searchKey: "", filter: filterValues[feedsFilterIndex]));
                                                                              }
                                                                            },
                                                                            child:
                                                                                const Text(
                                                                              "Save Changes",
                                                                              style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );

                                                  HapticFeedback.heavyImpact();
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 18,
                                                    vertical: 6,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color: primaryColor,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5,),
                                                  ),
                                                  child: const Row(
                                                    children: [
                                                      Icon(
                                                        Icons.tune,
                                                        color: primaryColor,
                                                      ),
                                                      SizedBox(width: 8),
                                                      Text(
                                                        'Filter',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: primaryColor,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // PostCard()
                                          getView(index, _viewModel.groupData),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }

  Widget getView(int index, GroupDatum? groupDetails) {
    switch (index) {
      case 0:
        return _viewModel.loading
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    gapH60,
                    ShimmerWidgets.ShimmerContainer(context),
                    gapH32,
                    ShimmerWidgets.ShimmerContainer(context),
                    gapH32,
                    ShimmerWidgets.ShimmerContainer(context),
                  ],
                ),
              )
            : PublicGroupPostsList(
                groupId: groupDetails?.id ?? '',
              );
      case 1:
        return QuestionCard(
          groupId: groupDetails?.id ?? "",
        );
      case 2:
        return TutorialCard(
          groupId: groupDetails?.id ?? "",
          isSelfGroup: widget.isSelfGroup,
        );

      default:
        return const PostCard();
    }
  }

  // Future<void> getImagePalette(ImageProvider imageProvider) async {
  //   final PaletteGenerator paletteGenerator =
  //       await PaletteGenerator.fromImageProvider(imageProvider);
  //   imageBrightness = estimateBrightnessForColor(
  //       paletteGenerator.dominantColor?.color ?? Colors.black,);

  //   // Use setState to rebuild the widget with the new brightness value
  //   setState(() {});
  // }

  // static Brightness estimateBrightnessForColor(Color color) {
  //   final double relativeLuminance = color.computeLuminance();
  //   const double kThreshold = 0.15;
  //   if ((relativeLuminance + 0.05) * (relativeLuminance + 0.05) > kThreshold) {
  //     return Brightness.light;
  //   }
  //   return Brightness.dark;
  // }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }

  @override
  void pushReplacementToScreen(
    AppRoute appRoute, {
    Map<String, String>? params,
  }) {
    // TODO: implement pushReplacementToScreen
  }

  Widget _tipAmountChip(BuildContext context, String amount) {
    return ActionChip(
      label: Text('\$$amount'),
      onPressed: () {
        // Set the amount to the text field controller
      },
      backgroundColor: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    );
  }
}


// extension AmountValidator on String {
//   bool isValidAmount() {
//     return RegExp(r'^((([1-9][0-9]*[\.]*)||([0][\.]*))([0-9]{1,2}))$')
//         .hasMatch(this);
//   }
// }
