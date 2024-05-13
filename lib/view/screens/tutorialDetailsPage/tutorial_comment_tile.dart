// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/comment_likedislike/models/tutorial_comment_likedislike_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/models/get_tutorial_comment_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/tutorial_detail_page_view_model.dart';

class TutorialCommentTile extends ConsumerStatefulWidget {
  final TutorialComment tutorialComment;
  const TutorialCommentTile({super.key, required this.tutorialComment});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TutorialCommentTileState();
}

class _TutorialCommentTileState extends ConsumerState<TutorialCommentTile> {

  late TextEditingController editController;

  bool upvote = false;
  bool downvote = false;
  int likeCounts = 0;
  int dislikeCounts = 0;

  @override
  void initState() {
    super.initState();
    editController = TextEditingController(text: widget.tutorialComment.comment);
    upvote = widget.tutorialComment.userLikeDislike?.isLike ?? false;
    downvote = widget.tutorialComment.userLikeDislike?.isDislike ?? false;
    likeCounts = widget.tutorialComment.likeCounts ?? 0;
    dislikeCounts = widget.tutorialComment.dislikeCounts ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRoute.profileView.name, extra: {
                  "userId": widget.tutorialComment.userId?.id ?? "",
                  "isSelfProfile": (widget.tutorialComment.userId?.id ?? "") == AppConstants.userId,
                  },
                );
              },
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  if ((widget.tutorialComment
                                  .userId
                                  ?.profilePhoto ??
                              "") ==
                          "" ||
                      !(widget.tutorialComment
                              .userId
                              ?.profilePhoto
                              ?.contains(
                                  "https://skillcollab",) ??
                          true))
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding:
                          const EdgeInsets.all(
                              8.0,),
                      child: SvgPicture.asset(
                          'assets/icons/account-pic.svg',),
                    )
                  else
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(widget.tutorialComment
                                  .userId
                                  ?.profilePhoto ??
                              "",),
                      radius: 25,
                    ),
                ],
              ),
            ),
            const SizedBox(width: 7),
            Expanded(
                child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                gapH4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": widget.tutorialComment.userId?.id ?? "",
                          "isSelfProfile": (widget.tutorialComment.userId?.id ?? "") == AppConstants.userId,
                          },
                        );
                      },
                      child: Text(
                        "${widget.tutorialComment.userId?.firstName ?? ""} ${widget.tutorialComment.userId?.lastName ?? ""}",
                        style: const TextStyle(
                            color: primaryColor,
                            fontWeight:
                                FontWeight.w700,
                            fontSize: 18,),
                      ),
                    ),
                    if(widget.tutorialComment.userId?.id == AppConstants.userId) GestureDetector(
                      onTap: (){
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
                            height: 130.h,
                            child: 
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 28, right: 16),
                                    child: Icon(Icons.close),
                                  ),
                                ),
                                ],),
                                // const SizedBox(height: 40,),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      editController.text = widget.tutorialComment.comment ?? "";
                                    });
                                    showDialog(
                                      context: context, 
                                      builder: (BuildContext context) {
                                      return AlertDialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      title: const Center(child: Text("Edit Comment", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: primaryColor),)),
                                      content: SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.17,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 80.h,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFF8F7F9),
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: TextFormField(
                                                  // initialValue: widget.commentDetails.comment,
                                                  controller: editController,
                                                  // enabled: false,
                                                  cursorColor: primaryColor,
                                                  textCapitalization: TextCapitalization.sentences,
                                                  decoration: const InputDecoration(
                                                    contentPadding: EdgeInsets.only(
                                                      left: 10,
                                                    ),
                                                    border: InputBorder.none,
                                                    focusedBorder: InputBorder.none,
                                                    enabledBorder: InputBorder.none,
                                                    hintText: "Add a Comment....",
                                                    hintStyle: TextStyle(
                                                      color: kGrey,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            gapH16,
                                            SizedBox(
                                              height: 45,
                                              width: MediaQuery.of(context).size.width / 1.3,
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                  ref.read(tutorialDetailModel).editComment(context, EditCommentRequestModel(comment: editController.text, type: "post"), widget.tutorialComment.id ?? '').then((value) {
                                                    // ref.read(tutorialDetailModel).getTutorialComment(context, widget.tutorialComment.postId ?? '');
                                                    showCustomSnackBar(context, text: "Comment Edited Successfully", color: Colors.green);
                                                  });
                                                },
                                                child: const CustomButton(
                                                  
                                                  text: "Edit",
                                                ),
                                              ),
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                    );
                                    },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(children: [
                                      const Icon(
                                        Icons.edit,
                                        size: 20,
                                      ),
                                      // Image.asset("assets/icons/drop_down_message.png", color: Colors.black,),
                                      const SizedBox(width: AppSizes.p10,),
                                      Text("Edit",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
                                    ],),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
                                  child: Container(
                                    height: 0.5,
                                    color: Colors.grey,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    ref.read(tutorialDetailModel).deleteComment(
                                      context, 
                                      DeleteCommentTutorialRequestModel(tutorialId: widget.tutorialComment.tutorialId ?? "", type: 'tutorial'), 
                                      widget.tutorialComment.id ?? '',
                                    );
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(children: [
                                      const Icon(Icons.delete, color: Colors.red, size: 20,),
                                      // Image.asset("assets/icons/drop_down_report.png", color: Colors.black,),
                                      const SizedBox(width: AppSizes.p10,),
                                      Text("Delete",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
                                    ],),),
                                ),
                                gapH10,
                              ],
                            )
                                ,
                          ),);
                      },
                      child: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                Text(
                  DateFormat.MMMd().format(
                      widget.tutorialComment
                              .createdAt ??
                          DateTime.now(),),
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,),
                ),
                gapH4,
                // Text(
                //   "Reply to ${widget.tutorialComment.userId?.firstName ?? ""} ${widget.tutorialComment.userId?.lastName ?? ""}",
                //   style: TextStyle(
                //       fontSize: 12,
                //       color:
                //           Colors.grey.shade700,
                //       fontWeight:
                //           FontWeight.w500),
                // ),
                // gapH10,
                Text(
                    widget.tutorialComment.comment ?? "",
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,),),
                // gapH10,
                // const Text("A pariatur autem in voluptatem odit ut magni doloremque sit iste modi sit voluptas omnis nam soluta dolorem eum iste cupiditate.", style: TextStyle(fontSize: 14, color: Colors.grey)),
                gapH12,
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upvote = !upvote;
                              if(upvote == false) {
                                likeCounts--;
                              } else {
                                likeCounts++;
                              }

                              if(downvote) {
                                downvote = false;
                                dislikeCounts--;
                              }
                            });

                            final TutorialCommentLikeDislikeRequestModel tutorialCommentLikeDislikeRequestModel = TutorialCommentLikeDislikeRequestModel(
                              isLike: upvote,
                              isDislike: downvote,
                              commentId: widget.tutorialComment.id ?? "",
                              type: 'comment',
                            );
                            ref.read(tutorialDetailModel).tutorialCommentLikeDislike(context, tutorialCommentLikeDislikeRequestModel, widget.tutorialComment.tutorialId ?? "");

                            HapticFeedback.heavyImpact();
                          },
                          child: Icon(
                            Icons.thumb_up,
                            color: upvote ? Colors.green : kGrey,
                          ),
                        ),
                        gapW4,
                        Text("$likeCounts"),
                        gapW10,
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              downvote = !downvote;
                              if(downvote == false) {
                                dislikeCounts--;
                              } else {
                                dislikeCounts++;
                              }

                              if(upvote) {
                                upvote = false;
                                likeCounts--;
                              }
                            });

                            final TutorialCommentLikeDislikeRequestModel tutorialCommentLikeDislikeRequestModel = TutorialCommentLikeDislikeRequestModel(
                              isLike: upvote,
                              isDislike: downvote,
                              commentId: widget.tutorialComment.id ?? "",
                              type: 'comment',
                            );
                            ref.read(tutorialDetailModel).tutorialCommentLikeDislike(context, tutorialCommentLikeDislikeRequestModel, widget.tutorialComment.tutorialId ?? "");

                            HapticFeedback.heavyImpact();
                          },
                          child: Icon(
                            Icons.thumb_down,
                            color: downvote ? Colors.redAccent : kGrey,
                          ),
                        ),
                        gapW4,
                        Text("$dislikeCounts"),
                        gapW10,
                        // const Text("267", style: TextStyle(fontSize: 18, color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
                // const SizedBox(height: 15,),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     const Stack(
                //       alignment: Alignment.topLeft,
                //       children: [
                //         CircleAvatar(backgroundImage: AssetImage("assets/icons/peoplePic.png"),radius: 20,),
                //       ],
                //     ),

                //     const SizedBox(width: 7),
                //     Expanded(
                //       child: Container(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             gapH4,
                //             const Text(
                //               "Jhon Doe",
                //               style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 18),
                //             ),
                //             const Text("Mar 26", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),),
                //             gapH16,
                //             Text("Replying to jhon doe", style: TextStyle(fontSize: 12, color: Colors.grey.shade700, fontWeight: FontWeight.w500),),
                //             gapH10,
                //             const Text("Et assumenda quidem et facilis inventore est accusantium laboriosam", style: TextStyle(fontSize: 14, color: Colors.grey)),
                //             gapH10,
                //             const Text("A pariatur autem in voluptatem odit ut magni doloremque sit iste modi sit voluptas omnis nam soluta dolorem eum iste cupiditate.", style: TextStyle(fontSize: 14, color: Colors.grey)),
                //             gapH12,
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Row(
                //                   children: [
                //                     SvgPicture.asset(
                //                       'assets/icons/upvoteComment.svg',
                //                       height: 20,
                //                     ),
                //                     gapW10,
                //                     SvgPicture.asset(
                //                       'assets/icons/downvoteComment.svg',
                //                       height: 20,
                //                     ),
                //                     gapW10,
                //                     SvgPicture.asset(
                //                       'assets/icons/postCommentIcon.svg',
                //                       height: 20,
                //                     ),
                //                     gapW10,
                //                     const Text("267", style: TextStyle(fontSize: 18, color: Colors.grey),),
                //                   ],
                //                 ),
                //                 const Text(
                //                   "Reply",
                //                   style: TextStyle(
                //                     fontSize: 14,
                //                     fontWeight: FontWeight.w600,
                //                     color: primaryColor
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ],
                //         ),
                //       )
                //     )
                //   ],
                // ),
              ],
            ),),
          ],
        ),
        gapH16,
        // Container(
        //   color: Colors.grey,
        //   height: 1,
        // ),
        // gapH16
      ],

    );
  }
}
