// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';
// import 'package:skill_colab/core/constants.dart';
// import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
// import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
// import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
// import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
// import 'package:skill_colab/routes/app_routes.dart';
// import 'package:skill_colab/utils/app_sizes.dart';
// import 'package:skill_colab/utils/colors.dart';
// import 'package:skill_colab/utils/logger.dart';
// import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
// import 'package:skill_colab/view/screens/search/search_view_model.dart';

// class PublicPostsTile extends ConsumerStatefulWidget {
//   final PeopleAndGroupPost postData;
//   const PublicPostsTile({super.key, required this.postData});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _PublicPostsTileState();
// }

// class _PublicPostsTileState extends ConsumerState<PublicPostsTile> {

//   bool upvote = false;
//   bool downvote = false;

//   @override
//   void initState() {   
//     super.initState();
//     upvote = widget.postData.likeDislike?.isLike ?? false;
//     downvote = widget.postData.likeDislike?.isDislike ?? false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         padding: const EdgeInsets.symmetric(
//             vertical: 10, horizontal: 10),
//         margin: const EdgeInsets.symmetric(vertical: 10),
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: kGrey.withOpacity(
//                 0.3,
//               ),
//               spreadRadius: 1,
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(18),
//           border: Border.all(
//             color: const Color(0xFFE1E1EF),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     final Map<String, dynamic> groupDatum = {
//                       ...widget.postData.toJson(),
//                       "_id": widget.postData.groupId ?? "",
//                       "userId": widget.postData.userId?.toJson() ?? {},
//                       "groupData": widget.postData.groupId?.toJson() ?? {}
//                     };
//                     Logger.printSuccess(GroupDatum.fromJson(groupDatum).toString());
//                     context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
//                       "groupDetails": GroupDatum.fromJson(groupDatum),
//                       "isSelfGroup": (widget.postData.userId?.id ?? "") == AppConstants.userId
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     padding: !(widget.postData.groupData?.groupPhoto
//                                 ?.contains("https://skill") ??
//                             false)
//                         ? const EdgeInsets.all(8)
//                         : EdgeInsets.zero,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       color: kWhite,
//                     ),
//                     child: !(widget.postData.groupData?.groupPhoto
//                                 ?.contains("https://skill") ??
//                             false)
//                         ? Image.asset(
//                             "assets/icons/user.png",
//                             height: 20,
//                             width: 20,
//                           )
//                         : ClipRRect(
//                             borderRadius: BorderRadius.circular(50),
//                             child: Image.network(
//                               widget.postData
//                                       .groupData
//                                       ?.groupPhoto ??
//                                   "",
//                               fit: BoxFit.cover,
//                             )),
//                   ),
//                 ),
//                 gapW6,
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         final Map<String, dynamic> groupDatum = {
//                           ...widget.postData.toJson(),
//                           "_id": widget.postData.groupId ?? "",
//                           "userId": widget.postData.userId?.toJson() ?? {},
//                           "groupData": widget.postData.groupData?.toJson() ?? {}
//                         };
//                         Logger.printSuccess(GroupDatum.fromJson(groupDatum).toString());
//                         context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
//                           "groupDetails": GroupDatum.fromJson(groupDatum),
//                           "isSelfGroup": (widget.postData.userId?.id ?? "") == AppConstants.userId
//                         });
//                       },
//                       child: Text(
//                         widget.postData.groupData?.name ?? "",
//                         // "firstName lastName",
//                         style: const TextStyle(
//                           color: primaryColor,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                     gapH4,
//                     Row(
//                       children: [
//                         SvgPicture.asset(
//                             'assets/icons/followers.svg'),
//                         gapW4,
//                         Text(
//                           "${widget.postData.follower ?? 0}",
//                           style: const TextStyle(
//                             color: kBlack,
//                             fontSize: 13,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         gapW4,
//                         RatingBarIndicator(
//                           rating: widget.postData.averageRating ?? 0,
//                           itemSize: 12.0,
//                           physics:
//                               const BouncingScrollPhysics(),
//                           itemBuilder: (context, _) =>
//                               const Icon(
//                             Icons.star,
//                             color: Colors.amber,
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Text("${widget.postData.userId?.userName ?? ""} on ${DateFormat('dd-MM-yyyy').format(ref.watch(searchViewModel).publicPostsResponseModel.data![index].createdAt!)}"),
//                     Text(
//                         "posted on ${DateFormat('dd-MM-yyyy').format(widget.postData.createdAt!)}"),
//                   ],
//                 ),
//                 const Spacer(),
//                 // Container(
//                 //   height: AppSizes.p32,
//                 //   width: AppSizes.p32,
//                 //   decoration: BoxDecoration(
//                 //     borderRadius: BorderRadius.circular(8),
//                 //     color: primaryColor,
//                 //   ),
//                 //   child: const Icon(
//                 //     Icons.person_add_alt_outlined,
//                 //     color: kWhite,
//                 //     size: AppSizes.p20,
//                 //   ),
//                 // ),
//                 gapW16,
//                 const Icon(
//                   Icons.more_horiz,
//                   color: kBlack,
//                   size: AppSizes.p20,
//                 ),
//               ],
//             ),
//             gapH16,
//             GestureDetector(
//               onTap: () {
//                 final Map<String, dynamic> data = {
//                   ...widget.postData.toJson(),
//                   "userId": widget.postData.userId?.toJson() ?? {},
//                   "groupId": {"_id": widget.postData.groupData?.id},
//                   "likeDislike": widget.postData.likeDislike?.toJson() ?? {}
//                   // "groupData": widget.postData.groupData?.toJson() ?? {}
//                 };

//                 // Logger.printInfo(data.toString());
//                 // Logger.printInfo(PeopleAndGroupPost.fromJson(data).toString());

//                 context.pushNamed(AppRoute.sinlgePost.name, extra: PeopleAndGroupPost.fromJson(data)).then((value) {
//                   ref.read(singlePostViewModel).clearComments();
//                   // ref.watch(searchViewModel).getPublicPosts(
//                   //     context,
//                   //     const GetPublicPostsRequestModel(
//                   //         interests: "",
//                   //         searchKey: "",
//                   //         timeFilter: "allTime"),
//                   //     load: false);
//                 });
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.postData
//                             .description ??
//                         "",
//                     style: const TextStyle(
//                       color: kBlack,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   // gapH16,
//                   // const Text("#Gardening#garden#veggies#expertgardening...."),
//                   gapH16,
//                   Container(
//                     //!==>image box style
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     width: MediaQuery.of(context).size.width,
//                     // height: MediaQuery.of(context).size.height*0.2,
//                     child: widget.postData.postImage ==
//                                 null ||
//                             (!widget.postData.postImage!
//                                     .contains('.jpg') &&
//                                 !widget.postData.postImage!
//                                     .contains('.png')) ||
//                             !widget.postData.postImage!
//                                 .contains('http') ||
//                             widget.postData.postImage!.isEmpty
//                         ? Container()
//                         : ClipRRect(
//                             borderRadius: BorderRadius.circular(18),
//                             child: Image.network(
//                               widget.postData.postImage!,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                   ),
//                   gapH16,
//                   Row(
//                     children: [
//                       SvgPicture.asset(
//                         'assets/icons/postCommentIcon.svg',
//                         height: 25,
//                       ),
//                       gapW10,
//                       Text(
//                         widget.postData.commentCounts
//                             .toString(),
//                         style: const TextStyle(
//                           color: kBlack,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       gapW10,
//                       Expanded(
//                         child: DecoratedBox(
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFF8F7F9),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: GestureDetector(
//                             onTap: () {
//                               Map<String, dynamic> data = {};
//                               if( widget.postData.likeDislike == null) {
//                                 data = {
//                                   ...widget.postData.toJson(),
//                                   "userId": widget.postData.userId?.toJson() ?? {},
//                                   "groupId": {"_id": widget.postData.groupData?.id},
//                                   // "likeDislike": widget.postData.likeDislike?.toJson() ?? {},
//                                 };
//                               } else {
//                                 data = {
//                                   ...widget.postData.toJson(),
//                                   "userId": widget.postData.userId?.toJson() ?? {},
//                                   "groupId": {"_id": widget.postData.groupData?.id},
//                                   "likeDislike": widget.postData.likeDislike?.toJson() ?? {},
//                                 };
//                               }

//                               // Logger.printInfo(data.toString());
//                               // Logger.printInfo(PeopleAndGroupPost.fromJson(data).toString());

//                               context.pushNamed(AppRoute.sinlgePost.name, extra: PeopleAndGroupPost.fromJson(data)).then((value) {
//                                 ref.read(singlePostViewModel).clearComments();
//                                 // ref.watch(searchViewModel).getPublicPosts(
//                                 //     context,
//                                 //     const GetPublicPostsRequestModel(
//                                 //         interests: "",
//                                 //         searchKey: "",
//                                 //         timeFilter: "allTime"),
//                                 //     load: false);
//                               });
//                             },
//                             child: TextFormField(
//                               enabled: false,
//                               decoration: const InputDecoration(
//                                 contentPadding: EdgeInsets.only(
//                                   left: 10,
//                                 ),
//                                 border: InputBorder.none,
//                                 focusedBorder: InputBorder.none,
//                                 enabledBorder: InputBorder.none,
//                                 hintText: "Add a Comment....",
//                                 hintStyle: TextStyle(
//                                   color: kGrey,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       gapW10,
//                       GestureDetector(
//                         onTap: () async {
//                           setState(() {
//                             upvote = !upvote;
//                             if(downvote) downvote = false;
//                           });

//                           await ref.read(singlePostViewModel).likeDislikePost(
//                             context, 
//                             LikeDislikeRequestModel(
//                               isLike: upvote,
//                               isDislike: downvote,
//                               postId: widget.postData.id ?? "",
//                               type: 'post'
//                             )
//                           ).then((value) {
//                             ref.read(searchViewModel).getPublicPosts(
//                               context, 
//                               const GetPublicPostsRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
//                               load: false
//                             );
//                           });

//                           HapticFeedback.heavyImpact();
//                         },
//                         child: SvgPicture.asset(
//                           'assets/icons/upvoteComment.svg',
//                           color: upvote ? Colors.green : kGrey,
//                           height: 20,
//                         ),
//                       ),
//                       gapW10,
//                       GestureDetector(
//                         onTap: () async {
//                           setState(() {
//                             downvote = !downvote;
//                             if(upvote) upvote = false;
//                           });

//                           await ref.read(singlePostViewModel).likeDislikePost(
//                             context, 
//                             LikeDislikeRequestModel(
//                               isLike: upvote,
//                               isDislike: downvote,
//                               postId: widget.postData.id ?? "",
//                               type: 'post'
//                             )
//                           ).then((value) {
//                             ref.read(searchViewModel).getPublicPosts(
//                               context, 
//                               const GetPublicPostsRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
//                               load: false
//                             );
//                           });

//                           HapticFeedback.heavyImpact();
//                         },
//                         child: SvgPicture.asset(
//                           'assets/icons/downvoteComment.svg',
//                           color: downvote ? Colors.redAccent : kGrey,
//                           height: 20,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             gapH16,
//             const Row(
//               children: [
//                 // GestureDetector(
//                 //   onTap: () {
//                 //     context
//                 //         .pushNamed(AppRoute.sinlgePost.name,
//                 //             extra: ref.watch(searchViewModel)
//                 //                 .publicPostsResponseModel
//                 //                 .data![index])
//                 //         .then((value) {
//                 //       ref.read(singlePostViewModel).clearComments();
//                 //     });
//                 //   },
//                 //   child: Row(
//                 //     children: [
//                 //       SvgPicture.asset(
//                 //         'assets/icons/postCommentIcon.svg',
//                 //         height: 25,
//                 //       ),
//                 //       gapW10,
//                 //       Text(
//                 //         ref.watch(searchViewModel).publicPostsResponseModel
//                 //             .data![index].commentCounts
//                 //             .toString(),
//                 //         style: const TextStyle(
//                 //           color: kBlack,
//                 //           fontSize: 17,
//                 //           fontWeight: FontWeight.w600,
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 Spacer(),
//                 // SvgPicture.asset(
//                 //   'assets/icons/postShareIcon.svg',
//                 //   height: 25,
//                 // ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
