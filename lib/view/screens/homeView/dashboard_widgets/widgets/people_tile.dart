// ignore_for_file: avoid_print, avoid_unnecessary_containers, unrelated_type_equality_checks, depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class PeopleTile extends ConsumerStatefulWidget {
  final UserData peopleData;
  const PeopleTile({super.key, required this.peopleData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PeopleTileState();
}

class _PeopleTileState extends ConsumerState<PeopleTile> {
  bool isFollowing = false;

  String formatNumberToK(int number) {
    if (number >= 1000) {
      // Convert the number to thousands with one decimal place
      final double numberInThousands = number / 1000;
      // Format the number to a string with one decimal place and add 'k'
      return "${numberInThousands.toStringAsFixed(1)}k";
    } else {
      // Return the number as is if it's less than 1000
      return number.toString();
    }
  }

  Widget CustomSpacer(String val) {
    if (val.length <= 25 && val.isNotEmpty) {
      return gapH60;
    } else if (val.length > 25 && val.length <= 40) {
      return gapH48;
    } else {
      return gapH40;
    }
  }

  // String val = "dsam-dsajkdjsapodj9sajdsjadjsadjopsaj";

  @override
  void initState() {
    super.initState();

    isFollowing = widget.peopleData.isFollowing ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.peopleData.isBan == true,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (AppConstants.usertype == 0) {
                guestLoginRequestDialog(context,
                    "to view ${widget.peopleData.firstName}'s profile",);
              } else {
                context.pushNamed(
                  AppRoute.profileView.name,
                  extra: {
                    "userId": widget.peopleData.id ?? "",
                    "isSelfProfile": widget.peopleData.id == AppConstants.userId,
                  },
                );
              }
              print(widget.peopleData);
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
                            image: (widget.peopleData.profilePhoto
                                            ?.contains("https://skill") ??
                                        false) &&
                                    widget.peopleData.profilePhoto != null
                                ? NetworkImage(widget.peopleData.profilePhoto ??
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '${widget.peopleData.firstName ?? ""} ${widget.peopleData.lastName ?? ""}',
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          gapW4,
                                          Text(
                                            "(${formatNumberToK(widget.peopleData.followers?.length ?? 0)})",
                                            style: const TextStyle(
                                              color: primaryColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const Spacer(),
                                          Visibility(
                                            visible: widget.peopleData.id !=
                                                    AppConstants.userId &&
                                                !isFollowing,
                                            child: GestureDetector(
                                              onTap: () async {
                                                setState(() {
                                                  isFollowing = true;
                                                });

                                                await ref
                                                    .read(dashboardViewModel)
                                                    .followUser(
                                                      context,
                                                      widget.peopleData.id ??
                                                          "",
                                                      isCallback: true,
                                                      callback: ref
                                                          .read(searchViewModel)
                                                          .getAllPeople(
                                                            context,
                                                            AllPeopleRequestModel(
                                                                interests: '',
                                                                searchKey: ref
                                                                    .watch(
                                                                        searchViewModel,)
                                                                    .searchController
                                                                    .text,
                                                                timeFilter:
                                                                    "allTime",),
                                                            load: false,
                                                          ),
                                                    );
                                              },
                                              child: SizedBox(
                                                height: 30,
                                                width: 30,
                                                child: Image.asset(
                                                    "assets/icons/follow.png",
                                                    color: primaryColor,),
                                              ),
                                            ),
                                          ),
                                          gapW10,
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                if ((widget.peopleData.expertise != null) ||
                                    (widget.peopleData.expertise?.isNotEmpty ??
                                        false))
                                  Text(
                                    "${widget.peopleData.expertise ?? ""} - ",
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,),
                                  )
                                else
                                  const SizedBox.shrink(),
                                Flexible(
                                  child: Text(
                                    widget.peopleData.location ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey[800], fontSize: 10,),
                                  ),
                                ),
                              ],
                            ),
                            gapH4,
                            Container(
                              child: Text(
                                (widget.peopleData.description ?? "").isEmpty
                                    ? "skill collab user"
                                    : widget.peopleData.description ??
                                        "skill collab user",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color(0xFF979C9E),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 1.33,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomSpacer(widget.peopleData.description ?? ""),
                        Column(
                          children: [
                            gapH4,
                            Row(
                              children: [
                                Text(
                                  "${widget.peopleData.publicPost}",
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
                                  "${widget.peopleData.premiumPost}",
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,),
                                ),
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
          ),
          if (widget.peopleData.isBan == true)
            Positioned.fill(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  // Use ClipRect to limit the area of the effect
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                    child: Container(
                      width: 300,
                      // height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/block.png',
                              height: 50,
                              width: 50,
                            ),
                            gapH12,
                            const Text(
                              'User is not appropriate as per community guideline',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
