// ignore_for_file: prefer_if_elements_to_conditional_expressions, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsWithLogin/models/get_all_groups_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsAndPeopleWithoutLogin/models/get_all_groups_and_people_without_login_model.dart';
// import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllPeopleWithoutLogin/models/get_all_people_without_login_model.dart';
// import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
// import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_model.dart';
// import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart' as publicPostModel;
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/bottom_navigation_provider.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/all/dashboard_all_view.dart';
// import 'package:skill_colab/view/screens/homeView/dashboard_widgets/all/dashboard_all_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/group/dashboard_groups_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/people/dashboard_people_view.dart';
import 'package:skill_colab/view/screens/homeView/filter_bottomsheet.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
// import 'package:skill_colab/view/screens/search/search_view_model.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView>
    with BaseScreenView {
  late DashboardViewModel _viewModel;
  // late SearchViewModel _searchViewModel;

  bool like = false;
  bool dislike = false;
  int tabIndex = 0;
  double _appBarHeight = 100.0; // Initial AppBar height
  // double _lastScrollOffset = 0.0; // Track the last scroll position

  // final RefreshController _refreshController = RefreshController();

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(dashboardViewModel);
      _viewModel.attachView(this);

      _viewModel.getPublicPosts(
        context,
        const GetPublicPostsRequestModel(
            searchKey: '',
            interests: '',
            timeFilter: "allTime",
            feedFilter: 'New',),
        _viewModel.allGroupsPageSize,
        _viewModel.groupPageNumber,
      );

      if (AppConstants.usertype == 0) {
        _viewModel.getAllGroupsAndPeopleWithoutLogin(
          context,
          const GetAllGroupsAndPeopleWithoutLoginRequestModel(
              interests: '', searchKey: '', timeFilter: 'allTime',),
          _viewModel.allGroupsAndPeoplePageSize,
        );
        _viewModel.getAllPeopleWithoutLogin(
          context,
          const GetAllPeopleWithoutLoginRequestModel(
            interests: '',
            searchKey: '',
            timeFilter: 'allTime',
          ),
          _viewModel.allPeoplePageSize,
        );
        // _viewModel.getAllGroupsWithoutLogin(
        //     context,
        //     const GetAllGroupsWithoutLoginRequestModel(
        //         interests: '', searchKey: '', timeFilter: 'allTime',),
        //     _viewModel.allGroupsPageSize,);
      } else {
        _viewModel.getAllGroupsAndPeopleWithLogin(
          context,
          const GetAllGroupsAndPeopleWithLoginRequestModel(
            interests: '',
            searchKey: '',
            timeFilter: 'allTime',
          ),
          _viewModel.allGroupsAndPeoplePageSize,
          _viewModel.pageNumber,
          isDefault: true,
        );

        _viewModel.getAllPeopleWithLogin(
          context,
          const GetAllPeopleWithLoginRequestModel(
            interests: '',
            searchKey: '',
            timeFilter: 'allTime',
          ),
          _viewModel.allPeoplePageSize,
          _viewModel.peoplePageNumber,
          isDefault: true,
        );
        _viewModel.getAllGroupsWithLogin(
          context,
          const GetAllGroupsWithLoginRequestModel(
            interests: '',
            searchKey: '',
            timeFilter: 'allTime',
          ),
          _viewModel.allGroupsPageSize,
          isDefault: true,
        );

        Logger.printInfo("user id self =======> ${AppConstants.userId}");

        ref.read(userProfileViewModel).getUserById(context, AppConstants.userId);

        ref.read(userProfileViewModel).getPostsByUserId(
            context,
            const GetPostsByUserIdRequestModel(
                searchKey: "",
                interests: "",
                timeFilter: "allTime",
                privacy: "public",),
            AppConstants.userId,);
      }
      // _viewModel.getPublicPosts(context, const publicPostModel.GetPublicPostsRequestModel(interests: "", searchKey: "", timeFilter: "allTime"));
    });

    _scrollController.addListener(() {
      // print(_scrollController.position.pixels);
      // print(_scrollController.positions);

      final double direction = _scrollController.position.userScrollDirection ==
              ScrollDirection.forward
          ? -1.0
          : 1.0;

      ref.watch(bottomNavigationProvider).animateBottomNavigator(direction);

      if (tabIndex == 0) {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          print("check");
          ref.read(dashboardViewModel).incrementPageNumber();
          if (AppConstants.usertype == 0) {
            // ref.read(dashboardViewModel).getAllGroupsAndPeopleWithoutLogin(context, ref.read(dashboardViewModel).allGroupsAndPeoplePageSize, load: false);
          } else {
            ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                  context,
                  const GetAllGroupsAndPeopleWithLoginRequestModel(
                      interests: '', searchKey: '', timeFilter: 'allTime',),
                  ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                  ref.read(dashboardViewModel).pageNumber,
                  load: false,
                );
          }
        }
      } else if (tabIndex == 1) {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          // ignore: avoid_print
          print("check");
          ref.read(dashboardViewModel).incrementPeoplePageNumber();
          if (AppConstants.usertype == 0) {
            // ref.read(dashboardViewModel).getAllPeopleWithoutLogin(
            //   context,
            //   const GetAllPeopleWithoutLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
            //   ref.read(dashboardViewModel).allPeoplePageSize,
            //   load: false
            // );
          } else {
            ref.read(dashboardViewModel).getAllPeopleWithLogin(
                  context,
                  const GetAllPeopleWithLoginRequestModel(
                    interests: '',
                    searchKey: '',
                    timeFilter: 'allTime',
                  ),
                  ref.read(dashboardViewModel).allPeoplePageSize,
                  ref.watch(dashboardViewModel).peoplePageNumber,
                  load: false,
                );
          }
        }
      } else {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          ref.read(dashboardViewModel).incrementGroupPageNumber();
          if (AppConstants.usertype == 0) {
            // ref.read(dashboardViewModel).getAllGroupsWithoutLogin(
            //   context,
            //   const GetAllGroupsWithoutLoginRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'),
            //   ref.read(dashboardViewModel).allGroupsPageSize,
            //   load: false
            // );
          } else {
            ref.read(dashboardViewModel).getPublicPosts(
                  context,
                  const GetPublicPostsRequestModel(
                      interests: '',
                      searchKey: '',
                      timeFilter: 'allTime',
                      feedFilter: '',),
                  ref.watch(dashboardViewModel).allGroupsAndPeoplePageSize,
                  ref.read(dashboardViewModel).groupPageNumber,
                  load: false,
                );
          }
        }
      }

      //! APPBAR ANIMATION
      // Detect scroll direction
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        // Scrolling down
        setState(() {
          _appBarHeight -= 5;
          if (_appBarHeight < 47.0) {
            _appBarHeight = 47.0; // Minimum AppBar height
          }
        });
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        // Scrolling up
        setState(() {
          _appBarHeight += 5;
          // Reset AppBar height to 100 when scrolling up
          if (_appBarHeight > 100) {
            _appBarHeight = 100.0;
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(dashboardViewModel);
    // final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(_appBarHeight),
          child: OverflowBox(
            child: AnimatedContainer(
              // transform: Matrix4.translationValues(0, _scrollController.offset, 0),
              duration: const Duration(milliseconds: 300),
              // height: _appBarHeight,
              child: AppBar(
                // snap: true,
                // floating: true,
                // pinned: true,
                centerTitle: true,
                surfaceTintColor: Colors.white,
                foregroundColor: Colors.white,
                backgroundColor: Colors.white,
                title: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/logo_full_high_res.png",
                    height: 35.h,
                  ),
                ),
                leading: InkWell(
                  onTap: () {
                    if (AppConstants.usertype == 1) {
                      navigateToScreen(AppRoute.myGroupsView);
                    } else {
                      guestLoginRequestDialog(
                        context,
                        "to get into the menu section",
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      'assets/icons/drawerIcon.svg',
                    ),
                  ),
                ),
                bottom: TabBar(
                  indicatorColor: primaryColor,
                  labelColor: primaryColor,
                  unselectedLabelColor: kGrey,
                  dividerColor: Colors.transparent,
                  // isScrollable: true,
                  onTap: (value) {
                    setState(() {
                      tabIndex = value;
                      _appBarHeight = 100;
                      // if(_scrollController.hasClients) {
                      //   _scrollController.jumpTo(_scrollController.position.minScrollExtent);
                      // }
                    });
                  },
                  indicator: const HalfCircleTabIndicator(
                    color:
                        primaryColor, // Change this to the desired indicator color
                  ),
                  tabs: const [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "People",
                    ),
                    Tab(
                      text: "Groups",
                    ),
                  ],
                ),
                actions: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (AppConstants.usertype == 1) {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              builder: (context) => FilterBottomSheet(
                                dashboardIndex: tabIndex,
                              ),
                            );
                          } else {
                            guestLoginRequestDialog(
                              context,
                              "to filter the posts/people/groups",
                            );
                          }
                        },
                        child: SvgPicture.asset(
                          'assets/icons/setting.svg',
                          height: 35,
                        ),
                      ),
                      gapW10,
                      InkWell(
                        onTap: () {
                          if (AppConstants.usertype == 1) {
                            context.pushNamed(
                              AppRoute.profileView.name,
                              extra: {
                                "userId": AppConstants.userId,
                                "isSelfProfile": true,
                              },
                            );
                          } else {
                            guestLoginRequestDialog(
                                context, "to edit your profile",);
                          }
                        },
                        child: Container(
                          height: 28.h,
                          width: 28.h,
                          padding: AppConstants.usertype == 0
                              ? const EdgeInsets.all(8)
                              : null,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[100],
                          ),
                          child: AppConstants.usertype == 0
                              ? SvgPicture.asset(
                                  'assets/icons/account-pic.svg',
                                )
                              : ((ref
                                                  .watch(selfDataProvider)
                                                  .singleUserResponseModel
                                                  .data
                                                  ?.profilePhoto ??
                                              "") ==
                                          "" ||
                                      !(ref
                                              .watch(selfDataProvider)
                                              .singleUserResponseModel
                                              .data
                                              ?.profilePhoto
                                              ?.contains(
                                                  "https://skillcollab",) ??
                                          true))
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        'assets/icons/account-pic.svg',
                                      ),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(14.h),
                                      child: Image.network(
                                        ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? "",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                          // CircleAvatar(
                          //     backgroundImage: NetworkImage(ref.watch(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? "",),
                          //     backgroundColor: kWhite,
                          //   ),
                        ),
                      ),
                      gapW10,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: tabIndex == 0
                  // ignore: unrelated_type_equality_checks
                  ? AppConstants.usertype == 1
                      ? Container(
                          child: _viewModel.allLoader
                              ? shimmerWidgets()
                              : _viewModel.allDataList.isEmpty ? const SizedBox(
                                    child: Center(child: Text("No Post Found")),
                                  ) : DashboardAllView(
                                  parentScrollController: _scrollController,
                                ),
                        )
                      : Container(
                          child: _viewModel.loading
                              ? shimmerWidgets()
                              : DashboardAllView(
                                  parentScrollController: _scrollController,
                                ),
                        )
                  : tabIndex == 1
                      ? AppConstants.usertype == 1
                          ? Container(
                              child: _viewModel.peopleLoader 
                                  ? shimmerWidgets()
                                  : _viewModel.peopleDataList.isEmpty ? const SizedBox(
                                    child: Center(child: Text("No Post Found")),
                                  ) : DashboardPeopleView(
                                      parentScrollController: _scrollController,
                                    ),
                            )
                          : Container(
                              child: _viewModel.loading
                                  ? shimmerWidgets()
                                  : DashboardPeopleView(
                                      parentScrollController: _scrollController,
                                    ),
                            )
                      : AppConstants.usertype == 1
                          ? Container(
                              child: _viewModel.groupLoader 
                                  ? shimmerWidgets()
                                  : _viewModel.groupDataList.isEmpty ? const SizedBox(
                                    child: Center(child: Text("No Post Found")),
                                  ) : DashboardGroupsView(
                                      parentScrollController: _scrollController,
                                    ),
                            )
                          : Container(
                              child: _viewModel.groupLoader ||
                                      _viewModel.groupDataList.isEmpty
                                  ? GuestLoginRequestWidget(
                                      text: "to see group post",
                                    )
                                  : DashboardGroupsView(
                                      parentScrollController: _scrollController,
                                    ),
                            ),
            ),
          ],
        ),
        // controller: _scrollController,
        // slivers: [

        //   SliverFillRemaining(
        //     child:
        //   )
        // ],
        // headerSliverBuilder: (context, innerBoxIsScrolled) {
        //   return [

        //   ];
        // },
        // body:
        // ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
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

  Widget shimmerWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          ShimmerContainer(),
          gapH32,
          ShimmerContainer(),
          gapH32,
          ShimmerContainer(),
        ],
      ),
    );
  }

  Widget ShimmerContainer() {
    final size = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey[300],
          ),
          gapW10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: size.width / 1.7,
                color: Colors.grey[300],
              ),
              gapH10,
              Container(
                height: 20,
                width: size.width / 1.7,
                color: Colors.grey,
              ),
              gapH10,
              Container(
                height: 20,
                width: size.width / 4,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HalfCircleTabIndicator extends Decoration {
  final Color color;

  const HalfCircleTabIndicator({required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _HalfCirclePainter(color);
  }
}

class _HalfCirclePainter extends BoxPainter {
  final Color color;

  _HalfCirclePainter(this.color);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint()..color = color;

    // Draw a half circle at the bottom of the selected tab indicator
    final double radius = rect.height / 6;
    final double centerX = rect.center.dx;
    final double centerY = rect.bottom;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      pi,
      pi,
      true,
      paint,
    );
  }
}
