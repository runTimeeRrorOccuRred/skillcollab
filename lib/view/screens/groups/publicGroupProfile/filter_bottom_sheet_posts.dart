import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';

class FilterBottomSheetPosts extends ConsumerStatefulWidget {
  final String groupId;
  const FilterBottomSheetPosts({
    required this.groupId,
    super.key,
  });

  @override
  ConsumerState<FilterBottomSheetPosts> createState() => _FilterBottomSheetPostsState();
}

class _FilterBottomSheetPostsState extends ConsumerState<FilterBottomSheetPosts> {
  int feedsFilterIndex = 2;
  int timeFilterIndex = 0;

  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> feedsFilterList = [
      "Most Relevant",
      "Hot",
      "New",
      "Top",
      "Comment Count",
    ];

    final Map<String, dynamic> timeFilterList = {
      "All Time": "allTime",
      "Past hour": "pastHour",
      "Today": "today",
      "Past week": "pastWeel",
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
                                  feedsFilterIndex = index;
                                  Logger.printError(
                                      feedsFilterIndex.toString(),);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, top: 8, bottom: 8,),
                                child: Row(
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: feedsFilterIndex == index
                                            ? primaryColor
                                            : Colors.white,
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
                                        fontWeight: feedsFilterIndex != index
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
                                  timeFilterIndex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, top: 8, bottom: 8,),
                                child: Row(
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: timeFilterIndex ==
                                                index
                                            ? primaryColor
                                            : Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: primaryColor),
                                      ),
                                      child: timeFilterIndex != index
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
                                        fontWeight: timeFilterIndex !=
                                                index
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
                          onTap: () {
                            // if (widget.dashboardIndex == 0) {
                            //   final GetAllGroupsAndPeopleWithLoginRequestModel
                            //       getAllGroupsAndPeopleWithLoginRequestModel =
                            //       GetAllGroupsAndPeopleWithLoginRequestModel(
                            //     searchKey: "",
                            //     timeFilter: timeFilterList.values.elementAt(ref
                            //         .read(dashboardViewModel)
                            //         .timeFilterIndex),
                            //     interests: '',
                            //   );

                            //   ref
                            //       .read(dashboardViewModel)
                            //       .getAllGroupsAndPeopleWithLogin(
                            //         context,
                            //         getAllGroupsAndPeopleWithLoginRequestModel,
                            //         ref
                            //             .read(dashboardViewModel)
                            //             .allGroupsAndPeoplePageSize,
                            //       );

                            //   Navigator.of(context).pop();
                            // } else if (widget.dashboardIndex == 1) {
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
                            //                     .timeFilterIndex),
                            //           ),
                            //           ref
                            //               .read(dashboardViewModel)
                            //               .allPeoplePageSize);
                            //   Navigator.of(context).pop();
                            // } else if (widget.dashboardIndex == 2) {
                            //   ref
                            //       .read(dashboardViewModel)
                            //       .getAllGroupsWithLogin(
                            //           context,
                            //           GetAllGroupsWithLoginRequestModel(
                            //             interests: '',
                            //             searchKey: '',
                            //             timeFilter: timeFilterList.values
                            //                 .elementAt(ref
                            //                     .read(dashboardViewModel)
                            //                     .timeFilterIndex),
                            //           ),
                            //           ref
                            //               .read(dashboardViewModel)
                            //               .allGroupsPageSize);
                            //   Navigator.of(context).pop();
                            // } else {
                            //   Navigator.of(context).pop();
                            // }
                            // GetPublicPostsRequestModel
                            //     getPublicPostsRequestModel =
                            //     GetPublicPostsRequestModel(
                            //         interests: '',
                            //         searchKey: '',
                            //         timeFilter: timeFilterList.values
                            //             .elementAt(timeFilterIndex));

                            // ref.read(dashboardViewModel).getPublicPosts(
                            //     context, getPublicPostsRequestModel);

                            // Navigator.of(context).pop();
                            ref.read(publicGroupProfileViewModel).getPostsByGroup(
                              context, 
                              GetPostsByGroupRequestModel(searchKey: "", timeFilter: timeFilterList.values.elementAt(timeFilterIndex)), 
                              widget.groupId,
                            );
                            Navigator.pop(context);
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
