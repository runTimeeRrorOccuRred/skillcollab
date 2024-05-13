// ignore_for_file: must_be_immutable, unused_local_variable, use_named_constants, use_build_context_synchronously, depend_on_referenced_packages

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
// import 'package:palette_generator/palette_generator.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/userSubscription/unsubscribeUser/models/unsubscribe_user_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
// import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_model.dart';
// import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/components/shimmer.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
// import 'package:skill_colab/view/screens/homeView/group_card.dart';
import 'package:skill_colab/view/screens/homeView/post_card.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/member_of_list/member_of_list_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/posts/user_public_posts_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/premium_posts/user_premium_posts_view.dart';
// import 'package:skill_colab/view/screens/profile/userProfile/premium_posts/user_premium_posts_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_modal_sheets.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

class UserProfileView extends ConsumerStatefulWidget {
  bool? isSelfProfile;
  String? userId;
  UserProfileView({
    super.key,
    required this.isSelfProfile,
    required this.userId,
  });

  @override
  ConsumerState<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends ConsumerState<UserProfileView>
    with BaseScreenView, WidgetsBindingObserver {
  int index = 0;
  late UserProfileViewModel _viewModel;
  // Brightness imageBrightness = Brightness.dark;
  bool isFollowing = false;
  bool _isLoading = false;
  List<String> feedsFilterList = [
    "Most Popular",
    "Newest",
  ];
  List<String> filterValues = ["popular", "allTime"];
  int feedsFilterIndex = 1;

  String formatDateTime(DateTime inputDateTime) {
    return DateFormat('d MMM, yyyy').format(inputDateTime);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
    _isLoading = true;
    Logger.printError((widget.isSelfProfile!).toString());
    Logger.printError(widget.userId!);
    // ref.read(userProfileViewModel).toggleLoading();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _viewModel = ref.read(userProfileViewModel);
      _viewModel.followStatusUser(widget.userId ?? "", load: false);
      await _viewModel.getUserById(context, widget.userId ?? "", load: false)
          .then((value) {
        if (_viewModel.singleUserResponseModel.data?.productId != null &&
            (_viewModel.singleUserResponseModel.data?.productId?.isNotEmpty ??
                true)) {
          _viewModel.customerPlan( context,
            _viewModel.singleUserResponseModel.data?.productId ?? '',
            load: false,
          );
        }
      });
      // _viewModel.getSelfPost(context, const GetPostsUserRequestModel(type: "public"));
      _viewModel.getPostsByUserId(
        context,
        const GetPostsByUserIdRequestModel(
          searchKey: "",
          interests: "",
          timeFilter: "allTime",
          privacy: "premium",
        ),
        widget.userId ?? "",
        load: false,
      );
      _viewModel.getPostsByUserId(
        context,
        const GetPostsByUserIdRequestModel(
          searchKey: "",
          interests: "",
          timeFilter: "allTime",
          privacy: "public",
        ),
        widget.userId ?? "",
        load: false,
      );
      _viewModel.getFollowersByUser(widget.userId ?? "", load: false);
      _viewModel.getUserMemberOfList(widget.userId ?? "", load: false);
    });
    Future.delayed(const Duration(seconds: 2), () {
      // getImagePalette(
      //   NetworkImage(
      //     _viewModel.singleUserResponseModel.data?.coverPhoto ?? '',
      //   ),
      // );
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _viewModel.getUserById(context, widget.userId ?? "", load: false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(userProfileViewModel);
    return _isLoading
        ? Scaffold(
            body: SizedBox(
              height: size.height,
              width: size.width,
              child: ShimmerWidgets.userProfileShimmerWidget(context),
            ),
          )
        : PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              _viewModel.clearCustomerPlan();
              context.pop();
            },
            child: DefaultTabController(
              length: 3,
              child: _isLoading
                  ? Scaffold(
                      body: SizedBox(
                        height: size.height,
                        width: size.width,
                        child: ShimmerWidgets.userProfileShimmerWidget(context),
                      ),
                    )
                  : Scaffold(
                      appBar: AppBar(
                        centerTitle: true,
                        surfaceTintColor: Colors.white,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        leading: InkWell(
                          onTap: () {
                            _viewModel.clearCustomerPlan();
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
                                  visible: widget.isSelfProfile ?? false,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          context.pushNamed(
                                            AppRoute.settings.name,
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                            left: 6,
                                            right: 6,
                                            top: 8,
                                            bottom: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: primaryColor),
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
                                      gapW10,
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .pushNamed(
                                            AppRoute.editProfile.name, extra: false
                                          )
                                              .then((value) {
                                            // getImagePalette(
                                            //   NetworkImage(
                                            //     _viewModel
                                            //             .singleUserResponseModel
                                            //             .data
                                            //             ?.coverPhoto ??
                                            //         '',
                                            //   ),
                                            // );
                                          });
                                        },
                                        child: Container(
                                          height: 34,
                                          width: 34,
                                          padding: ((_viewModel.singleUserResponseModel.data
                                                              ?.profilePhoto ??
                                                          "") ==
                                                      "") ||
                                                  !(_viewModel
                                                          .singleUserResponseModel
                                                          .data
                                                          ?.profilePhoto
                                                          ?.contains(
                                                        "https://skillcollab",
                                                      ) ??
                                                      true) ||
                                                  _viewModel
                                                          .singleUserResponseModel
                                                          .data
                                                          ?.profilePhoto ==
                                                      null
                                              ? const EdgeInsets.all(8)
                                              : const EdgeInsets.all(0),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                          child: ((_viewModel
                                                              .singleUserResponseModel
                                                              .data
                                                              ?.profilePhoto ??
                                                          "") ==
                                                      "") ||
                                                  !(_viewModel
                                                          .singleUserResponseModel
                                                          .data
                                                          ?.profilePhoto
                                                          ?.contains(
                                                        "https://skillcollab",
                                                      ) ??
                                                      true)
                                              ? SvgPicture.asset(
                                                  'assets/icons/account-pic.svg',
                                                )
                                              : ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  child: Image.network(
                                                    _viewModel
                                                            .singleUserResponseModel
                                                            .data
                                                            ?.profilePhoto ??
                                                        AppConstants
                                                            .imageNotFoundLink,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  // CircleAvatar(
                                                  //     backgroundImage:
                                                  //         NetworkImage(
                                                  //       _viewModel
                                                  //               .singleUserResponseModel
                                                  //               .data
                                                  //               ?.profilePhoto ??
                                                  //           AppConstants
                                                  //               .imageNotFoundLink,
                                                  //     ),
                                                  //     backgroundColor: kWhite,
                                                  //   ),
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
                      body: CustomMaterialIndicator(
                        onRefresh: () async {
                          Future.delayed(const Duration(seconds: 2));
                          _viewModel.followStatusUser(
                            widget.userId ?? "",
                            load: false,
                          );
                          await _viewModel
                              .getUserById(
                            context,
                            widget.userId ?? "",
                            load: false,
                          )
                              .then((value) {
                            if (_viewModel.singleUserResponseModel.data
                                        ?.productId !=
                                    null &&
                                (_viewModel.singleUserResponseModel.data
                                        ?.productId?.isNotEmpty ??
                                    true)) {
                              _viewModel.customerPlan(
                                context,
                                _viewModel.singleUserResponseModel.data
                                        ?.productId ??
                                    '',
                                load: false,
                              );
                            }
                          });
                          // _viewModel.getSelfPost(context, const GetPostsUserRequestModel(type: "public"));
                          _viewModel.getPostsByUserId(
                            context,
                            const GetPostsByUserIdRequestModel(
                              searchKey: "",
                              interests: "",
                              timeFilter: "allTime",
                              privacy: "premium",
                            ),
                            widget.userId ?? "",
                            load: false,
                          );
                          _viewModel.getPostsByUserId(
                            context,
                            const GetPostsByUserIdRequestModel(
                              searchKey: "",
                              interests: "",
                              timeFilter: "allTime",
                              privacy: "public",
                            ),
                            widget.userId ?? "",
                            load: false,
                          );
                          _viewModel.getFollowersByUser(
                            widget.userId ?? "",
                            load: false,
                          );
                          _viewModel.getUserMemberOfList(
                            widget.userId ?? "",
                            load: false,
                          );
                          // _viewModel.getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.groupDetails?.id ?? "",);
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
                                        width: double.infinity,
                                        height: 260.h,
                                        // height: size.height / 2.8,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: ((_viewModel.singleUserResponseModel
                                                                .data
                                                                ?.coverPhoto ??
                                                            "") ==
                                                        "") ||
                                                    !(_viewModel
                                                            .singleUserResponseModel
                                                            .data
                                                            ?.coverPhoto
                                                            ?.contains(
                                                          "https://skillcollab",
                                                        ) ??
                                                        true) ||
                                                    _viewModel
                                                            .singleUserResponseModel
                                                            .data
                                                            ?.coverPhoto ==
                                                        null
                                                ? Image.asset(
                                                    "assets/images/no-cover-bg.png",
                                                  ).image
                                                : NetworkImage(
                                                    _viewModel
                                                            .singleUserResponseModel
                                                            .data
                                                            ?.coverPhoto ??
                                                        AppConstants
                                                            .imageNotFoundLink,
                                                  ),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 30.h),
                                            // Padding(
                                            //   padding: const EdgeInsets.symmetric(horizontal: 16),
                                            //   child: Row(
                                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //     children: [
                                            //       InkWell(
                                            //         onTap: () {
                                            //           _viewModel.clearCustomerPlan();
                                            //           Navigator.of(context).pop();
                                            //         },
                                            //         child: Container(
                                            //           padding: const EdgeInsets.only(
                                            //             left: 8,
                                            //             top: 10,
                                            //             bottom: 10,
                                            //           ),
                                            //           decoration: const BoxDecoration(
                                            //             color: Colors.white,
                                            //             shape: BoxShape.circle,
                                            //           ),
                                            //           child: const Center(
                                            //             child: Icon(
                                            //               Icons.arrow_back_ios,
                                            //               color: primaryColor,
                                            //               size: 20,
                                            //             ),
                                            //           ),
                                            //         ),
                                            //       ),
                                            //       Visibility(
                                            //         visible: widget.isSelfProfile ?? false,
                                            //         child: Row(
                                            //           children: [
                                            //             InkWell(
                                            //               onTap: () {
                                            //                 context.pushNamed(AppRoute.settings.name);
                                            //               },
                                            //               child: Container(
                                            //                 padding: const EdgeInsets.only(
                                            //                   left: 8,
                                            //                   right: 8,
                                            //                   top: 10,
                                            //                   bottom: 10,
                                            //                 ),
                                            //                 decoration: const BoxDecoration(
                                            //                   color: Colors.white,
                                            //                   shape: BoxShape.circle,
                                            //                 ),
                                            //                 child: const Center(
                                            //                   child: Icon(
                                            //                     Icons.settings_outlined,
                                            //                     color: primaryColor,
                                            //                     size: 20,
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //             gapW10,
                                            //             GestureDetector(
                                            //               onTap: () {
                                            //                 context.pushNamed(AppRoute.editProfile.name);
                                            //               },
                                            //               child: Container(
                                            //                 height: 38,
                                            //                 width: 38,
                                            //                 padding: ((_viewModel.singleUserResponseModel.data?.profilePhoto ?? "") == "") ||
                                            //                         !(_viewModel.singleUserResponseModel.data?.profilePhoto?.contains("https://skillcollab") ??true) ||
                                            //                         _viewModel.singleUserResponseModel.data?.profilePhoto == null
                                            //                     ? const EdgeInsets.all(8)
                                            //                     : const EdgeInsets.all(0),
                                            //                 decoration: const BoxDecoration(
                                            //                     shape: BoxShape.circle,
                                            //                     color: Colors.white,),
                                            //                 child: ((_viewModel.singleUserResponseModel.data?.profilePhoto ?? "") == "") ||
                                            //                         !(_viewModel.singleUserResponseModel.data?.profilePhoto?.contains("https://skillcollab") ?? true)
                                            //                     ? SvgPicture.asset(
                                            //                         'assets/icons/account-pic.svg',)
                                            //                     : ClipRRect(
                                            //                       borderRadius: BorderRadius.circular(19),
                                            //                       child: Image.network(imageUrl: _viewModel.singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,
                                            //                       fit: BoxFit.cover,
                                            //                     ),
                                            //                     // CircleAvatar(
                                            //                     //     backgroundImage:
                                            //                     //         NetworkImage(
                                            //                     //       _viewModel
                                            //                     //               .singleUserResponseModel
                                            //                     //               .data
                                            //                     //               ?.profilePhoto ??
                                            //                     //           AppConstants
                                            //                     //               .imageNotFoundLink,
                                            //                     //     ),
                                            //                     //     backgroundColor: kWhite,
                                            //                     //   ),
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                            SizedBox(
                                              width: 70,
                                              height: 70,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Container(
                                                    height: 70.h,
                                                    width: 70.w,
                                                    padding: ((_viewModel
                                                                        .singleUserResponseModel
                                                                        .data
                                                                        ?.profilePhoto ??
                                                                    "") ==
                                                                "") ||
                                                            !(_viewModel
                                                                    .singleUserResponseModel
                                                                    .data
                                                                    ?.profilePhoto
                                                                    ?.contains(
                                                                  "https://skillcollab",
                                                                ) ??
                                                                true)
                                                        ? const EdgeInsets.all(
                                                            8,
                                                          )
                                                        : const EdgeInsets.all(
                                                            0,
                                                          ),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        width: 5,
                                                        color: kWhite,
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: ((_viewModel
                                                                        .singleUserResponseModel
                                                                        .data
                                                                        ?.profilePhoto ??
                                                                    "") ==
                                                                "") ||
                                                            !(_viewModel
                                                                    .singleUserResponseModel
                                                                    .data
                                                                    ?.profilePhoto
                                                                    ?.contains(
                                                                  "https://skillcollab",
                                                                ) ??
                                                                true)
                                                        ? SvgPicture.asset(
                                                            'assets/icons/account-pic.svg',
                                                          )
                                                        : ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              30,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              _viewModel
                                                                      .singleUserResponseModel
                                                                      .data
                                                                      ?.profilePhoto ??
                                                                  AppConstants
                                                                      .imageNotFoundLink,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                    // CircleAvatar(
                                                    //     backgroundImage: NetworkImage(
                                                    //       _viewModel.singleUserResponseModel.data?.profilePhoto ??AppConstants.imageNotFoundLink,
                                                    //     ),
                                                    //   ),
                                                  ),
                                                  // Visibility(
                                                  //   visible:
                                                  //       !(widget.isSelfProfile ?? false),
                                                  //   child: Image.asset(
                                                  //     "assets/icons/add_gradient.png",
                                                  //     height: 16.h,
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 16,
                                              ),
                                              child: Text(
                                                "${_viewModel.singleUserResponseModel.data?.firstName ?? ""} ${_viewModel.singleUserResponseModel.data?.lastName ?? ""}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  shadows: CustomTextShadow(),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            if (_viewModel
                                                        .singleUserResponseModel
                                                        .data
                                                        ?.expertise !=
                                                    null &&
                                                (_viewModel
                                                        .singleUserResponseModel
                                                        .data
                                                        ?.expertise
                                                        ?.isNotEmpty ??
                                                    false))
                                              Column(
                                                children: [
                                                  gapH4,
                                                  Text(
                                                    _viewModel
                                                            .singleUserResponseModel
                                                            .data
                                                            ?.expertise ??
                                                        "",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:  Colors.white,
                                                      fontSize: 8.sp,
                                                      shadows: CustomTextShadow(),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            else
                                              const SizedBox.shrink(),
                                            if (_viewModel
                                                    .singleUserResponseModel
                                                    .data
                                                    ?.description
                                                    ?.isEmpty ??
                                                true)
                                              const SizedBox.shrink()
                                            else
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                ),
                                                child: Text(
                                                  _viewModel
                                                          .singleUserResponseModel
                                                          .data
                                                          ?.description ??
                                                      "skill collab user",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 3,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    shadows: CustomTextShadow(),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            const SizedBox(height: 8),
                                            GestureDetector(
                                              onTap: () {
                                                context.pushNamed(
                                                  AppRoute.profileMembers.name,
                                                  extra: widget.userId,
                                                );
                                                // Logger.printInfo(_viewModel.getFollowersByUserResponseModel.toString());
                                              },
                                              child: Text(
                                                '${_viewModel.singleUserResponseModel.data?.follower ?? 0} Followers',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  shadows: CustomTextShadow(),
                                                  fontSize: 10,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Container(
                                              child: widget.isSelfProfile!
                                                  ? Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 30,
                                                          child: MaterialButton(
                                                            onPressed: () {
                                                              context
                                                                  .pushNamed(
                                                                AppRoute
                                                                    .earningsView
                                                                    .name,
                                                              )
                                                                  .then(
                                                                      (value) async {
                                                                _isLoading =
                                                                    true;
                                                                Future.delayed(
                                                                    const Duration(
                                                                      seconds:
                                                                          2,
                                                                    ), () {
                                                                  setState(() {
                                                                    _isLoading =
                                                                        false;
                                                                  });
                                                                });
                                                                _viewModel
                                                                    .followStatusUser(
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                                await _viewModel
                                                                    .getUserById(
                                                                  context,
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                )
                                                                    .then(
                                                                        (value) {
                                                                  if (_viewModel
                                                                              .singleUserResponseModel
                                                                              .data
                                                                              ?.productId !=
                                                                          null &&
                                                                      (_viewModel
                                                                              .singleUserResponseModel
                                                                              .data
                                                                              ?.productId
                                                                              ?.isNotEmpty ??
                                                                          true)) {
                                                                    _viewModel
                                                                        .customerPlan(
                                                                      context,
                                                                      _viewModel
                                                                              .singleUserResponseModel
                                                                              .data
                                                                              ?.productId ??
                                                                          '',
                                                                      load:
                                                                          false,
                                                                    );
                                                                  }
                                                                });
                                                                // _viewModel.getSelfPost(context, const GetPostsUserRequestModel(type: "public"));
                                                                _viewModel
                                                                    .getPostsByUserId(
                                                                  context,
                                                                  const GetPostsByUserIdRequestModel(
                                                                    searchKey:
                                                                        "",
                                                                    interests:
                                                                        "",
                                                                    timeFilter:
                                                                        "allTime",
                                                                    privacy:
                                                                        "premium",
                                                                  ),
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                                _viewModel
                                                                    .getPostsByUserId(
                                                                  context,
                                                                  const GetPostsByUserIdRequestModel(
                                                                    searchKey:
                                                                        "",
                                                                    interests:
                                                                        "",
                                                                    timeFilter:
                                                                        "allTime",
                                                                    privacy:
                                                                        "public",
                                                                  ),
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                                _viewModel
                                                                    .getFollowersByUser(
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                                _viewModel
                                                                    .getUserMemberOfList(
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                              });
                                                              Future.delayed(
                                                                  const Duration(
                                                                    seconds: 2,
                                                                  ), () {
                                                                setState(() {
                                                                  _isLoading =
                                                                      false;
                                                                });
                                                              });
                                                            },
                                                            color: kWhite,
                                                            shape:
                                                                const CircleBorder(),
                                                            padding:
                                                                EdgeInsets.zero,
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/icons/analytics.svg",
                                                            ),
                                                          ),
                                                        ),
                                                        gapW10,
                                                        SizedBox(
                                                          width: 30,
                                                          child: MaterialButton(
                                                            onPressed: () {
                                                              context
                                                                  .pushNamed(
                                                                AppRoute
                                                                    .editProfile
                                                                    .name, extra: false
                                                              )
                                                                  .then(
                                                                      (value) {
                                                                // getImagePalette(
                                                                //   NetworkImage(
                                                                //     _viewModel
                                                                //             .singleUserResponseModel
                                                                //             .data
                                                                //             ?.coverPhoto ??
                                                                //         '',
                                                                //   ),
                                                                // );
                                                              });
                                                            },
                                                            color: primaryColor,
                                                            shape:
                                                                const CircleBorder(),
                                                            padding:
                                                                EdgeInsets.zero,
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/icons/edit-icon.svg",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : Container(
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          CustomBoxShadowDark(),
                                                        ],
                                                      ),
                                                      height: 40,
                                                      width: 120,
                                                      child: MaterialButton(
                                                        onPressed: () {
                                                          if (_viewModel
                                                                  .followStatusUserResponseModel
                                                                  ?.data
                                                                  ?.isFollow ??
                                                              false) {
                                                            _viewModel
                                                                .unfollowUser(
                                                              context,
                                                              widget.userId ??
                                                                  "",
                                                            )
                                                                .then((value) {
                                                              Future.delayed(
                                                                  const Duration(
                                                                    seconds: 2,
                                                                  ), () {
                                                                _viewModel
                                                                    .followStatusUser(
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                                _viewModel
                                                                    .getUserById(
                                                                  context,
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                              });
                                                            });
                                                          } else {
                                                            _viewModel
                                                                .followUser(
                                                              context,
                                                              widget.userId ??
                                                                  "",
                                                            )
                                                                .then((value) {
                                                              Future.delayed(
                                                                  const Duration(
                                                                    seconds: 2,
                                                                  ), () {
                                                                _viewModel
                                                                    .followStatusUser(
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                                _viewModel
                                                                    .getUserById(
                                                                  context,
                                                                  widget.userId ??
                                                                      "",
                                                                  load: false,
                                                                );
                                                              });
                                                            });
                                                          }
                                                        },
                                                        color: _viewModel
                                                                    .followStatusUserResponseModel
                                                                    ?.data
                                                                    ?.isFollow ??
                                                                false
                                                            ? primaryColor
                                                            : kWhite,
                                                        child: Center(
                                                          child: _viewModel
                                                                  .followButtonLoader
                                                              ? SizedBox(
                                                                  height: 20,
                                                                  width: 20,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    color: _viewModel.followStatusUserResponseModel?.data?.isFollow ??
                                                                            false
                                                                        ? kWhite
                                                                        : primaryColor,
                                                                    strokeWidth:
                                                                        2,
                                                                  ),
                                                                )
                                                              : Text(
                                                                  _viewModel.followStatusUserResponseModel?.data
                                                                              ?.isFollow ??
                                                                          false
                                                                      ? "Unfollow"
                                                                      : "Follow",
                                                                  style:
                                                                      TextStyle(
                                                                    color: _viewModel.followStatusUserResponseModel?.data?.isFollow ??
                                                                            false
                                                                        ? kWhite
                                                                        : primaryColor,
                                                                  ),
                                                                ),
                                                          // child: !_viewModel.followButtonLoader
                                                          // ? SizedBox(
                                                          //     height: 20,
                                                          //     width: 20,
                                                          //     child: CircularProgressIndicator(
                                                          //         color: !(_viewModel.followStatusUserResponseModel?.data?.isFollow ?? false)
                                                          //           ? primaryColor
                                                          //           : kWhite,
                                                          //         strokeWidth: 2,
                                                          //       ),
                                                          //   )
                                                          // : Text(
                                                          //   _viewModel.followStatusUserResponseModel?.data?.isFollow ?? false
                                                          //     ? "Unfollow"
                                                          //     : "Follow",
                                                          //   style: TextStyle(
                                                          //     color: _viewModel.followStatusUserResponseModel?.data?.isFollow ?? false ? kWhite : primaryColor,
                                                          //   ),
                                                          // ),
                                                        ),
                                                      ),
                                                    ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      DecoratedBox(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            if (!(_viewModel.singleUserResponseModel
                                                            .data?.productId ==
                                                        null ||
                                                    _viewModel
                                                            .singleUserResponseModel
                                                            .data
                                                            ?.productId ==
                                                        '') ||
                                                (widget.isSelfProfile ?? true))
                                              gapH24
                                            else
                                              gapH4,
                                            if ((_viewModel.singleUserResponseModel.data?.subscribers?.isNotEmpty ?? false) && (_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList().isNotEmpty ?? true) &&
                                                            !(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].isPaid ?? true) &&
                                                              (_viewModel.singleUserResponseModel
                                                                              .data
                                                                              ?.subscribers
                                                                              ?.where((subscriber) => subscriber.user?.id == AppConstants.userId)
                                                                              .toList()[0]
                                                                              .expirationDate
                                                                              ?.isAfter(DateTime.now()) ??
                                                                          false)) gapH20 else const SizedBox(),
                                            TabBar(
                                              onTap: (value) {
                                                index = value;
                                                if (index == 0) {
                                                  _viewModel.getPostsByUserId(
                                                    context,
                                                    const GetPostsByUserIdRequestModel(
                                                      searchKey: "",
                                                      interests: "",
                                                      timeFilter: "allTime",
                                                      privacy: "public",
                                                    ),
                                                    widget.userId ?? "",
                                                    load: false,
                                                  );
                                                } else if (index == 1) {
                                                  _viewModel.getPostsByUserId(
                                                    context,
                                                    const GetPostsByUserIdRequestModel(
                                                      searchKey: "",
                                                      interests: "",
                                                      timeFilter: "allTime",
                                                      privacy: "premium",
                                                    ),
                                                    widget.userId ?? "",
                                                    load: false,
                                                  );
                                                }
                                                setState(() {});
                                              },
                                              padding: EdgeInsets.zero,
                                              isScrollable: true,
                                              indicatorColor: primaryColor,
                                              labelColor: primaryColor,
                                              unselectedLabelColor: kGrey,
                                              indicator:
                                                  const HalfCircleTabIndicator(
                                                color:
                                                    primaryColor, // Change this to the desired indicator color
                                              ),
                                              tabs: [
                                                Tab(
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/icons/unlock.svg",
                                                        // ignore: deprecated_member_use
                                                        color: primaryColor,
                                                      ),
                                                      Text(
                                                        "${_viewModel.publicPostsLength} Public Posts",
                                                      ),
                                                    ],
                                                  ),
                                                  // icon: Icon(Icons.lock_open_rounded),
                                                  // text: "137 Public Posts",
                                                ),
                                                Tab(
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons
                                                            .monetization_on_outlined,
                                                      ),
                                                      gapW4,
                                                      Text(
                                                        "${_viewModel.premiumPostsLength} Premium Post",
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Tab(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.group_outlined,
                                                      ),
                                                      Text("Member of"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: double.infinity,
                                              height: 1,
                                            ),
                                            if (AppConstants.usertype == 0)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 100,
                                                ),
                                                child: GuestLoginRequestWidget(
                                                  text:
                                                      "to see the user's contents",
                                                ),
                                              )
                                            else
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Visibility(
                                                      visible: index < 2,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 11,
                                                          right: 16,
                                                          left: 16,
                                                        ),
                                                        child:
                                                            (widget.isSelfProfile ??
                                                                    false)
                                                                ? Row(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            48,
                                                                        height:
                                                                            48,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                          border:
                                                                              Border.all(color: primaryColor),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              45,
                                                                          height:
                                                                              45,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            border:
                                                                                Border.all(
                                                                              color: Colors.white,
                                                                            ),
                                                                            // image: DecorationImage(
                                                                            //   fit: BoxFit.cover,
                                                                            //   image:
                                                                            //   // ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto == null && !(ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.contains("https://skill") ?? true)
                                                                            //    Image.asset("assets/icons/peoplePic.png",).image
                                                                            //   // : Image.networkProvider(ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink),
                                                                            // ),
                                                                          ),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(22),
                                                                            child: ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto == null || (ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.isEmpty ?? false)
                                                                              ? Image.asset("assets/icons/user.png")
                                                                              :  Image.network(
                                                                                ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      gapW16,
                                                                      Expanded(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            if (index ==
                                                                                0) {
                                                                              context.pushNamed(
                                                                                AppRoute.createPost.name,
                                                                                extra: {
                                                                                  'groupId': "",
                                                                                  'privacy': "public",
                                                                                },
                                                                              ).then((value) {
                                                                                // ref.read(createPostViewModel).clearAllData();
                                                                                // _viewModel.getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), widget.userId ?? "");
                                                                              });
                                                                            } else if (index ==
                                                                                1) {
                                                                              context.pushNamed(
                                                                                AppRoute.createPost.name,
                                                                                extra: {
                                                                                  'groupId': "",
                                                                                  'privacy': "premium",
                                                                                },
                                                                              ).then((value) {
                                                                                ref.read(createPostViewModel).clearAllData();
                                                                                _viewModel.getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "premium"), widget.userId ?? "");
                                                                              });
                                                                            }
                                                                          },
                                                                          child:
                                                                              TextFormField(
                                                                            enabled:
                                                                                false,
                                                                            textCapitalization:
                                                                                TextCapitalization.sentences,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              fillColor: const Color(0xFFF8F7F9),
                                                                              filled: true,
                                                                              contentPadding: const EdgeInsets.only(
                                                                                left: 16,
                                                                              ),
                                                                              hintText: "Write Something.....",
                                                                              hintStyle: const TextStyle(
                                                                                fontSize: 12,
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                                borderSide: const BorderSide(
                                                                                  color: primaryColor,
                                                                                ),
                                                                              ),
                                                                              border: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )
                                                                : const SizedBox
                                                                    .shrink(),
                                                      ),
                                                    ),
                                                    gapH16,
                                                    Visibility(
                                                      visible: index < 2,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              if (index == 0) {
                                                                context
                                                                    .pushNamed(
                                                                  AppRoute
                                                                      .searchUserPostView
                                                                      .name,
                                                                  extra: {
                                                                    "userId": widget
                                                                        .userId,
                                                                    "data": _viewModel
                                                                        .getPostsByUserIdResponseModel,
                                                                  },
                                                                );
                                                              }
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal: 18,
                                                                vertical: 6,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    primaryColor,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    color:
                                                                        Color(
                                                                      0x3F1B9AAA,
                                                                    ),
                                                                    blurRadius:
                                                                        18,
                                                                    offset:
                                                                        Offset(
                                                                      0,
                                                                      8,
                                                                    ),
                                                                  ),
                                                                  BoxShadow(
                                                                    color:
                                                                        Color(
                                                                      0x0A141414,
                                                                    ),
                                                                    blurRadius:
                                                                        1,
                                                                  ),
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  5,
                                                                ),
                                                              ),
                                                              child: const Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .search,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 8,
                                                                  ),
                                                                  Text(
                                                                    'Search',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                shape:
                                                                    const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                      30,
                                                                    ),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            30,),
                                                                  ),
                                                                ),
                                                                builder:
                                                                    (context) {
                                                                  return StatefulBuilder(
                                                                    builder: (
                                                                      context,
                                                                      filterSetState,
                                                                    ) {
                                                                      return Container(
                                                                        height:
                                                                            280,
                                                                        padding:
                                                                            const EdgeInsets.symmetric(
                                                                          vertical:
                                                                              16,
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                gapW60,
                                                                                const Text(
                                                                                  'Filter',
                                                                                  style: TextStyle(
                                                                                    color: primaryColor,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontSize: 24,
                                                                                  ),
                                                                                ),
                                                                                IconButton(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  icon: const Icon(Icons.close),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            gapH16,
                                                                            ...List.generate(
                                                                              feedsFilterList.length,
                                                                              (index) => InkWell(
                                                                                onTap: () {
                                                                                  filterSetState(() {
                                                                                    feedsFilterIndex = index;
                                                                                    Logger.printError(
                                                                                      feedsFilterIndex.toString(),
                                                                                    );
                                                                                  });
                                                                                },
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.only(
                                                                                    left: 16.0,
                                                                                    top: 8,
                                                                                    bottom: 8,
                                                                                  ),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      DecoratedBox(
                                                                                        decoration: BoxDecoration(
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
                                                                                        style: TextStyle(
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
                                                                              width: MediaQuery.of(context).size.width - 50,
                                                                              // padding: const EdgeInsets.symmetric(horizontal: 16),
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      height: 50,
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(5),
                                                                                        color: Colors.grey,
                                                                                        boxShadow: [
                                                                                          CustomBoxShadow(),
                                                                                        ],
                                                                                      ),
                                                                                      child: MaterialButton(
                                                                                        onPressed: () {
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(
                                                                                          "Cancel",
                                                                                          style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  gapW10,
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      height: 50,
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(5),
                                                                                        color: primaryColor,
                                                                                        boxShadow: [
                                                                                          CustomBoxShadow(),
                                                                                        ],
                                                                                      ),
                                                                                      child: MaterialButton(
                                                                                        onPressed: () {
                                                                                          Navigator.pop(context);
                                                                                          if (index == 0) {
                                                                                            _viewModel.getPostsByUserId(context, GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: filterValues[feedsFilterIndex], privacy: "public"), widget.userId ?? "");
                                                                                          }
                                                                                          // else if(index == 1){
                                                                                          //   _viewModel.getTutorialByGroup(context, widget.groupDetails?.id ?? "", GetTutorialRequestModel(searchKey: "", filter: filterValues[feedsFilterIndex]));
                                                                                          // }else if(index == 2){
                                                                                          //   _viewModel.getQuestionByGroup(context, widget.groupDetails?.id ?? "", GetQuestionByGroupRequestModel(searchKey: "", filter: filterValues[feedsFilterIndex]));
                                                                                          // }
                                                                                        },
                                                                                        child: const Text(
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

                                                              HapticFeedback
                                                                  .heavyImpact();
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal: 18,
                                                                vertical: 6,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      primaryColor,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  5,
                                                                ),
                                                              ),
                                                              child: const Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons.tune,
                                                                    color:
                                                                        primaryColor,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 8,
                                                                  ),
                                                                  Text(
                                                                    'Filter',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color:
                                                                          primaryColor,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    // PostCard()
                                                    getView(index),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Visibility(
                                    visible: !(_viewModel
                                                    .singleUserResponseModel
                                                    .data
                                                    ?.productId ==
                                                null ||
                                            _viewModel.singleUserResponseModel
                                                    .data?.productId ==
                                                '') || (widget.isSelfProfile ?? false),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 240.h,
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 26,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0x14000000),
                                              spreadRadius: 10,
                                              blurRadius: 10,
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: widget.isSelfProfile ?? true 
                                                  ? 16 : 32,
                                              ),
                                              child: _viewModel.subscribeButtonLoader
                                                ? SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: !(_viewModel
                                                                    .followStatusUserResponseModel
                                                                    ?.data
                                                                    ?.isFollow ??
                                                                false)
                                                            ? primaryColor
                                                            : kWhite,
                                                        strokeWidth: 2,
                                                      ),
                                                    )
                                                  : widget.isSelfProfile ?? true 
                                                      ? GestureDetector(
                                                        onTap: () {
                                                          if(_viewModel.singleUserResponseModel.data?.productId == null || _viewModel.singleUserResponseModel.data?.productId == '') {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                ),
                                                                isScrollControlled:
                                                                    true,
                                                                builder:
                                                                    (context) {
                                                                  return Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      bottom: MediaQuery.of(context)
                                                                          .viewInsets
                                                                          .bottom,
                                                                    ),
                                                                    child:
                                                                        StatefulBuilder(
                                                                      builder:
                                                                          (
                                                                        context,
                                                                        sheetSetState,
                                                                      ) {
                                                                        return UserSelfSubscribeModelSheet(
                                                                          userId: _viewModel.singleUserResponseModel.data?.id ?? '',
                                                                          productName: '${_viewModel.singleUserResponseModel.data?.firstName} ${_viewModel.singleUserResponseModel.data?.lastName}',
                                                                        );
                                                                      },
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) {
                                                                ref.read(userProfileViewModel,).getUserById( context, ref.read(userProfileViewModel).singleUserResponseModel.data?.id ?? "",);
                                                              });
                                                          } else {
                                                            showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    30,
                                                                  ),
                                                                ),
                                                                isScrollControlled:
                                                                    true,
                                                                builder:
                                                                    (context) {
                                                                  return Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      bottom: MediaQuery.of(context)
                                                                          .viewInsets
                                                                          .bottom,
                                                                    ),
                                                                    child:
                                                                        StatefulBuilder(
                                                                      builder: (context, sheetSetState,) {
                                                                        return EditUserSelfSubscribeModelSheet(
                                                                          userId: _viewModel.singleUserResponseModel.data?.id ?? '',
                                                                          productName: '${_viewModel.singleUserResponseModel.data?.firstName} ${_viewModel.singleUserResponseModel.data?.lastName}',
                                                                          monthlyPrice: _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.toLowerCase().contains("monthly") ?? false).toList()[0].toJson() ?? {},
                                                                          sixMonthPrice: _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.toLowerCase().contains("quarterly") ?? false).toList()[0].toJson() ?? {},
                                                                          twelveMonthPrice: _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.toLowerCase().contains("annual") ?? false).toList()[0].toJson() ?? {},
                                                                        );
                                                                      },
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                          }
                                                        },
                                                        child: Text(
                                                          (_viewModel.singleUserResponseModel.data?.productId == null || _viewModel.singleUserResponseModel.data?.productId == '')
                                                            ? "Subscription Settings"
                                                            : "Edit Subscription",
                                                        )
                                                      )
                                                      : GestureDetector(
                                                        onTap: () {
                                                          if((_viewModel.singleUserResponseModel.data?.subscribers?.isNotEmpty ?? false) && 
                                                          (_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList().isNotEmpty ?? false) &&
                                                            !(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].isPaid ?? true) &&
                                                              (_viewModel.singleUserResponseModel
                                                                              .data
                                                                              ?.subscribers
                                                                              ?.where((subscriber) => subscriber.user?.id == AppConstants.userId)
                                                                              .toList()[0]
                                                                              .expirationDate
                                                                              ?.isAfter(DateTime.now()) ??
                                                                          false)) {
                                                            
                                                            showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return AlertDialog(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                      ),
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      title:
                                                                          const Text(
                                                                        "Want to subscribe again?",
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              primaryColor,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      ),
                                                                      content:
                                                                          Text(
                                                                        "You can subscribe again after ${formatDateTime(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].expirationDate ?? DateTime.now())}",
                                                                      ),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              const Text(
                                                                            "Ok",
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );

                                                          } else if(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).isNotEmpty ?? false) {

                                                            showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                builder:
                                                                    (context) {
                                                                  return Container(
                                                                    height:
                                                                        300,
                                                                    width:
                                                                        MediaQuery
                                                                            .of(
                                                                      context,
                                                                    ).size.width,
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .only(
                                                                      top: 16,
                                                                      bottom:
                                                                          32,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color:
                                                                          kWhite,
                                                                      borderRadius:
                                                                          BorderRadius.circular(20),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment.spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(horizontal: 16),
                                                                          child:
                                                                              Row(
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
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 16),
                                                                          child:
                                                                              Text(
                                                                            "Are you sure you want to unsubscribe",
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 18),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              60,
                                                                          height:
                                                                              60,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color: const Color(0xffF3F5F6),
                                                                            borderRadius: BorderRadius.circular(50),
                                                                          ),
                                                                          // padding: const EdgeInsets.only(right: 4),
                                                                          child:
                                                                              const Center(
                                                                            child: Icon(
                                                                              Icons.logout_rounded,
                                                                              color: primaryColor,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(horizontal: 14),
                                                                          child:
                                                                              Row(
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
                                                                                      final UnsubscribeUserRequestModel unsubscribeUserRequestModel = UnsubscribeUserRequestModel(
                                                                                        subscribeUserId: widget.userId ?? "",
                                                                                      );
                                                                                      Logger.printError(unsubscribeUserRequestModel.toString());
                                                                                      _viewModel.unsubscribeUser(context, unsubscribeUserRequestModel, ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? '');
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                    color: primaryColor,
                                                                                    child: Center(
                                                                                      child: _viewModel.subscribeButtonLoader
                                                                                          ? const SizedBox(
                                                                                              height: 20,
                                                                                              width: 20,
                                                                                              child: CircularProgressIndicator(
                                                                                                color: kWhite,
                                                                                              ),
                                                                                            )
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

                                                          } else {

                                                            showModalBottomSheet(
                                                              context:
                                                                  context,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  30,
                                                                ),
                                                              ),
                                                              builder:
                                                                  (context) {
                                                                return UserSubscriptionModalBottomSheet(
                                                                  monthlyPrice: _viewModel
                                                                          .getCustomerPlanResponseModel
                                                                          .data
                                                                          ?.data
                                                                          ?.where(
                                                                            (element) => element.nickname?.toLowerCase().contains("monthly") ?? false,
                                                                          )
                                                                          .toList()[0]
                                                                          .toJson() ??
                                                                      {},
                                                                  sixMonthPrice: _viewModel
                                                                          .getCustomerPlanResponseModel
                                                                          .data
                                                                          ?.data
                                                                          ?.where(
                                                                            (element) => element.nickname?.toLowerCase().contains("quarterly") ?? false,
                                                                          )
                                                                          .toList()[0]
                                                                          .toJson() ??
                                                                      {},
                                                                  twelveMonthPrice: _viewModel
                                                                          .getCustomerPlanResponseModel
                                                                          .data
                                                                          ?.data
                                                                          ?.where(
                                                                            (element) => element.nickname?.toLowerCase().contains("annual") ?? false,
                                                                          )
                                                                          .toList()[0]
                                                                          .toJson() ??
                                                                      {},
                                                                  subUserId:
                                                                      widget.userId ??
                                                                          "",
                                                                );
                                                              },
                                                            ).then((value) async {
                                                              Future.delayed(const Duration(seconds: 4), () async {
                                                                _viewModel.followStatusUser(
                                                                  widget.userId ?? "",
                                                                );
                                                                await _viewModel
                                                                    .getUserById(
                                                                  context,
                                                                  widget.userId ?? "",
                                                                )
                                                                    .then((value) {
                                                                  if (_viewModel.singleUserResponseModel.data
                                                                              ?.productId !=
                                                                          null &&
                                                                      (_viewModel.singleUserResponseModel.data
                                                                              ?.productId?.isNotEmpty ??
                                                                          true)) {
                                                                    _viewModel.customerPlan(
                                                                      context,
                                                                      _viewModel.singleUserResponseModel.data
                                                                              ?.productId ??
                                                                          '',
                                                                    );
                                                                  }
                                                                });
                                                                // _viewModel.getSelfPost(context, const GetPostsUserRequestModel(type: "public"));
                                                                _viewModel.getPostsByUserId(
                                                                  context,
                                                                  const GetPostsByUserIdRequestModel(
                                                                    searchKey: "",
                                                                    interests: "",
                                                                    timeFilter: "allTime",
                                                                    privacy: "premium",
                                                                  ),
                                                                  widget.userId ?? "",
                                                                );
                                                                _viewModel.getPostsByUserId(
                                                                  context,
                                                                  const GetPostsByUserIdRequestModel(
                                                                    searchKey: "",
                                                                    interests: "",
                                                                    timeFilter: "allTime",
                                                                    privacy: "public",
                                                                  ),
                                                                  widget.userId ?? "",
                                                                );
                                                                _viewModel.getFollowersByUser(
                                                                  widget.userId ?? "",
                                                                );
                                                                _viewModel.getUserMemberOfList(
                                                                  widget.userId ?? "",
                                                                );
                                                              });
                                                            });
                                                          }
                                                        },
                                                          child: Text(
                                                            ((_viewModel.singleUserResponseModel.data?.subscribers?.isNotEmpty ?? false) && (_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList().isNotEmpty ?? true) &&
                                                            !(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].isPaid ?? true) &&
                                                              (_viewModel.singleUserResponseModel
                                                                              .data
                                                                              ?.subscribers
                                                                              ?.where((subscriber) => subscriber.user?.id == AppConstants.userId)
                                                                              .toList()[0]
                                                                              .expirationDate
                                                                              ?.isAfter(DateTime.now()) ??
                                                                          false))
                                                                  ? "Subscription ends\n on ${formatDateTime(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].expirationDate ?? DateTime.now())}"
                                                                  : (_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).isNotEmpty ?? false)
                                                                    ? "Unsubscribe" 
                                                                    : "Subscribe"
                                                          )
                                                      )
                                            ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //     left:
                                            //         widget.isSelfProfile ?? true
                                            //             ? 16
                                            //             : 32,
                                            //   ),
                                            //   child: _viewModel
                                            //           .subscribeButtonLoader
                                                  // ? SizedBox(
                                                  //     height: 20,
                                                  //     width: 20,
                                                  //     child:
                                                  //         CircularProgressIndicator(
                                                  //       color: !(_viewModel
                                                  //                   .followStatusUserResponseModel
                                                  //                   ?.data
                                                  //                   ?.isFollow ??
                                                  //               false)
                                                  //           ? primaryColor
                                                  //           : kWhite,
                                                  //       strokeWidth: 2,
                                                  //     ),
                                                  //   )
                                            //       : _viewModel.singleUserResponseModel
                                            //                   .data?.subscribers
                                            //                   ?.where(
                                            //                     (subscriber) =>
                                            //                         subscriber
                                            //                             .user
                                            //                             ?.id ==
                                            //                         AppConstants
                                            //                             .userId,
                                            //                   )
                                            //                   .toList()
                                            //                   .isNotEmpty ?? true
                                                      // ? GestureDetector(
                                                      //     onTap: () {
                                                      //       if (!(widget
                                                      //               .isSelfProfile ??
                                                      //           true)) {
                                                      //         showModalBottomSheet(
                                                      //           context:
                                                      //               context,
                                                      //           shape:
                                                      //               RoundedRectangleBorder(
                                                      //             borderRadius:
                                                      //                 BorderRadius
                                                      //                     .circular(
                                                      //               30,
                                                      //             ),
                                                      //           ),
                                                      //           builder:
                                                      //               (context) {
                                                      //             return UserSubscriptionModalBottomSheet(
                                                      //               monthlyPrice: _viewModel
                                                      //                       .getCustomerPlanResponseModel
                                                      //                       .data
                                                      //                       ?.data
                                                      //                       ?.where(
                                                      //                         (element) => element.nickname?.toLowerCase().contains("monthly") ?? false,
                                                      //                       )
                                                      //                       .toList()[0]
                                                      //                       .toJson() ??
                                                      //                   {},
                                                      //               sixMonthPrice: _viewModel
                                                      //                       .getCustomerPlanResponseModel
                                                      //                       .data
                                                      //                       ?.data
                                                      //                       ?.where(
                                                      //                         (element) => element.nickname?.toLowerCase().contains("quarterly") ?? false,
                                                      //                       )
                                                      //                       .toList()[0]
                                                      //                       .toJson() ??
                                                      //                   {},
                                                      //               twelveMonthPrice: _viewModel
                                                      //                       .getCustomerPlanResponseModel
                                                      //                       .data
                                                      //                       ?.data
                                                      //                       ?.where(
                                                      //                         (element) => element.nickname?.toLowerCase().contains("annual") ?? false,
                                                      //                       )
                                                      //                       .toList()[0]
                                                      //                       .toJson() ??
                                                      //                   {},
                                                      //               subUserId:
                                                      //                   widget.userId ??
                                                      //                       "",
                                                      //             );
                                                      //           },
                                                      //         ).then((value) {
                                                      //           ref
                                                      //               .read(
                                                      //                 userProfileViewModel,
                                                      //               )
                                                      //               .getUserById(
                                                      //                 context,
                                                      //                 ref
                                                      //                         .read(userProfileViewModel)
                                                      //                         .singleUserResponseModel
                                                      //                         .data
                                                      //                         ?.id ??
                                                      //                     "",
                                                      //               );
                                                      //         });
                                                      //       } else {
                                                      //         if (_viewModel
                                                      //                     .singleUserResponseModel
                                                      //                     .data
                                                      //                     ?.productId ==
                                                      //                 null ||
                                                      //             _viewModel
                                                      //                     .singleUserResponseModel
                                                      //                     .data
                                                      //                     ?.productId ==
                                                      //                 '') {
                                                                // showModalBottomSheet(
                                                                //   context:
                                                                //       context,
                                                                //   shape:
                                                                //       RoundedRectangleBorder(
                                                                //     borderRadius:
                                                                //         BorderRadius
                                                                //             .circular(
                                                                //       30,
                                                                //     ),
                                                                //   ),
                                                                //   isScrollControlled:
                                                                //       true,
                                                                //   builder:
                                                                //       (context) {
                                                                //     return Padding(
                                                                //       padding:
                                                                //           EdgeInsets
                                                                //               .only(
                                                                //         bottom: MediaQuery.of(context)
                                                                //             .viewInsets
                                                                //             .bottom,
                                                                //       ),
                                                                //       child:
                                                                //           StatefulBuilder(
                                                                //         builder:
                                                                //             (
                                                                //           context,
                                                                //           sheetSetState,
                                                                //         ) {
                                                                //           return UserSelfSubscribeModelSheet(
                                                                //             userId:
                                                                //                 _viewModel.singleUserResponseModel.data?.id ?? '',
                                                                //             productName:
                                                                //                 '${_viewModel.singleUserResponseModel.data?.firstName} ${_viewModel.singleUserResponseModel.data?.lastName}',
                                                                //           );
                                                                //         },
                                                                //       ),
                                                                //     );
                                                                //   },
                                                                // );
                                                      //         } else {
                                                                // showModalBottomSheet(
                                                                //   context:
                                                                //       context,
                                                                //   shape:
                                                                //       RoundedRectangleBorder(
                                                                //     borderRadius:
                                                                //         BorderRadius
                                                                //             .circular(
                                                                //       30,
                                                                //     ),
                                                                //   ),
                                                                //   isScrollControlled:
                                                                //       true,
                                                                //   builder:
                                                                //       (context) {
                                                                //     return Padding(
                                                                //       padding:
                                                                //           EdgeInsets
                                                                //               .only(
                                                                //         bottom: MediaQuery.of(context)
                                                                //             .viewInsets
                                                                //             .bottom,
                                                                //       ),
                                                                //       child:
                                                                //           StatefulBuilder(
                                                                //         builder:
                                                                //             (
                                                                //           context,
                                                                //           sheetSetState,
                                                                //         ) {
                                                                //           return EditUserSelfSubscribeModelSheet(
                                                                //             userId:
                                                                //                 _viewModel.singleUserResponseModel.data?.id ?? '',
                                                                //             productName:
                                                                //                 '${_viewModel.singleUserResponseModel.data?.firstName} ${_viewModel.singleUserResponseModel.data?.lastName}',
                                                                //             monthlyPrice:
                                                                //                 _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.toLowerCase().contains("monthly") ?? false).toList()[0].toJson() ?? {},
                                                                //             sixMonthPrice:
                                                                //                 _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.toLowerCase().contains("quarterly") ?? false).toList()[0].toJson() ?? {},
                                                                //             twelveMonthPrice:
                                                                //                 _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.toLowerCase().contains("annual") ?? false).toList()[0].toJson() ?? {},
                                                                //           );
                                                                //         },
                                                                //       ),
                                                                //     );
                                                                //   },
                                                                // );
                                                      //         }
                                                      //       }
                                                      //     },
                                                      //     child: Text(
                                                      //       (widget.isSelfProfile ?? true)
                                                      //           ? (_viewModel.singleUserResponseModel.data?.productId == null || _viewModel.singleUserResponseModel.data?.productId == '')
                                                      //               ? "Subscribe Settings"
                                                      //               : "Edit Subscribe Plan"
                                                      //           : "Subscribe",
                                                      //       style:
                                                      //           const TextStyle(
                                                      //         color:
                                                      //             primaryColor,
                                                      //         fontSize: 12,
                                                      //         fontWeight:
                                                      //             FontWeight
                                                      //                 .w700,
                                                      //       ),
                                                      //     ),
                                                      //   )
                                                      // : Center(
                                                      //     child:
                                                      //         GestureDetector(
                                                      //       onTap: () {
                                                      //         if (!(_viewModel
                                                      //                     .singleUserResponseModel
                                                      //                     .data
                                                      //                     ?.subscribers
                                                      //                     ?.where(
                                                      //                       (subscriber) =>
                                                      //                           subscriber.user?.id ==
                                                      //                           AppConstants.userId,
                                                      //                     )
                                                      //                     .toList()[
                                                      //                         0]
                                                      //                     .isPaid ??
                                                      //                 true) &&
                                                      //             (_viewModel
                                                      //                     .singleUserResponseModel
                                                      //                     .data
                                                      //                     ?.subscribers
                                                      //                     ?.where(
                                                      //                       (subscriber) =>
                                                      //                           subscriber.user?.id ==
                                                      //                           AppConstants.userId,
                                                      //                     )
                                                      //                     .toList()[
                                                      //                         0]
                                                      //                     .expirationDate
                                                      //                     ?.isAfter(
                                                      //                       DateTime.now(),
                                                      //                     ) ??
                                                      //                 false)) {
                                                      //           showDialog(
                                                      //             context:
                                                      //                 context,
                                                      //             builder:
                                                      //                 (context) {
                                                      //               return AlertDialog(
                                                      //                 shape:
                                                      //                     RoundedRectangleBorder(
                                                      //                   borderRadius:
                                                      //                       BorderRadius.circular(5),
                                                      //                 ),
                                                      //                 backgroundColor:
                                                      //                     Colors
                                                      //                         .white,
                                                      //                 title:
                                                      //                     const Text(
                                                      //                   "Want to subscribe again?",
                                                      //                   style:
                                                      //                       TextStyle(
                                                      //                     fontWeight:
                                                      //                         FontWeight.bold,
                                                      //                     color:
                                                      //                         primaryColor,
                                                      //                     fontSize:
                                                      //                         14,
                                                      //                   ),
                                                      //                 ),
                                                      //                 content:
                                                      //                     Text(
                                                      //                   "You can subscribe again after ${formatDateTime(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].expirationDate ?? DateTime.now())}",
                                                      //                 ),
                                                      //                 actions: [
                                                      //                   TextButton(
                                                      //                     onPressed:
                                                      //                         () {
                                                      //                       Navigator.pop(context);
                                                      //                     },
                                                      //                     child:
                                                      //                         const Text(
                                                      //                       "Ok",
                                                      //                       style:
                                                      //                           TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
                                                      //                     ),
                                                      //                   ),
                                                      //                 ],
                                                      //               );
                                                      //             },
                                                      //           );
                                                      //         } else {
                                                      //           showModalBottomSheet(
                                                      //             context:
                                                      //                 context,
                                                      //             backgroundColor:
                                                      //                 Colors
                                                      //                     .transparent,
                                                      //             builder:
                                                      //                 (context) {
                                                      //               return Container(
                                                      //                 height:
                                                      //                     300,
                                                      //                 width:
                                                      //                     MediaQuery
                                                      //                         .of(
                                                      //                   context,
                                                      //                 ).size.width,
                                                      //                 padding:
                                                      //                     const EdgeInsets
                                                      //                         .only(
                                                      //                   top: 16,
                                                      //                   bottom:
                                                      //                       32,
                                                      //                 ),
                                                      //                 decoration:
                                                      //                     BoxDecoration(
                                                      //                   color:
                                                      //                       kWhite,
                                                      //                   borderRadius:
                                                      //                       BorderRadius.circular(20),
                                                      //                 ),
                                                      //                 child:
                                                      //                     Column(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.spaceBetween,
                                                      //                   children: [
                                                      //                     Padding(
                                                      //                       padding:
                                                      //                           const EdgeInsets.symmetric(horizontal: 16),
                                                      //                       child:
                                                      //                           Row(
                                                      //                         mainAxisAlignment: MainAxisAlignment.end,
                                                      //                         children: [
                                                      //                           IconButton(
                                                      //                             onPressed: () {
                                                      //                               Navigator.pop(context);
                                                      //                             },
                                                      //                             icon: const Icon(
                                                      //                               Icons.close,
                                                      //                               color: kGrey,
                                                      //                             ),
                                                      //                           ),
                                                      //                         ],
                                                      //                       ),
                                                      //                     ),
                                                      //                     const Padding(
                                                      //                       padding:
                                                      //                           EdgeInsets.symmetric(horizontal: 16),
                                                      //                       child:
                                                      //                           Text(
                                                      //                         "Are you sure you want to unsubscribe",
                                                      //                         textAlign: TextAlign.center,
                                                      //                         style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 18),
                                                      //                       ),
                                                      //                     ),
                                                      //                     Container(
                                                      //                       width:
                                                      //                           60,
                                                      //                       height:
                                                      //                           60,
                                                      //                       decoration:
                                                      //                           BoxDecoration(
                                                      //                         color: const Color(0xffF3F5F6),
                                                      //                         borderRadius: BorderRadius.circular(50),
                                                      //                       ),
                                                      //                       // padding: const EdgeInsets.only(right: 4),
                                                      //                       child:
                                                      //                           const Center(
                                                      //                         child: Icon(
                                                      //                           Icons.logout_rounded,
                                                      //                           color: primaryColor,
                                                      //                         ),
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                       padding:
                                                      //                           const EdgeInsets.symmetric(horizontal: 14),
                                                      //                       child:
                                                      //                           Row(
                                                      //                         children: [
                                                      //                           Expanded(
                                                      //                             child: SizedBox(
                                                      //                               height: 45,
                                                      //                               child: MaterialButton(
                                                      //                                 onPressed: () {
                                                      //                                   Navigator.pop(context);
                                                      //                                 },
                                                      //                                 color: const Color(0xffC4C4C4),
                                                      //                                 child: const Center(
                                                      //                                   child: Text(
                                                      //                                     "Cancel",
                                                      //                                     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff5D5D5D)),
                                                      //                                   ),
                                                      //                                 ),
                                                      //                               ),
                                                      //                             ),
                                                      //                           ),
                                                      //                           const SizedBox(
                                                      //                             width: 18,
                                                      //                           ),
                                                      //                           Expanded(
                                                      //                             child: SizedBox(
                                                      //                               height: 45,
                                                      //                               child: MaterialButton(
                                                      //                                 onPressed: () async {
                                                      //                                   final UnsubscribeUserRequestModel unsubscribeUserRequestModel = UnsubscribeUserRequestModel(
                                                      //                                     subscribeUserId: widget.userId ?? "",
                                                      //                                   );
                                                      //                                   Logger.printError(unsubscribeUserRequestModel.toString());
                                                      //                                   _viewModel.unsubscribeUser(context, unsubscribeUserRequestModel, ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? '');
                                                      //                                   Navigator.pop(context);
                                                      //                                 },
                                                      //                                 color: primaryColor,
                                                      //                                 child: Center(
                                                      //                                   child: _viewModel.subscribeButtonLoader
                                                      //                                       ? const SizedBox(
                                                      //                                           height: 20,
                                                      //                                           width: 20,
                                                      //                                           child: CircularProgressIndicator(
                                                      //                                             color: kWhite,
                                                      //                                           ),
                                                      //                                         )
                                                      //                                       : const Text(
                                                      //                                           "Leave",
                                                      //                                           style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: kWhite),
                                                      //                                         ),
                                                      //                                 ),
                                                      //                               ),
                                                      //                             ),
                                                      //                           ),
                                                      //                         ],
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               );
                                                      //             },
                                                      //           );
                                                      //         }
                                                      //       },
                                                      //       child: Text(
                                                              // (!(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].isPaid ?? true) &&
                                                              //         (_viewModel
                                                              //                 .singleUserResponseModel
                                                              //                 .data
                                                              //                 ?.subscribers
                                                              //                 ?.where((subscriber) => subscriber.user?.id == AppConstants.userId)
                                                              //                 .toList()[0]
                                                              //                 .expirationDate
                                                              //                 ?.isAfter(DateTime.now()) ??
                                                              //             false))
                                                              //     ? "Subscription ends\n on ${formatDateTime(_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].expirationDate ?? DateTime.now())}"
                                                              //     : "Unsubscribe",
                                                      //         style:
                                                      //             const TextStyle(
                                                      //           color:
                                                      //               primaryColor,
                                                      //           fontWeight:
                                                      //               FontWeight
                                                      //                   .w700,
                                                      //           fontSize: 12,
                                                      //         ),
                                                      //       ),
                                                      //     ),
                                                      //   ),
                                            // ),
                                            const Spacer(),
                                            Container(
                                              height: 20,
                                              decoration: const ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 0.50,
                                                    strokeAlign: BorderSide
                                                        .strokeAlignCenter,
                                                    color: Color(0xFFD8D8D8),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                            if (_viewModel
                                                .loading)
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: !(_viewModel
                                                              .followStatusUserResponseModel
                                                              ?.data
                                                              ?.isFollow ??
                                                          false)
                                                      ? primaryColor
                                                      : kWhite,
                                                  strokeWidth: 2,
                                                ),
                                              )
                                            else
                                              GestureDetector(
                                                onTap: () {
                                                  Logger.printSuccess(
                                                    _viewModel
                                                        .getCustomerPlanResponseModel
                                                        .data
                                                        .toString(),
                                                  );
                                                },
                                                child: Text.rich(
                                                  TextSpan(
                                                    text: _viewModel
                                                                    .getCustomerPlanResponseModel
                                                                    .data
                                                                    ?.data ==
                                                                null ||
                                                            (_viewModel
                                                                    .getCustomerPlanResponseModel
                                                                    .data
                                                                    ?.data
                                                                    ?.isEmpty ??
                                                                false)
                                                        ? "\$ 0.00"
                                                        : _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Monthly") ?? false).toList().isEmpty ?? true
                                                            ? "\$0.00"
                                                            : "\$${int.parse(_viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Monthly") ?? false).toList()[0].unitAmount.toString() ?? '0') / 100}",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: kBlack,
                                                      fontSize: 12,
                                                    ),
                                                    children: const [
                                                      TextSpan(
                                                        text: " / per month",
                                                        style: TextStyle(
                                                          color: kGrey,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
          );
  }

  Widget getView(int index) {
    switch (index) {
      case 0:
        return !_viewModel.loading
            ? UserPublicPostsView(
                isSelfProfile: widget.isSelfProfile ?? false,
                userId: widget.userId ?? "",
              )
            : Padding(
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
              );
      case 1:
        return !_viewModel.loading
            ? UserPremiumPostsView(
                userId: widget.userId ?? "",
              )
            : Padding(
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
              );
      case 2:
        return !_viewModel.loading
            ? const MemberOfListView()
            : Padding(
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
              );

      default:
        return const PostCard();
    }
  }

  // Future<void> getImagePalette(ImageProvider imageProvider) async {
  //   final PaletteGenerator paletteGenerator =
  //       await PaletteGenerator.fromImageProvider(imageProvider);
  //   imageBrightness = estimateBrightnessForColor(
  //     paletteGenerator.dominantColor?.color ?? Colors.black,
  //   );

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
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(
    AppRoute appRoute, {
    Map<String, String>? params,
  }) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
