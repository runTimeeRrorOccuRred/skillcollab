// ignore_for_file: avoid_print, avoid_unnecessary_containers, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class GroupTile extends ConsumerStatefulWidget {
  final GroupDataa groupData;
  const GroupTile({super.key, required this.groupData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GroupTileState();
}

class _GroupTileState extends ConsumerState<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (AppConstants.usertype == 0) {
          guestLoginRequestDialog(context, "to view the group");
        } else {
          Logger.printWarning(widget.groupData.toString());
          Logger.printWarning("user id check ======> ${widget.groupData.userId?.id ?? ""} ${AppConstants.userId}",);
          if (widget.groupData.privacy == "public") {
            final GroupDatum groupDatum = GroupDatum(
              id: widget.groupData.id ?? "",
            );

            context.pushNamed(
              AppRoute.publicGroupProfileView.name,
              extra: {
                'groupDetails': groupDatum,
                'isSelfGroup': (widget.groupData.userId?.id ?? "") == AppConstants.userId,
              },
            ).then((value) => ref.read(publicGroupProfileViewModel).clearAllData(),);
          } else if (widget.groupData.privacy == "private") {
            final GroupDatum groupDatum = GroupDatum(
              id: widget.groupData.id ?? "",
            );

            context.pushNamed(
              AppRoute.privateGroupProfileView.name,
              extra: {
                'groupDetails': groupDatum,
                'isSelfGroup': (widget.groupData.userId?.id ?? "") == AppConstants.userId,
              },
            ).then((value) => ref.read(publicGroupProfileViewModel).clearAllData(),);
          } else if (widget.groupData.privacy == "premium") {
            final GroupDatum groupDatum = GroupDatum(
              id: widget.groupData.id ?? "",
            );

            context.pushNamed(
              AppRoute.premiumGroupProfileView.name,
              extra: {
                'groupDetails': groupDatum,
                'isSelfGroup': (widget.groupData.userId?.id ?? "") == AppConstants.userId,
              },
            ).then((value) => ref.read(publicGroupProfileViewModel).clearAllData(),);
          }
        }
      },
      // child: Container(
      //   height: 100,
      //   width: 100,
      //   color: Colors.green,
      //   margin: EdgeInsets.only(bottom: 10),
      // ),
      child: Container(
        // width: double.infinity,
        height: 190,
        //!======Outer BIG box
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kGrey.withOpacity(
                0.3,
              ),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
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
                          : Image.asset("assets/icons/group-icon.png").image,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 3.4,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        child: (widget.groupData.privacy ?? "") == 'public'
                            ? SvgPicture.asset("assets/icons/unlock.svg")
                            : SvgPicture.asset("assets/icons/lock.svg"),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.groupData.privacy ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 7),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7),
                    Text(
                      widget.groupData.name ?? "",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Container(
                      // color: Colors.blue,
                      // width: size.width / 1.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.groupData.followers?.length ?? 0} ${widget.groupData.followers?.length == 1 ? "Follower" : "Followers"}',
                            style: const TextStyle(
                              color: Color(0xFF1B9AAA),
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '(${widget.groupData.rating ?? 0})',
                                style: const TextStyle(
                                  color: Color(0xFF979C9E),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              RatingBarIndicator(
                                rating: widget.groupData.averageRating
                                        ?.toDouble() ??
                                    0,
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
                    ),
                    const SizedBox(height: 7),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 1.7,),
                      child: Text(
                        widget.groupData.description ??
                            "skill collab ${widget.groupData.privacy ?? ""} group",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: const TextStyle(
                          color: Color(0xFF979C9E),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                        ),
                      ),
                    ),
                    const Spacer(),
                    gapH12,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
