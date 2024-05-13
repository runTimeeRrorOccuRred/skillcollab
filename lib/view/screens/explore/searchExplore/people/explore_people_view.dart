// ignore_for_file: avoid_dynamic_calls, avoid_unnecessary_containers

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class ExplorePeopleView extends ConsumerStatefulWidget {
  final List<String> interests;
  final String searchKey;
  const ExplorePeopleView({super.key, required this.interests, required this.searchKey});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExplorePeopleViewState();
}

class _ExplorePeopleViewState extends ConsumerState<ExplorePeopleView>
    with BaseScreenView {
  final ScrollController _scrollController = ScrollController();


  String formatLongText(String text) {
    if(text.length > 12) return "${text.substring(0, 13)}...";
    return text;
  }


  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        Logger.printError("end");
        Logger.printWarning(ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey).toString());
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExplorePeople(
            context,
            ExplorePeopleRequestModel(
                interests: widget.interests, searchKey: widget.searchKey,),
            5,
            ref.watch(exploreSearchViewModel).allDataPageNumber,
            load: false,);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: () async {
        Future.delayed(const Duration(seconds: 2));
        ref.read(exploreSearchViewModel).clearAllDataList();
        // ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExplorePeople(
              context,
              ExplorePeopleRequestModel(
                  interests: widget.interests, searchKey: widget.searchKey,),
              5,
              ref.watch(exploreSearchViewModel).allDataPageNumber,
            );
      },
      indicatorBuilder: (context, controller) {
        return const Icon(
          Icons.refresh,
          color: primaryColor,
          size: 30,
        );
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: ref.watch(exploreSearchViewModel).peopleDataList.length,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (AppConstants.usertype == 0) {
                guestLoginRequestDialog(context,
                    "to view  profile",); /*${widget.peopleData.firstName}'s */
              } else {
                //   Logger.printInfo(widget.peopleData.toString());
                //   ref.read(userProfileViewModel).toggleLoading();
                //   ref.read(userProfileViewModel).toggleLoading();
                context.pushNamed(
                  AppRoute.profileView.name,
                  extra: {
                    "userId": ref
                            .watch(exploreSearchViewModel)
                            .peopleDataList[index]
                            .id ??
                        "",
                    "isSelfProfile": ref
                            .watch(exploreSearchViewModel)
                            .peopleDataList[index]
                            .id ==
                        AppConstants.userId,
                  },
                ).then((value) {
                  ref.read(searchViewModel).getAllPeople(
                      context,
                      AllPeopleRequestModel(
                          interests: '', searchKey: widget.searchKey, timeFilter: 'allTime',),);
                });
              }
              // print(widget.peopleData);
            },
            child: Container(
              width: double.infinity,
              // height: 190,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              decoration: BoxDecoration(
                boxShadow: [CustomBoxShadow()],
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFFE1E1EF),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: (ref
                                            .watch(exploreSearchViewModel)
                                            .peopleDataList[index]
                                            .profilePhoto
                                            ?.contains("https://skill") ??
                                        false) &&
                                    ref
                                            .watch(exploreSearchViewModel)
                                            .peopleDataList[index]
                                            .profilePhoto !=
                                        null
                                ? NetworkImage(ref
                                        .watch(exploreSearchViewModel)
                                        .peopleDataList[index]
                                        .profilePhoto ??
                                    AppConstants.imageNotFoundLink,)
                                : Image.asset("assets/icons/user.png").image,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 3.4,
                      ),
                    ],
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH10,
                        Container(
                          // color: Colors.red,
                          // width: size.width / 1.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${ref.watch(exploreSearchViewModel).peopleDataList[index].firstName ?? ""} ${ref.watch(exploreSearchViewModel).peopleDataList[index].lastName ?? ""}",
                                          // ref.watch(exploreSearchViewModel).peopleDataList[index].isFollowing.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        gapW4,
                                        Text(
                                          "(${ref.watch(exploreSearchViewModel).peopleDataList[index].followers?.length ?? 0})",
                                          style: const TextStyle(
                                            color: primaryColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    gapH4,
                                    Row(
                                      children: [
                                        if ((ref
                                                    .watch(
                                                        exploreSearchViewModel,)
                                                    .peopleDataList[index]
                                                    .expertise !=
                                                null) ||
                                            (ref
                                                    .watch(
                                                        exploreSearchViewModel,)
                                                    .peopleDataList[index]
                                                    .expertise
                                                    ?.isNotEmpty ??
                                                false))
                                          Text(
                                            "${formatLongText(ref.watch(exploreSearchViewModel).peopleDataList[index].expertise ?? "")} - ",
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,),
                                          )
                                        else
                                          const SizedBox.shrink(),
                                        Flexible(
                                          child: Text(
                                            ref
                                                    .watch(
                                                        exploreSearchViewModel,)
                                                    .peopleDataList[index]
                                                    .location ??
                                                "",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontSize: 10,),
                                          ),
                                        ),
                                      ],
                                    ),
                                    gapH4,
                                    Container(
                                      // constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 1.7,),
                                      child: Text(
                                        // "dsadposakdsadposakdsadposakdsadpos",
                                        ref
                                                    .watch(
                                                        exploreSearchViewModel,)
                                                    .peopleDataList[index]
                                                    .role ==
                                                ""
                                            ? "${ref.watch(exploreSearchViewModel).peopleDataList[index].role}"
                                            : "skill collab user",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Color(0xFF979C9E),
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 1.33,
                                        ),
                                      ),
                                    ),
                                    // Text(
                                    //   " followers", /*${widget.peopleData.follower ?? 0} */
                                    //   style:  TextStyle(
                                    //     color: primaryColor,
                                    //     fontSize: 10,
                                    //     fontWeight: FontWeight.w700,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (AppConstants.usertype == 0) {
                                    guestLoginRequestDialog(
                                        context, "to follow ",);
                                  } else {
                                    // ref.read(exploreSearchViewModel).peopleDataList[index] = ref.read(exploreSearchViewModel).peopleDataList[index].copyWith(
                                    //   isFollowing: false,
                                    // );

                                    ref
                                        .read(userProfileViewModel)
                                        .followUser(
                                            context,
                                            ref
                                                    .watch(
                                                        exploreSearchViewModel,)
                                                    .peopleDataList[index]
                                                    .id ??
                                                "",)
                                        .then((value) {
                                      setState(() {});
                                      ref
                                          .watch(exploreSearchViewModel)
                                          .resetPageNumber();
                                      ref
                                          .watch(exploreSearchViewModel)
                                          .clearAllDataList();
                                      ref
                                          .watch(exploreSearchViewModel)
                                          .getExplorePeople(
                                              context,
                                              ExplorePeopleRequestModel(
                                                  interests: widget.interests,
                                                  searchKey: widget.searchKey,),
                                              5,
                                              ref
                                                  .watch(exploreSearchViewModel)
                                                  .allDataPageNumber,);
                                    });
                                  }
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: ref
                                                  .watch(exploreSearchViewModel)
                                                  .peopleDataList[index]
                                                  .isFollowing ==
                                              true
                                          ? const AssetImage(
                                              'assets/images/blank.png',)
                                          : const AssetImage(
                                              "assets/icons/follow.png",),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        gapH8,
                        SizedBox(
                          height: AppSizes.p48,
                          child: Text(
                            ref
                                        .watch(exploreSearchViewModel)
                                        .peopleDataList[index]
                                        .description ==
                                    ""
                                ? "${ref.watch(exploreSearchViewModel).peopleDataList[index].description}"
                                : "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: const TextStyle(
                              fontSize: 14,
                              color: kGrey,
                            ),
                          ),
                        ),
                        gapH20,
                        Column(
                          children: [
                            gapH4,
                            Row(
                              children: [
                                Text(
                                  "${ref.watch(exploreSearchViewModel).peopleDataList[index].publicPost}",
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,),
                                ),
                                gapW4,
                                const Text(
                                  "Public Posts",
                                  style: TextStyle(
                                      color: kGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,),
                                ),
                                gapW10,
                                Text(
                                  "${ref.watch(exploreSearchViewModel).peopleDataList[index].premiumPost}",
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,),
                                ),
                                /*"${widget.peopleData.premiumPost}" */
                                gapW4,
                                const Text(
                                  "Premium Posts",
                                  style: TextStyle(
                                      color: kGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,),
                                ),
                              ],
                            ),
                            gapH12,
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
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
}
