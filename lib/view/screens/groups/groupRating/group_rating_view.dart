// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/groups/deleteReview/models/delete_review_models.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/groups/groupRating/filter_rating_bottomsheet.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class GroupRatingView extends ConsumerStatefulWidget {
  final String groupId;
  final String groupPrivacy; //? public | private | premium
  const GroupRatingView({super.key, required this.groupId, required this.groupPrivacy});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GroupRatingViewState();
}

class _GroupRatingViewState extends ConsumerState<GroupRatingView> {

  bool isBottomSheet = false;

  String formatDateTime(DateTime inputDateTime) {
    final DateTime now = DateTime.now();
    final Duration difference = now.difference(inputDateTime);

    if (difference.inHours < 24) {
      // Less than 24 hours, show in hours
      return '${difference.inHours} hours ago';
    } else {
      // More than 24 hours, show "month day at hh:mm"
      return '${getMonthName(inputDateTime.month)} ${inputDateTime.day} at ${inputDateTime.hour.toString().padLeft(2, '0')}:${inputDateTime.minute.toString().padLeft(2, '0')}';
    }
  }

  String getMonthName(int month) {
    const monthNames = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun",
      "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
    ];
    return monthNames[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 7,
                top: 8,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
        title: Text(
          '${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].groupName ?? ''} ',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: !isBottomSheet,
                child: Text(
                  'Rating & Reviews (${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length})',
                  style:const TextStyle(
                    color: kNevada,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Visibility(
                visible: !isBottomSheet,
                child: const SizedBox(
                  height: 21,
                ),
              ),
              Visibility(
                visible: !isBottomSheet,
                child: Container(
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: primaryLightColor,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RatingBarIndicator(
                              rating: ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].averageRating  ?? 0,
                              itemSize: 24.0,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].averageRating?.toStringAsFixed(1)} ",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  '/5',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length} Reviews ',
                              style: const  TextStyle(
                                color: kNevada,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            const Text(
                              '0%',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Recommended',
                              style: TextStyle(
                                color: kNevada,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 7,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isNotEmpty ?? false)
                                      ? ref.watch(publicGroupProfileViewModel).fiveStarRating / (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length ?? 0)
                                      : 0,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Text(
                                  '4',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 7,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isNotEmpty ?? false)
                                      ? ref.watch(publicGroupProfileViewModel).fourStarRating / (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length ?? 0)
                                      : 0,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 7,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isNotEmpty ?? false) 
                                      ? ref.watch(publicGroupProfileViewModel).threeStarRating / (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length ?? 0)
                                      :0,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 7,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isNotEmpty ?? false)
                                      ? ref.watch(publicGroupProfileViewModel).twoStarRating / (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length ?? 0)
                                      : 0,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 7,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    value: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isNotEmpty ?? false)
                                      ? ref.watch(publicGroupProfileViewModel).oneStarRating / (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length ?? 0)
                                      : 0,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: !isBottomSheet,
                child: const SizedBox(
                  height: 35,
                ),
              ),
              Visibility(
                visible: ref.watch(publicGroupProfileViewModel).isGroupRated,
                child: SizedBox(
                  height: 45,
                  width: size.width,
                  child: MaterialButton(
                    onPressed: () {},
                    color: primaryColor,
                    child: const Center(
                      child: Text(
                        "Adding Rating & Review",
                        style:
                            TextStyle(color: kWhite, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !isBottomSheet,
                child: const SizedBox(
                  height: 31,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'User Reviews',
                    style: TextStyle(
                      color: kNevada,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //     horizontal: 18,
                      //     vertical: 6,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     color: primaryColor,
                      //     boxShadow: const [
                      //       BoxShadow(
                      //         color: Color(0x3F1B9AAA),
                      //         blurRadius: 18,
                      //         offset: Offset(0, 8),
                      //       ),
                      //       BoxShadow(
                      //         color: Color(0x0A141414),
                      //         blurRadius: 1,
                      //       ),
                      //     ],
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child: const Row(
                      //     children: [
                      //       Icon(
                      //         Icons.search,
                      //         size: 14,
                      //         color: Colors.white,
                      //       ),
                      //       SizedBox(width: 8),
                      //       Text(
                      //         'Search',
                      //         textAlign: TextAlign.center,
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.w600,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () { 
                          setState(() {
                            isBottomSheet = true;
                          });
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
                          builder: (context) => FilterRatingBottomSheet(groupId : widget.groupId),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.tune,
                                size: 14,
                                color: primaryColor,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Filter',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              Container(
                width: size.width,
                color: Colors.white,
                child: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isEmpty ?? true)
                ? SizedBox(
                    width: size.width,
                    height: size.height / 2,
                    child: const Center(
                      child: Text("No ratings found"),
                    ),
                  )
                : ListView.builder(
                  shrinkWrap: true,
                  itemCount: ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      // height: 120,
                      width: double.infinity,
                      //!======Outer BIG box
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8,),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10,),
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
                                    image: ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userProfilePhoto.toString().isEmpty ?? true 
                                        ? Image.asset("assets/images/user.png").image
                                        : ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].isAnonymous ?? true
                                            ? Image.asset("assets/icons/user.png", fit: BoxFit.fitHeight,).image
                                            : NetworkImage(ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userProfilePhoto ?? AppConstants.imageNotFoundLink),
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                height: size.height / 9.2,
                                width: size.width / 4,
                              ),
                            ],
                          ),
                          const SizedBox(width: 7),
                          SizedBox(
                            width: size.width / 1.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].isAnonymous ?? true 
                                            ? "Anonymous"
                                            : "${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userFirstName ?? ""} ${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userLastName}",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            ref.watch(publicGroupProfileViewModel).getFollowersModel.data?.where((element) => (element.userId?.id ?? "") == ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userId).toList().isNotEmpty ?? false
                                            ? "Group Member"
                                            : "Non Group Member",
                                            style: TextStyle(
                                              color: kDodgerBlue,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].title ?? "Review",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      gapH4,
                                      Text(
                                        ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].review ?? "",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                      gapH10,
                                      // Row(
                                      //   children: [
                                      //     const Icon(Icons.sms_failed_outlined, size: 14,),
                                      //     const SizedBox(
                                      //       width: 2,
                                      //     ),
                                      //     const Text('Report', style: TextStyle(color: Colors.black, fontSize: 10),),
                                      //   ],
                                      // )
                                    ],
                                  ),
                                ),
                                // Spacer(),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userId == AppConstants.userId) GestureDetector(
                                        onTap: () {
                                          Logger.printSuccess(ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userId ?? "");
                                          Logger.printSuccess(ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].userId ?? "");
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
                                            builder: (context) => SizedBox(
                                              height: 80.h,
                                              child: 
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  
                                                  InkWell(
                                                    onTap: () {
                                                     ref.read(publicGroupProfileViewModel).deleteReview(DeleteReviewRequestModel(groupId: ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].id),ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].reviewId ?? "").then((value) {
                                                      ref.read(publicGroupProfileViewModel).getGroupRating(context, ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].id ?? '').then((value) {
                                                        context.pop();
                                                        context.pop();
                                                        
                                                        Logger.printSuccess("${ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?.isEmpty.toString() ?? ''} Asfar");
                                                      });
                                                      
                                                      setState(() {
                                                        
                                                      });
                                                     });
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(children: [
                                                        Icon(Icons.delete),
                                                        // Image.asset("assets/icons/drop_down_report.png", color: Colors.black,),
                                                        const SizedBox(width: AppSizes.p10,),
                                                        Text("Delete",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
                                                      ],),
                                                                                  ),
                                                  ),
                                                  gapH10,
                                                ],
                                              )
                                                  ,
                                            ),);
                                        },
                                        child: Icon(
                                          Icons.more_horiz,
                                          size: 24,
                                        ),
                                      ),
                                      gapH16,
                                      RatingBarIndicator(
                                        rating: (ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].rating ?? 0).toDouble(),
                                        itemSize: 14.0,
                                        physics:
                                            const BouncingScrollPhysics(),
                                        itemBuilder: (context, _) =>
                                            const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Text(formatDateTime(ref.watch(publicGroupProfileViewModel).groupRatingResponseModel.data?[0].reviews?[index].reviewDate ?? DateTime.now()), style: const TextStyle(color: Colors.grey, fontSize: 10),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
