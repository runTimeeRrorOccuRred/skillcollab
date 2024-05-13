import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';

class FilterBottomSheet extends ConsumerStatefulWidget {
  final int dashboardIndex;
  const FilterBottomSheet({
    super.key,
    required this.dashboardIndex,
  });

  @override
  ConsumerState<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends ConsumerState<FilterBottomSheet> {

  // int feedsFilterIndex = 0;
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> feedsFilterList = {
      "New": "new",
      "Top": "Top",
      "Comment Count": "commentCount",
    };

    final Map<String, dynamic> timeFilterList = {
      "All Time": "allTime",
      "Past hour": "pastHour",
      "Today": "today",
      "Past week": "pastWeek",
      "Past month": "pastMonth",
      "Past Year": "pastYear",
    };

    return DefaultTabController(
      length: 2,
      child: Container(
        height: 500.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Filter",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 42),
                TabBar(
                  onTap: (value) {
                    setState(() {
                      tabIndex = value;
                    });
                  },
                  indicatorSize: TabBarIndicatorSize.tab,
                  padding: EdgeInsets.zero,
                  indicatorColor: primaryColor,
                  labelColor: primaryColor,
                  unselectedLabelColor: kGrey,
                  indicator: const HalfCircleTabIndicator(
                    color:
                        primaryColor, // Change this to the desired indicator color
                  ),
                  tabs: const [
                    Tab(
                      text: "Feeds",
                    ),
                    Tab(
                      text: "Time",
                    ),
                  ],
                ),
                Container(
                  color: Colors.black.withOpacity(0.2),
                  width: double.infinity,
                  height: 1,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          gapH16,
                          ...List.generate(
                            feedsFilterList.length,
                            (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  ref.read(dashboardViewModel).setFeedFilterIndex(index);
                                  Logger.printError(ref
                                      .watch(dashboardViewModel)
                                      .feedFilterIndex
                                      .toString(),);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, top: 8, bottom: 8,),
                                child: Row(
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: ref.watch(dashboardViewModel).feedFilterIndex == index
                                            ? primaryColor
                                            : Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: primaryColor),
                                      ),
                                      child: ref.watch(dashboardViewModel).feedFilterIndex != index
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
                                      feedsFilterList.keys.elementAt(index),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: ref.watch(dashboardViewModel).feedFilterIndex != index
                                            ? FontWeight.w500
                                            : FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          gapH16,
                          ...List.generate(
                            timeFilterList.length,
                            (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  ref.read(dashboardViewModel).setTimeFilterIndex(index);
                                  Logger.printError(ref
                                      .read(dashboardViewModel)
                                      .timeFilterIndex
                                      .toString(),);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, top: 8, bottom: 8,),
                                child: Row(
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: ref.read(dashboardViewModel).timeFilterIndex == index
                                            ? primaryColor
                                            : Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: primaryColor),
                                      ),
                                      child: ref.read(dashboardViewModel).timeFilterIndex != index
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
                                      timeFilterList.keys.elementAt(index),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: ref.read(dashboardViewModel).timeFilterIndex != index
                                            ? FontWeight.w500
                                            : FontWeight.w600,
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "Cancel",
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          showShadow: false,
                          textColor: const Color(0xFF5D5D5D),
                          color: const Color(0xFFC4C4C4),
                        ),
                      ),
                      gapW16,
                      Expanded(
                        child: CustomButton(
                          text: "Save Changes",
                          onTap: () async {
                              Logger.printInfo(timeFilterList.values.elementAt(ref.read(dashboardViewModel).timeFilterIndex));
                              Logger.printInfo(feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex));

                              ref.read(dashboardViewModel).clearAllDataList();

                              final GetAllGroupsAndPeopleWithLoginRequestModel getAllGroupsAndPeopleWithLoginRequestModel = GetAllGroupsAndPeopleWithLoginRequestModel(
                                searchKey: "",
                                timeFilter: timeFilterList.values.elementAt(ref.read(dashboardViewModel).timeFilterIndex),
                                interests: '',
                                feedFilter: feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex),
                              );

                              // Logger.printSuccess(getAllGroupsAndPeopleWithLoginRequestModel.toString());

                              ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                                    context,
                                    getAllGroupsAndPeopleWithLoginRequestModel,
                                    ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                                    ref.read(dashboardViewModel).pageNumber,
                                  );

                              //! Refreshing the People Tab data
                              ref.read(dashboardViewModel).clearPeopleDataList();
                              ref
                                  .read(dashboardViewModel)
                                  .getAllPeopleWithLogin(
                                      context,
                                      GetAllPeopleWithLoginRequestModel(
                                        interests: '',
                                        searchKey: '',
                                        timeFilter: timeFilterList.values.elementAt(ref.read(dashboardViewModel).timeFilterIndex),
                                        feedFilter: feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex),  
                                      ),
                                      ref.read(dashboardViewModel).allPeoplePageSize,
                                      ref.read(dashboardViewModel).peoplePageNumber,
                                  );                                  

                              //! Refreshing the People Tab data
                              ref.read(dashboardViewModel).clearGroupDataList();
                              ref.read(dashboardViewModel)
                                  .getPublicPosts(
                                    context, 
                                    GetPublicPostsRequestModel(
                                      searchKey: '', 
                                      interests: '', 
                                      timeFilter: timeFilterList.values.elementAt(ref.read(dashboardViewModel).timeFilterIndex),
                                      feedFilter: feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex),
                                    ), 
                                    ref.watch(dashboardViewModel).allGroupsAndPeoplePageSize, 
                                    ref.watch(dashboardViewModel).groupPageNumber,
                                  );

                              Navigator.of(context).pop();

                            // if (widget.dashboardIndex == 0) {
                            //   ref.read(dashboardViewModel).clearAllDataList();

                            //   final GetAllGroupsAndPeopleWithLoginRequestModel
                            //       getAllGroupsAndPeopleWithLoginRequestModel =
                            //       GetAllGroupsAndPeopleWithLoginRequestModel(
                            //     searchKey: "",
                            //     timeFilter: timeFilterList.values.elementAt(ref.read(dashboardViewModel).timeFilterIndex),
                            //     interests: '',
                            //     feedFilter: feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex),
                            //   );

                            //   // Logger.printSuccess(getAllGroupsAndPeopleWithLoginRequestModel.toString());

                            //   ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                            //         context,
                            //         getAllGroupsAndPeopleWithLoginRequestModel,
                            //         ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                            //         ref.read(dashboardViewModel).pageNumber,
                            //       );

                            //   //! Refreshing the People Tab data
                            //   ref.read(dashboardViewModel).clearPeopleDataList();
                            //   ref
                            //       .read(dashboardViewModel)
                            //       .getAllPeopleWithLogin(
                            //           context,
                            //           GetAllPeopleWithLoginRequestModel(
                            //             interests: '',
                            //             searchKey: '',
                            //             timeFilter: timeFilterList.values.elementAt(0),
                            //             feedFilter: feedsFilterList.values.elementAt(0),  
                            //           ),
                            //           ref.read(dashboardViewModel).allPeoplePageSize,
                            //           ref.read(dashboardViewModel).peoplePageNumber,
                            //       );                                  

                            //   //! Refreshing the People Tab data
                            //   ref.read(dashboardViewModel).clearGroupDataList();
                            //   ref.read(dashboardViewModel)
                            //       .getPublicPosts(
                            //         context, 
                            //         GetPublicPostsRequestModel(
                            //           searchKey: '', 
                            //           interests: '', 
                            //           timeFilter: timeFilterList.values.elementAt(0), 
                            //           feedFilter: feedsFilterList.values.elementAt(0),
                            //         ), 
                            //         ref.watch(dashboardViewModel).allGroupsAndPeoplePageSize, 
                            //         ref.watch(dashboardViewModel).groupPageNumber,
                            //       );

                            //   Navigator.of(context).pop();
                            // } else if (widget.dashboardIndex == 1) {
                            //   ref.read(dashboardViewModel).clearPeopleDataList();

                            //   ref
                            //       .read(dashboardViewModel)
                            //       .getAllPeopleWithLogin(
                            //           context,
                            //           GetAllPeopleWithLoginRequestModel(
                            //             interests: '',
                            //             searchKey: '',
                            //             timeFilter: timeFilterList.values
                            //                 .elementAt(ref
                            //                     .read(dashboardViewModel)
                            //                     .timeFilterIndex,),
                            //             feedFilter: feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex),  
                            //           ),
                            //           ref.read(dashboardViewModel).allPeoplePageSize,
                            //           ref.read(dashboardViewModel).peoplePageNumber,
                            //             );
                            //   Navigator.of(context).pop();
                            // } else if (widget.dashboardIndex == 2) {
                            //   ref.read(dashboardViewModel).clearGroupDataList();
                              
                            //   ref.read(dashboardViewModel)
                            //       .getPublicPosts(
                            //         context, 
                            //         GetPublicPostsRequestModel(
                            //           searchKey: '', 
                            //           interests: '', 
                            //           timeFilter: timeFilterList.values
                            //                 .elementAt(ref
                            //                     .read(dashboardViewModel)
                            //                     .timeFilterIndex,), 
                            //           feedFilter: feedsFilterList.values.elementAt(ref.read(dashboardViewModel).feedFilterIndex),
                            //         ), 
                            //         ref.watch(dashboardViewModel).allGroupsAndPeoplePageSize, 
                            //         ref.watch(dashboardViewModel).groupPageNumber,
                            //       );
                            //   Navigator.of(context).pop();
                            // } else {
                            //   Navigator.of(context).pop();
                            // }
                            // // GetPublicPostsRequestModel
                            // //     getPublicPostsRequestModel =
                            // //     GetPublicPostsRequestModel(
                            // //         interests: '',
                            // //         searchKey: '',
                            // //         timeFilter: timeFilterList.values
                            // //             .elementAt(timeFilterIndex));

                            // // ref.read(dashboardViewModel).getPublicPosts(
                            // //     context, getPublicPostsRequestModel);

                            // // Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                gapH16,
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 28, right: 16),
                child: Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
