// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/explore/models/explore_all_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class ExploreGroupTile extends ConsumerStatefulWidget {
  final ExploreData groupData;
  final int index;
  final List<String> interests;
  const ExploreGroupTile(
      {super.key,
      required this.groupData,
      required this.index,
      required this.interests,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExploreGroupTileState();
}

class _ExploreGroupTileState extends ConsumerState<ExploreGroupTile>
    with BaseScreenView {
  final TextEditingController commentController = TextEditingController();
  bool isload = false;
  int groupIndex = -1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (AppConstants.usertype == 0) {
          guestLoginRequestDialog(context,
              "to view  profile",); /*${widget.peopleData.firstName}'s */
        } else {
          if (AppConstants.usertype == 0) {
            guestLoginRequestDialog(context,
                "to view  profile",); /*${widget.peopleData.firstName}'s */
          } else {
            if (widget.groupData.privacy == "public") {
              context.pushNamed(
                AppRoute.publicGroupProfileView.name,
                extra: {
                  "groupDetails": GroupDatum(id: widget.groupData.id ?? ""),
                  "isSelfGroup": (widget.groupData.userId?.id ?? "") ==
                      AppConstants.userId,
                },
              );
            } else if (widget.groupData.privacy == "private") {
              context.pushNamed(
                AppRoute.privateGroupProfileView.name,
                extra: {
                  "groupDetails": GroupDatum(id: widget.groupData.id ?? ""),
                  "isSelfGroup": (widget.groupData.userId?.id ?? "") ==
                      AppConstants.userId,
                },
              );
            } else {
              context.pushNamed(
                AppRoute.premiumGroupProfileView.name,
                extra: {
                  "groupDetails": GroupDatum(id: widget.groupData.id ?? ""),
                  "isSelfGroup": (widget.groupData.userId?.id ?? "") ==
                      AppConstants.userId,
                },
              );
            }
          }
        }
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
                      image: (widget.groupData.groupPhoto
                                      ?.contains("https://skill") ??
                                  false) &&
                              widget.groupData.groupPhoto != null
                          ? NetworkImage(widget.groupData.groupPhoto ??
                              AppConstants.imageNotFoundLink,)
                          : Image.asset("assets/icons/user.png").image,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  height: 150,
                  width: MediaQuery.of(context).size.width / 3.8,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child:  Row(
                    children: [
                      if (widget.groupData.privacy == 'public') const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.white,
                        size: 10,
                      ) else const Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.groupData.privacy ?? '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 7.w),
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
                            Text(
                              '${widget.groupData.name}',
                              // ${widget.peopleData.firstName ?? ""} ${widget.peopleData.lastName ??
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            gapH4,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${widget.groupData.followers?.length} Followers",
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "(${widget.groupData.reviewer?.length})",
                                      style: const TextStyle(
                                        color: kGrey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    RatingBarIndicator(
                                      rating:
                                          widget.groupData.averageRating ?? 0.0,
                                      itemSize: 12.0,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
                    ],
                  ),
                  gapH8,
                  SizedBox(
                    height: 40.h,
                    child: Text(
                      "${widget.groupData.description}",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 50,
                            width: 130.h,
                            padding: const EdgeInsets.all(8),
                            child: (widget.groupData.isFollowing == false && !(widget.groupData.privacy == 'private' || widget.groupData.privacy == 'premium'))
                                ? MaterialButton(
                                    onPressed: () async {
                                      setState(() {
                                        isload = true;
                                        groupIndex = widget.index;
                                      });
                                      if (widget.groupData.privacy == 'public') {
                                        await ref.read(publicGroupProfileViewModel).followGroup( context, widget.groupData.id ?? "",)
                                        .then((value) {
                                          setState(() {
                                            isload = false;
                                          });
                                          ref.watch(exploreSearchViewModel).resetPageNumber();
                                          ref.watch(exploreSearchViewModel).clearAllDataList();
                                          ref.watch(exploreSearchViewModel).getExploreAll( context, ExplorePeopleRequestModel( interests: widget.interests, searchKey: ''), 2, ref.watch(exploreSearchViewModel).allDataPageNumber,);
                                        });
                                      } else if (widget.groupData.privacy == 'private') {
                                        await ref.read(privateGroupProfileViewModel).followGroup( context, widget.groupData.id ?? "", )
                                            .then((value) {
                                          setState(() {
                                            isload = false;
                                          });
                                          ref.watch(exploreSearchViewModel).resetPageNumber();
                                          ref.watch(exploreSearchViewModel).clearAllDataList();
                                          ref.watch(exploreSearchViewModel).getExploreAll( context, ExplorePeopleRequestModel( interests: widget.interests, searchKey: ''), 2,
                                            ref.watch(exploreSearchViewModel).allDataPageNumber,
                                          );
                                        });
                                      }
                                    },
                                    color: primaryColor,
                                    child: isload == true && groupIndex == widget.index
                                        ? const SizedBox(
                                            height: 15,
                                            width: 15,
                                            child: CircularProgressIndicator(
                                              color: kWhite,
                                            ),)
                                        :  const Text(
                                            "Join Group",
                                            // widget.groupData.privacy ?? '',
                                            style: TextStyle(
                                                color: kWhite, fontSize: 12,),
                                          ),
                                  )
                                : const SizedBox(),
                          ),
                        ],
                      ),
                      // gapH4,
                      // Row(
                      //   children: [
                      //     Text(/*"${widget.peopleData.publicPost}"*/ '24', style: const TextStyle(color: primaryColor, fontSize: 10, fontWeight: FontWeight.w700),),
                      //     gapW4,
                      //     const Text("Public Posts", style: TextStyle(color: kGrey, fontSize: 10, fontWeight: FontWeight.w700),),
                      //     gapW10,
                      //     Text( '2', style: const TextStyle(color: primaryColor, fontSize: 10, fontWeight: FontWeight.w700),), /*"${widget.peopleData.premiumPost}" */
                      //     gapW4,
                      //     const Text("Premium Posts", style: TextStyle(color: kGrey, fontSize: 10, fontWeight: FontWeight.w700),),
                      //   ],
                      // ),
                      // gapH12
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
