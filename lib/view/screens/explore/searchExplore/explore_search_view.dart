// ignore_for_file: always_declare_return_types, avoid_print, prefer_is_empty, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/all/explore_all_view.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/group/explore_group_view.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/people/explore_people_view.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/publicPosts/explore_public_post_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/homeView/post_card.dart';

class ExploreSearchView extends ConsumerStatefulWidget {
  final List<Interest?> data;
  const ExploreSearchView({super.key, required this.data});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExploreSearchViewState();
}

class _ExploreSearchViewState extends ConsumerState<ExploreSearchView> with BaseScreenView, SingleTickerProviderStateMixin{
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  int index = 0;
  late ExploreSearchViewModel _viewModel;
  Timer? _debounce;
  late LoopPageController _pageController; 

  final ScrollController _scrollController = ScrollController();
  bool isShimmer = true;
  

  List<String> interests = [];
  List<String> name = [];
  _onSearchChanged(String query) {
    ref.read(exploreSearchViewModel).resetPageNumber();
    _viewModel.clearAllDataList();
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if(query.length > 2){
        Logger.printSuccess(ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text).toString());
        if(index == 0){
          _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 2, _viewModel.allDataPageNumber);
        }else if(index == 2){
          _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
        }
        else if(index == 1){
          _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
        }
        else if(index == 3){
          _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
        }
      }
      if (query.length < 3) {
          _viewModel.resetPageNumber();
          _viewModel.clearAllDataList();
          if(index == 0){
            _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 2, _viewModel.allDataPageNumber);
          }else if(index == 2){
            _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
          }
          else if(index == 1){
            _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
          }
          else if(index == 3){
            _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
          }
        }
    });
  }

  
  @override
  void initState() {
    super.initState();
    _pageController = LoopPageController();
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      _viewModel.resetPageNumber();
      _viewModel.clearAllDataList();
      setState(() {});
      if(_tabController.index == 0) {
        setState(() {
          index = 0;
        });
        // _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: widget.searchKey), 2, _viewModel.allDataPageNumber);
      }else if(_tabController.index == 2) {
        setState(() {
          index = 2;
        });
        // _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
      }
      else if(_tabController.index == 1) {
        setState(() {
          index = 1;
        });
        // _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
      }
      else if(_tabController.index == 3) {
        setState(() {
          index = 3;
        });
        // _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
      }
    });

    // _pageController.addListener(() {
    //   final int currentPage = _pageController.page.round() % 4;
    //   _tabController.animateTo(currentPage);
    //   index = currentPage;
    //   setState(() {});
    //   if(currentPage == 0){
    //     _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: widget.searchKey), 2, _viewModel.allDataPageNumber);
    //   }else if(currentPage == 2){
    //     _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
    //   }
    //   else if(currentPage == 1){
    //     _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
    //   }
    //   else if(currentPage == 3){
    //     _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
    //   }
    //   Logger.printError("Current Page: $currentPage");
    // });

    _scrollController.addListener(() {

      Logger.printWarning(ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text).toString());
      
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && index == 0) {
        Logger.printError("end");
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 2, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
      }else if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && index == 1) {
        Logger.printError("end");
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
      }else if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && index == 2) {
        Logger.printError("end");
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
      }else if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && index == 3) {
        Logger.printError("end");
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
      }
    });
    

    for(int i=0; i < widget.data.length; i++){
      interests.add(widget.data[i]?.id ?? '');
      name.add(widget.data[i]?.name ?? '');
    }
    Logger.printSuccess(interests.toString());
      Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          _viewModel = ref.read(exploreSearchViewModel);
          _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 3, _viewModel.allDataPageNumber);
          
        });
        isShimmer = false;
      });
    }); 
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(exploreSearchViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{
            context.pop();
          }
      },
      child: Material(
        child: SafeArea(
          child: DefaultTabController(
            length: 4, 
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (MediaQuery.of(context).viewInsets.bottom > 0) {
                                SystemChannels.textInput.invokeMethod('TextInput.hide');
                              }else{
                                Navigator.of(context).pop();
                              }
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
                          GestureDetector(
                            onTap: () {
                              print(_viewModel.postDataList.length);
                            },
                            child: Text(
                              name.length == 1 ? name.first : "All",
                              style: const TextStyle(
                                fontSize: 16,
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          gapW32
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 42,
                        padding: const EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xffF3F5F6),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: _searchController,
                          onChanged: _onSearchChanged,
                          // (value) {
                          //   if (value.length > 3) {
                              
                          //   }
                          // },
                          style: const TextStyle(
                              fontSize: 12, color: kGrey, fontWeight: FontWeight.w600,),
                          enabled: AppConstants.usertype == 1,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Search...",
                            hintStyle: const TextStyle(
                                fontSize: 12, color: kGrey, 
                                fontWeight: FontWeight.w600,
                            ),
                            suffixIcon: Image.asset(
                              "assets/icons/search_bar_icon.png",
                            ),
                          ),
                        ),
                      ),
                      DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            TabBar(
                              onTap: (value) {
                                setState(() {
                                  index = value;
                                });
                                _viewModel.resetPageNumber();
                                _viewModel.clearAllDataList();
                                setState(() {});
                                if(index == 0){
                                  _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 2, _viewModel.allDataPageNumber);
                                }else if(index == 2){
                                  _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                }
                                else if(index == 1){
                                  _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                }
                                else if(index == 3){
                                  _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                }
                              },
                              controller: _tabController,
                              padding: EdgeInsets.zero,
                              isScrollable: true,
                              tabAlignment: TabAlignment.center,
                              indicatorColor: primaryColor,
                              labelColor: primaryColor,
                              unselectedLabelColor: kGrey,
                              indicator: const HalfCircleTabIndicator(
                                color: primaryColor, // Change this to the desired indicator color
                              ),
                              tabs: const [
                                Tab(
                                  child: Row(
                                    children: [
                                      Text("All"),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Text("Public Posts"),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Text("People"),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Text("Group"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(height: 1, color: Colors.grey.shade200, width: size.width,),
                            if (AppConstants.usertype == 0)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 100),
                                child: GuestLoginRequestWidget(
                                    text: "to see the user's contents",),
                              )
                            else
                              SizedBox(
                              child: Column(
                                children: [
                                  gapH16,
                                  SizedBox(
                                    height: 30.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: name.length, 
                                      itemBuilder: (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(horizontal : 8.0),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal : 8.0, vertical: 4),
                                            decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                            child: Row(
                                              children: [
                                                Text(name[index]),
                                                SizedBox(width: 10.w,),
                                                InkWell(
                                                  onTap: name.length != 1 ? (){
                                                    setState(() {
                                                      name.remove(name[index]);
                                                      interests.remove(interests[index]);
                                                    });
                                                    if(index == 0){
                                                      _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 2, _viewModel.allDataPageNumber);
                                                    }else if(index == 2){
                                                      _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                                    }
                                                    else if(index == 1){
                                                      _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                                    }
                                                    else if(index == 3){
                                                      _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                                    }
                                                  } : (){
                                                    setState(() {
                                                      name.remove(name[index]);
                                                      interests.remove(interests[index]);
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    height: 16,
                                                    width: 16,
                                                    // color: Colors.grey.shade100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey.shade300,
                                                      borderRadius: BorderRadius.circular(50),
                                                    ),
                                                    child: const Center(child: Icon(Icons.close, size: 12, color: kWhite,)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  gapH4,
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height * 0.7,
                                    child: LoopPageView.builder(
                                      controller: _pageController,
                                      itemCount: 4, // Set a large number for looping
                                      itemBuilder: (context, value) {
                
                                        Logger.printWarning(value.toString());
                
                                        if(index == 0){
                                           return isShimmer ? shimmerWidgets()
                                           : !_viewModel.loading ? 
                                           (_viewModel.allDataList.isNotEmpty) 
                                           ? ExploreAllView(interests: interests, searchKey: _searchController.text,) 
                                            :EmptyContainer() 
                                            : shimmerWidgets();
                                        }
                                        else if(index == 1){
                                          return _viewModel.loading
                                            ? shimmerWidgets()
                                            : _viewModel.postDataList.isNotEmpty
                                              ? ExplorePublicPostView(interests: interests, searchKey: _searchController.text,)
                                              : EmptyContainer();
                                        }
                                        else if(index == 2){
                                          return _viewModel.loading
                                            ? shimmerWidgets()
                                            : _viewModel.peopleDataList.isNotEmpty
                                              ? ExplorePeopleView(interests: interests, searchKey: _searchController.text,)
                                              : EmptyContainer();
                                        }
                                        else if(index == 3){
                                          return _viewModel.loading
                                            ? shimmerWidgets()
                                            : _viewModel.groupDataList.isNotEmpty
                                              ? ExploreGroupView(interests: interests, searchKey: _searchController.text,)
                                              : EmptyContainer();
                                        }
                                        return const SizedBox();
                                      },
                                      onPageChanged: (value) {
                                        setState(() {
                                          index = value;
                                        });
                                        _tabController.animateTo(value); 
                                         
                                        _viewModel.resetPageNumber();
                                        _viewModel.clearAllDataList();
                                        if(value == 0){
                                          _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 2, _viewModel.allDataPageNumber);
                                        }else if(value == 2){
                                          _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                        }
                                        else if(value == 1){
                                          _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                        }
                                        else if(value == 3){
                                          _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                        }
                
                                        // final int currentPage = _pageController.page.round() % 4;
                                        //   index = currentPage;
                                        //   setState(() {});
                                        //   if(currentPage == 0){
                                        //     _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: widget.searchKey), 2, _viewModel.allDataPageNumber);
                                        //   }else if(currentPage == 2){
                                        //     _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                        //   }
                                        //   else if(currentPage == 1){
                                        //     _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                        //   }
                                        //   else if(currentPage == 3){
                                        //     _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                        //   }
                                        //   Logger.printError("Current Page: $currentPage");
                                      },
                                      // onPageChanged: (value) {
                                      //   setState(() {
                                      //     index = value;
                                      //   });
                                      //   _viewModel.resetPageNumber();
                                      //   _viewModel.clearAllDataList();
                                      //   setState(() {});
                                      //   if(value == 0){
                                      //     _viewModel.getExploreAll(context, ExplorePeopleRequestModel(interests: interests, searchKey: widget.searchKey), 2, _viewModel.allDataPageNumber);
                                      //   }else if(value == 2){
                                      //     _viewModel.getExplorePeople(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                      //   }
                                      //   else if(value == 1){
                                      //     _viewModel.getExplorePost(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                      //   }
                                      //   else if(value == 3){
                                      //     _viewModel.getExploreGroup(context, ExplorePeopleRequestModel(interests: interests, searchKey: _searchController.text), 5, _viewModel.allDataPageNumber);
                                      //   }
                                      // },
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getView(int index, List<String> interests) {
    switch (index) {
      case 0:
        return !_viewModel.loading
            ? (_viewModel.allDataList.isNotEmpty) ? ExploreAllView(interests: interests, searchKey: _searchController.text,) 
            :SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(
                child: Text( (_viewModel.allDataList.length) == 0
                      ? "Fetching Data :( We're still looking"
                      : '',
                  style: const TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,),
                ),
              ),
            )
            : Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.3,
                  ),
                  const CircularProgressIndicator(
                    color: primaryColor,
                  ),
                ],
              );
      case 1:
        // return Container(height: 300, width: MediaQuery.of(context).size.width, color: Colors.green,);
        return !_viewModel.loading
            ? (_viewModel.postDataList.isNotEmpty) ?  ExplorePublicPostView(interests: interests, searchKey: _searchController.text) 
            :SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(
                child: Text( (_viewModel.postDataList.length) == 0
                      ? "Fetching Data :( We're still looking"
                      : '',
                  style: const TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,),
                ),
              ),
            )
            : const Column(
                children: [
                  gapH60,
                  gapH20,
                  CircularProgressIndicator(
                    color: primaryColor,
                  ),
                ],
              );
      case 2:
        return !_viewModel.loading
            ? 
            (_viewModel.peopleDataList.isNotEmpty) ?  ExplorePeopleView(interests: interests, searchKey: _searchController.text,)
            :SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(
                child: Text( (_viewModel.peopleDataList.length) == 0
                      ? "Fetching Data :( We're still looking"
                      : '',
                  style: const TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,),
                ),
              ),
            )
            : Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                ),
                const CircularProgressIndicator(
                  color: primaryColor,
                ),
              ],
            );
      case 3:
        return !_viewModel.loading
            ? (_viewModel.groupDataList.isNotEmpty) 
            ?  ExploreGroupView(interests: interests, searchKey: _searchController.text,)
            : shimmerWidgets()
            : shimmerWidgets();

      default:
        return const PostCard();
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

  Widget EmptyContainer() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No Data :)', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),),
      ],
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
                width: size.width / 2,
                color: Colors.grey[300],
              ),
              gapH10,
              Container(
                height: 20,
                width: size.width / 2,
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
