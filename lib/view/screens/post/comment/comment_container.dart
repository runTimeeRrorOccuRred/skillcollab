// ignore_for_file: avoid_bool_literals_in_conditional_expressions, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/getComment/getPostComments/model/get_post_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/likeDislikeComment/models/like_dislike_comment_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';

class CommentContainer extends ConsumerStatefulWidget {
  final Comment commentDetails;
  const CommentContainer({
    super.key,
    required this.commentDetails,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CommentContainerState();
}

class _CommentContainerState extends ConsumerState<CommentContainer> {
  late TextEditingController editController;

  bool upvote = false;
  bool downvote = false;
  int likeCounts = 0;
  int dislikeCounts = 0;

  @override
  void initState() {
    super.initState();
    editController = TextEditingController(text: widget.commentDetails.comment);
    upvote = widget.commentDetails.userLikeDislike?.isLike ?? false;
    downvote = widget.commentDetails.userLikeDislike?.isDislike ?? false;
    likeCounts = widget.commentDetails.likeCounts ?? 0;
    dislikeCounts = widget.commentDetails.dislikeCounts ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        } else {
          context.pop();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(
                  AppRoute.profileView.name,
                  extra: {
                    "userId": widget.commentDetails.userId?.id ?? "",
                    "isSelfProfile": (widget.commentDetails.userId?.id ?? "") ==
                        AppConstants.userId,
                  },
                );

                HapticFeedback.heavyImpact();
              },
              child: SizedBox(
                height: 36,
                width: 36,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: widget.commentDetails.userId?.profilePhoto == null || (widget.commentDetails.userId?.profilePhoto?.isEmpty ?? true) 
                  ? Image.asset("assets/icons/user.png") 
                  : Image.network(
                      widget.commentDetails.userId?.profilePhoto ?? AppConstants.imageNotFoundLink,
                      fit: BoxFit.cover,
                    ) ,
                ),
              ),

              // CircleAvatar(
              //   backgroundColor: Colors.transparent,
              //   backgroundImage: widget.commentDetails.userId?.profilePhoto == null ||
              //           !(widget.commentDetails.userId?.profilePhoto?.contains("https://skill",) ?? true)
              //       ? Image.asset( "assets/icons/user.png",).image
              //       : NetworkImage(widget.commentDetails.userId?.profilePhoto ?? AppConstants.imageNotFoundLink),
              //   radius: 20,
              // ),
            ),
            gapW8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(
                            AppRoute.profileView.name,
                            extra: {
                              "userId": widget.commentDetails.userId?.id ?? "",
                              "isSelfProfile":
                                  (widget.commentDetails.userId?.id ?? "") ==
                                      AppConstants.userId,
                            },
                          );

                          HapticFeedback.heavyImpact();
                        },
                        child: Text(
                          "${widget.commentDetails.userId?.firstName ?? ""} ${widget.commentDetails.userId?.lastName ?? ""}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      if (widget.commentDetails.userId?.id ==
                          AppConstants.userId)
                        GestureDetector(
                          onTap: () {
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
                                child: Column(
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
                                            padding: EdgeInsets.only(
                                                top: 28, right: 16,),
                                            child: Icon(Icons.close),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(height: 40,),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          editController.text = widget.commentDetails.comment ?? "";
                                        });
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10,),),
                                              title: const Center(
                                                  child: Text(
                                                "Edit Comment",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w800,
                                                    color: primaryColor,),
                                              ),),
                                              content: SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.17,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        height: 80.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color(
                                                              0xFFF8F7F9,),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: TextFormField(
                                                          // initialValue: widget.commentDetails.comment,
                                                          controller:
                                                              editController,
                                                          // enabled: false,
                                                          cursorColor:
                                                              primaryColor,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .sentences,
                                                          decoration:
                                                              const InputDecoration(
                                                            contentPadding:
                                                                EdgeInsets.only(
                                                              left: 10,
                                                            ),
                                                            border: InputBorder
                                                                .none,
                                                            focusedBorder:
                                                                InputBorder
                                                                    .none,
                                                            enabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            hintText:
                                                                "Add a Comment....",
                                                            hintStyle:
                                                                TextStyle(
                                                              color: kGrey,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    gapH16,
                                                    SizedBox(
                                                      height: 45,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              1.3,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context,);
                                                          Navigator.pop(
                                                              context,);
                                                          ref
                                                              .read(
                                                                  singlePostViewModel,)
                                                              .editComment(
                                                                  context,
                                                                  EditCommentRequestModel(
                                                                      comment:
                                                                          editController
                                                                              .text,
                                                                      type:
                                                                          "post",),
                                                                  widget.commentDetails
                                                                          .id ??
                                                                      '',)
                                                              .then((value) {
                                                            ref
                                                                .read(
                                                                    singlePostViewModel,)
                                                                .getSinglePostData(
                                                                    context,
                                                                    widget.commentDetails
                                                                            .postId ??
                                                                        '',);
                                                            showCustomSnackBar(
                                                                context,
                                                                text:
                                                                    "Comment Edited Successfully",
                                                                color: Colors
                                                                    .green,);
                                                          });
                                                        },
                                                        child:
                                                            const CustomButton(
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
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            // Image.asset("assets/icons/drop_down_message.png", color: Colors.black,),
                                            const SizedBox(
                                              width: AppSizes.p10,
                                            ),
                                            Text(
                                              "Edit",
                                              style: GoogleFonts.inter(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12.0, 0, 12.0, 0,),
                                      child: Container(
                                        height: 0.5,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        ref
                                            .read(singlePostViewModel)
                                            .deleteComment(
                                                context,
                                                DeleteCommentRequestModel(
                                                    postId: widget
                                                        .commentDetails.postId,
                                                    type: 'post',),
                                                widget.commentDetails.id ?? '',)
                                            .then((value) {
                                          ref
                                              .read(singlePostViewModel)
                                              .getSinglePostData(
                                                  context,
                                                  widget.commentDetails
                                                          .postId ??
                                                      '',);
                                          showCustomSnackBar(context,
                                              text:
                                                  "Comment Deleted Successfully",
                                              color: Colors.red,);
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                            // Image.asset("assets/icons/drop_down_report.png", color: Colors.black,),
                                            const SizedBox(
                                              width: AppSizes.p10,
                                            ),
                                            Text(
                                              "Delete",
                                              style: GoogleFonts.inter(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    gapH10,
                                  ],
                                ),
                              ),
                            );
                          },
                          child: const Icon(Icons.more_horiz),
                        ),
                    ],
                  ),
                  gapH6,
                  Text(
                    DateFormat("MMM d").format(
                      widget.commentDetails.createdAt ?? DateTime.now(),
                    ),
                    style: const TextStyle(color: kGrey),
                  ),
                  gapH12,
                  Text(
                    widget.commentDetails.comment ?? "",
                    style: const TextStyle(
                      color: kBlack,
                      fontSize: 16,
                    ),
                    maxLines: 10,
                  ),
                  gapH12,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            upvote = !upvote;
                            if (upvote == false) {
                              likeCounts--;
                            } else {
                              likeCounts++;
                            }

                            if (downvote) {
                              downvote = false;
                              dislikeCounts--;
                            }
                          });

                          if (upvote) {
                            ref
                                .read(singlePostViewModel)
                                .likeDislikeComment(
                                  LikeDislikeCommentRequestModel(
                                    commentId: widget.commentDetails.id ?? "",
                                    isDislike: false,
                                    isLike: true,
                                    type: "comment",
                                  ),
                                )
                                .then((value) {
                              ref.read(singlePostViewModel).getPostComments(
                                  context, widget.commentDetails.postId ?? "",
                                  load: false,);
                            });
                          } else {
                            ref
                                .read(singlePostViewModel)
                                .likeDislikeComment(
                                  LikeDislikeCommentRequestModel(
                                    commentId: widget.commentDetails.id ?? "",
                                    isDislike: false,
                                    isLike: false,
                                    type: "comment",
                                  ),
                                )
                                .then((value) {
                              ref.read(singlePostViewModel).getPostComments(
                                  context, widget.commentDetails.postId ?? "",
                                  load: false,);
                            });
                          }
                          HapticFeedback.heavyImpact();
                        },
                        child: Icon(
                          Icons.thumb_up,
                          size: 16,
                          color: upvote ? Colors.green : kGrey,
                        ),
                        // SvgPicture.asset(
                        //   "assets/icons/upvoteComment.svg",
                        //   color: upvote ? Colors.green : kGrey,
                        // ),
                      ),
                      gapW4,
                      Text("$likeCounts"),
                      gapW4,
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            downvote = !downvote;
                            if (downvote == false) {
                              dislikeCounts--;
                            } else {
                              dislikeCounts++;
                            }

                            if (upvote) {
                              upvote = false;
                              likeCounts--;
                            }
                          });

                          if (downvote) {
                            ref
                                .read(singlePostViewModel)
                                .likeDislikeComment(
                                  LikeDislikeCommentRequestModel(
                                    commentId: widget.commentDetails.id ?? "",
                                    isDislike: true,
                                    isLike: false,
                                    type: "comment",
                                  ),
                                )
                                .then((value) {
                              ref.read(singlePostViewModel).getPostComments(
                                  context, widget.commentDetails.postId ?? "",
                                  load: false,);
                            });
                          } else {
                            ref
                                .read(singlePostViewModel)
                                .likeDislikeComment(
                                  LikeDislikeCommentRequestModel(
                                    commentId: widget.commentDetails.id ?? "",
                                    isDislike: false,
                                    isLike: false,
                                    type: "comment",
                                  ),
                                )
                                .then((value) {
                              ref.read(singlePostViewModel).getPostComments(
                                  context, widget.commentDetails.postId ?? "",
                                  load: false,);
                            });
                          }

                          HapticFeedback.heavyImpact();
                        },
                        child: Icon(
                          Icons.thumb_down,
                          size: 16,
                          color: downvote ? Colors.redAccent : kGrey,
                        ),
                        // SvgPicture.asset(
                        //   "assets/icons/downvoteComment.svg",
                        //   color: downvote ? Colors.redAccent : kGrey,
                        // ),
                      ),
                      gapW4,
                      Text("$dislikeCounts"),
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
}
