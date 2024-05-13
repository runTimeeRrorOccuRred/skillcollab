// ignore_for_file: library_prefixes, prefer_if_elements_to_conditional_expressions, unused_import, prefer_is_empty, always_declare_return_types, avoid_print, avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/homeView/filter_bottomsheet.dart';
import 'package:skill_colab/view/screens/search/groups/groups_search_view.dart';
import 'package:skill_colab/view/screens/search/interests/interests_search_view.dart';
import 'package:skill_colab/view/screens/search/people/people_search_view.dart';
import 'package:skill_colab/view/screens/search/public_posts/public_posts_view.dart';
import 'package:skill_colab/view/screens/search/search_filter_bottom_sheet.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';
import 'package:skill_colab/view/screens/search/tags/tags_search_view.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> with BaseScreenView, SingleTickerProviderStateMixin {
  late TabController _tabController;

  late SearchViewModel _viewModel;
  int tabIndex = 0;
  Timer? _debounce;
  // final RefreshController _refreshController = RefreshController();

  _onSearchChanged(String query, int indexValue) {
    ref.read(searchViewModel).resetPageNumber();
    _viewModel.clearAllDataList();
    if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 500), () {
        if (query.length > 2) {
          print(query);                  

          if(indexValue == 0) {
            _viewModel.getAllGroupsAndPeopleWithLogin(
                context,
                GetAllGroupsAndPeopleWithLoginRequestModel(
                  feedFilter: 'New',
                  interests: '',
                  searchKey: query,
                  timeFilter: 'allTime',
                ),
                10,
                _viewModel.allDataPageNumber,
                load: false,
            ); 
          } else if(indexValue == 1) {
            _viewModel.getAllPeople(
                context,
                AllPeopleRequestModel(interests: '', searchKey: query, timeFilter: "allTime"),
                load: false,
            );
          } else if(indexValue == 2) {
            _viewModel.getAllGroup(
              context,
              AllGroupRequestModel(interests: '', searchKey: query, timeFilter: "allTime"),
              load: false,
            );  
          }
        }

        if (query.length < 3) {
          _viewModel.clearData();
          _viewModel.resetPageNumber();
          _viewModel.clearAllDataList();
        }
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _viewModel = ref.read(searchViewModel)..attachView(this);    
    _viewModel.clearSearch();
    _tabController.addListener(() {
        if(_viewModel.searchController.text.length > 2) {
          if(_tabController.index == 0) {
            _viewModel.getAllGroupsAndPeopleWithLogin(
                context,
                GetAllGroupsAndPeopleWithLoginRequestModel(
                  feedFilter: 'New',
                  interests: '',
                  searchKey: _viewModel.searchController.text,
                  timeFilter: 'allTime',
                ),
                10,
                _viewModel.allDataPageNumber,
                load: false,
            );  
          } else if(_tabController.index == 1) {
            _viewModel.getAllPeople(
                context,
                AllPeopleRequestModel(interests: '', searchKey: _viewModel.searchController.text, timeFilter: "allTime"),
                load: false,
            );
          } else if(_tabController.index == 2) {
            _viewModel.getAllGroup(
              context,
              AllGroupRequestModel(interests: '', searchKey: _viewModel.searchController.text, timeFilter: "allTime"),
              load: false,
            );
          }
        }
      }
    );
    // _viewModel.getPublicPosts(
    //     context,
    //     const GetPublicPostsRequestModel(
    //         interests: "", searchKey: "", timeFilter: "allTime"),
    //     load: false);
    // ref.read(dashboardViewModel).getAllPeopleWithLogin(
    //       context,
    //       const GetAllPeopleWithLoginRequestModel(
    //           interests: '', searchKey: '', timeFilter: 'allTime'),
    //       ref.read(dashboardViewModel).allPeoplePageSize,
    //     );
    // _viewModel.getAllPeople(context, const AllPeopleRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'));
    // _viewModel.getAllGroup(context, const AllGroupRequestModel(interests: '', searchKey: '', timeFilter: 'allTime'));
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(searchViewModel);
    return PopScope(
      canPop: false,
          
      onPopInvoked: (val) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        }
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          // resizeToAvoidBottomInset: true,
          appBar: AppBar(
            backgroundColor: kWhite,
            elevation: 0.5,
            title: Container(
              height: 42,
              padding: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: const Color(0xffF3F5F6),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: _viewModel.searchController,
                
                onChanged: (value) => _onSearchChanged(value, tabIndex),
                style: const TextStyle(
                    fontSize: 12, color: kGrey, fontWeight: FontWeight.w600,),
                enabled: AppConstants.usertype == 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "Search...",
                  hintStyle: const TextStyle(
                      fontSize: 12, color: kGrey, fontWeight: FontWeight.w600,),
                  suffixIcon: Image.asset(
                    "assets/icons/search_bar_icon.png",
                  ),
                ),
              ),
            ),
            leadingWidth: 46.5,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: () {
                  if (AppConstants.usertype == 1) {
                    navigateToScreen(AppRoute.myGroupsView);
                  } else {
                    guestLoginRequestDialog(
                        context, "to get into the menu section",);
                  }
                },
                child: SvgPicture.asset(
                  'assets/icons/drawerIcon.svg',
                ),
              ),
            ),
            actions: [
              Visibility(
                visible: _viewModel.searchController.text.length > 2 && tabIndex == 0,
                child: InkWell(
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
                        builder: (context) => SearchFilterBottomSheet(
                          searchText: _viewModel.searchController.text,
                          tabBarIndex: tabIndex,
                        ),
                      );
                    } else {
                      guestLoginRequestDialog(context, "to filter the posts/people/groups",);
                    }
                  },
                  child: SvgPicture.asset(
                    'assets/icons/setting.svg',
                    height: 40,
                  ),
                ),
              ),
              gapW10,
            ],
            bottom: TabBar(
              indicatorColor: primaryColor,
              labelColor: primaryColor,
              unselectedLabelColor: kGrey,
              isScrollable: true,
              indicator: const HalfCircleTabIndicator(
                color: primaryColor, // Change this to the desired indicator color
              ),
              controller: _tabController,
              enableFeedback: true,
              onTap: (value) {
                setState(() {
                  tabIndex = value;
                });
      
                if(_viewModel.searchController.text.length > 2) {
                  switch(value) {
                    case 0:
                      _viewModel.getAllGroupsAndPeopleWithLogin(
                          context,
                          GetAllGroupsAndPeopleWithLoginRequestModel(
                            feedFilter: 'New',
                            interests: '',
                            searchKey: _viewModel.searchController.text,
                            timeFilter: 'allTime',
                          ),
                          10,
                          _viewModel.allDataPageNumber,
                          load: false,
                      ); 
                      break;
                    case 1:
                      _viewModel.getAllPeople(
                          context,
                          AllPeopleRequestModel(interests: '', searchKey: _viewModel.searchController.text, timeFilter: "allTime"),
                          load: false,
                      );
                      break;
                    case 2:
                      _viewModel.getAllGroup(
                        context,
                        AllGroupRequestModel(interests: '', searchKey: _viewModel.searchController.text, timeFilter: "allTime"),
                        load: false,
                      );   
                      break;                    
                  }
                }
              },
              tabs: [
                IgnorePointer(
                  ignoring: AppConstants.usertype == 0,
                  child: const Tab(
                    text: "Public Posts",
                  ),
                ),
                IgnorePointer(
                  ignoring: AppConstants.usertype == 0,
                  child: const Tab(
                    text: "People",
                  ),
                ),
                IgnorePointer(
                  ignoring: AppConstants.usertype == 0,
                  child: const Tab(
                    text: "Groups",
                  ),
                ),
                IgnorePointer(
                  ignoring: AppConstants.usertype == 0,
                  child: const Tab(
                    text: "Tags",
                  ),
                ),
              ],
            ),
          ),
          body: AppConstants.usertype == 0
              ? GuestLoginRequestWidget(
                  text: "to search",
                )
              : TabBarView(
               
                  controller: _tabController,
                  children: [
                    //! Public Posts tab
                    _viewModel.loading
                        ? const Center(
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                        : (_viewModel.allDataList.length) == 0
                            ? SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  _viewModel.searchController.text.isEmpty 
                                    ? 'Search posts' 
                                    : (_viewModel.allDataList.length) == 0
                                      ? "Not found :( We're still looking"
                                      : '',
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w700,),
                                ),
                              ),
                            )
                            : Container(
                                child: const SearchPublicPostsView(),
                              ),
                      //! People tab
                      _viewModel.loading
                        ? const Center(
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                        : (_viewModel.allPeopleResponseModel.data?.length ?? 0) == 0
                            ? SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  _viewModel.searchController.text.isEmpty 
                                    ? 'Search people' 
                                    : (_viewModel.allPeopleResponseModel.data?.length ?? 0) == 0
                                        ? "Not found :( We're still looking"
                                        : '',
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w700,),
                                ),
                              ),
                            )
                            : Container(
                                child: const PeopleSearchView(),
                              ),
                      //! Groups tab
                      _viewModel.loading
                        ? const Center(
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                        : (_viewModel.allGroupResponseModel.data?.length ?? 0) == 0
                            ? SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  _viewModel.searchController.text.isEmpty 
                                    ? 'Search groups' 
                                    : (_viewModel.allGroupResponseModel.data?.length ?? 0) == 0
                                      ? "Not found :( We're still looking"
                                      : '',
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w700,),
                                ),
                              ),
                            )
                            : Container(
                                child: const GroupsSearchView(),
                              ),
                    // const InterestsSearchView(),
                    const TagsSearchView(),
                  ],
                ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushNamed(appRoute.name);
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }

// Future<void> onRefresh()async{
//    const GetPublicPostsRequestModel getPublicPostsRequestModel = GetPublicPostsRequestModel(interests: "", searchKey: "", timeFilter: "allTime");
//         await _viewModel.getPublicPosts(context, getPublicPostsRequestModel, load: false);
//         Future.delayed(const Duration(seconds: 2), () {
//           _refreshController.refreshCompleted();
//         });
// }

  //============= POSTS VIEW LIST =============//
  // Widget postsView() {
  //   Logger.printWarning(
  //       _viewModel.publicPostsResponseModel.data?.length.toString() ?? "");
    
  // }
}
