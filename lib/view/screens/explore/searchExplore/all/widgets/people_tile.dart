// ignore_for_file: avoid_dynamic_calls, eol_at_end_of_file

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/explore/models/explore_all_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class ExplorePeopleTile extends ConsumerStatefulWidget {
  final ExploreData userData;
  final List<String> interests;
  const ExplorePeopleTile(
      {super.key, required this.userData, required this.interests,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExplorePeopleTileState();
}

class _ExplorePeopleTileState extends ConsumerState<ExplorePeopleTile>
    with BaseScreenView {
  final TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              "userId": widget.userData.id ?? "",
              "isSelfProfile": widget.userData.id == AppConstants.userId,
            },
          ).then((value) {
            ref.read(searchViewModel).getAllPeople(
                context,
                const AllPeopleRequestModel(
                    interests: '', searchKey: '', timeFilter: 'allTime',),);
          });
        }
        // print(widget.peopleData);
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        // height: 190,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
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
                      image: (widget.userData.profilePhoto
                                      ?.contains("https://skill") ??
                                  false) &&
                              widget.userData.profilePhoto != null
                          ? NetworkImage(widget.userData.profilePhoto ??
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
                  gapH4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "${widget.userData.firstName ?? ""} ${widget.userData.lastName ?? ""}"
                                              .length >
                                          11
                                      ? "${"${widget.userData.firstName ?? ""} ${widget.userData.lastName ?? ""}".substring(0, 10)}..."
                                      : "${widget.userData.firstName ?? ""} ${widget.userData.lastName ?? ""}",
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                gapW4,
                                Text(
                                  "(${widget.userData.followers?.length ?? 0})",
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            gapH4,
                            Text(
                              // "dsadposakdsadposakdsadposakdsadpos",
                              widget.userData.role == ""
                                  ? "${widget.userData.role}"
                                  : "skill collab user",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFF979C9E),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 1.33,
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
                            guestLoginRequestDialog(context, "to follow ");
                          } else {
                            // Logger.printError(widget.userData.userId.toString() );
                            ref
                                .read(userProfileViewModel)
                                .followUser(context, widget.userData.id ?? "")
                                .then((value) {
                              setState(() {});
                              ref
                                  .watch(exploreSearchViewModel)
                                  .resetPageNumber();
                              ref
                                  .watch(exploreSearchViewModel)
                                  .clearAllDataList();
                              ref.watch(exploreSearchViewModel).getExploreAll(
                                  context,
                                  ExplorePeopleRequestModel(
                                      interests: widget.interests,
                                      searchKey: '',),
                                  2,
                                  ref
                                      .watch(exploreSearchViewModel)
                                      .allDataPageNumber,
                                  load: false,);
                            });
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: widget.userData.isFollowing == true
                                  ? const AssetImage('assets/images/blank.png')
                                  : const AssetImage("assets/icons/follow.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapH8,
                  SizedBox(
                    height: AppSizes.p48,
                    child: Text(
                      widget.userData.description == ""
                          ? "${widget.userData.description}"
                          : "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: const TextStyle(
                        fontSize: 14,
                        color: kGrey,
                      ),
                    ),
                  ),
                  gapH8,
                  Column(
                    children: [
                      gapH4,
                      Row(
                        children: [
                          Text(
                            "${widget.userData.publicPost}",
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
                            "${widget.userData.premiumPost}",
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
