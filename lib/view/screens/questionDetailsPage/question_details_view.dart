// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/comments/add_comment/models/question_comment_model.dart';
import 'package:skill_colab/data/remote/questions/comments/get_comment/models/get_question_comment_model.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/data/remote/questions/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/question_comments_tile.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/question_details_view_model.dart';

class QuestionDetailsPage extends ConsumerStatefulWidget {
  final QuestionData questionDetail;
  const QuestionDetailsPage({super.key, required this.questionDetail});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _QuestionDetailsPageState();
}

class _QuestionDetailsPageState extends ConsumerState<QuestionDetailsPage>
    with BaseScreenView {
  late QuestionDetailViewModel _viewModel;
  bool isLike = false;
  bool isDislike = false;
  int likeCounts = 0;
  int dislikeCounts = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(questionDetailModel);
      // Logger.printSuccess(_viewModel.loading.toString());
      _viewModel.getQuestionComment(context, widget.questionDetail.id ?? "");
      isLike = widget.questionDetail.likeDislike?.isLike ?? false;
      isDislike = widget.questionDetail.likeDislike?.isDislike ?? false;
      likeCounts = widget.questionDetail.likeCounts ?? 0;
      dislikeCounts = widget.questionDetail.dislikeCounts ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(questionDetailModel);
    final size = MediaQuery.of(context).size;
    return PopScope(
      onPopInvoked: (didPop) async {
         if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{        
            // Navigator.pop(context);
          }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () async {
                Navigator.pop(context);
                // _viewModel.likeDislikeQuestion(
                //     context,
                //     LikeDislikeRequestModel(
                //         isLike: isLike,
                //         isDislike: isDislike,
                //         type: "question",
                //         questionId: widget.questionDetail.id ?? "",),).then((value) {
                //         });
                
                //post logic
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
            ref.read(publicGroupProfileViewModel).groupData?.name ?? "",
            style: const TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              gapH32,
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoute.profileView.name, extra: {
                    "userId": widget.questionDetail.userId?.id ?? "",
                    "isSelfProfile": (widget.questionDetail.userId?.id ?? "") == AppConstants.userId,
                    },
                  );
                },
                child: Container(
                  width: size.width,
                  height: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [CustomBoxShadow()],),
                  child: Row(
                    children: [
                      gapW10,
                      if ((widget.questionDetail.userId?.profilePhoto ?? "") ==
                              "" ||
                          !(widget.questionDetail.userId?.profilePhoto
                                  ?.contains("https://skillcollab") ??
                              true))
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/account-pic.svg'),
                        )
                      else
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              widget.questionDetail.userId?.profilePhoto ?? "",),
                          radius: 24,
                        ),
                      gapW10,
                      Text(
                        "${widget.questionDetail.userId?.firstName ?? ""} ${widget.questionDetail.userId?.lastName ?? ""}",
                        style: const TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              // gapH32,
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
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
                    color: widget.questionDetail.bgColor?.isEmpty ?? false ? kWhite : Color(int.parse(AppConstants.formatColor(widget.questionDetail.bgColor ?? "0xffffffff"))),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFFE1E1EF),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
                        child: Text(
                          widget.questionDetail.data?.question ?? "",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xffff6666'
                                  ?  Colors.white
                                  : kBlack,
                              fontWeight: FontWeight.w600,),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: Colors.grey.shade200,
                        height: 2,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          widget.questionDetail.data?.answer ?? "",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xffff6666'
                                  ?  Colors.grey.shade100
                                  : kGrey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      // gapH16,
                      Container(
                        //!==>image box style
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: widget.questionDetail.questionImage == null ||
                                (!widget.questionDetail.questionImage!
                                        .contains('.jpg') &&
                                    !widget.questionDetail.questionImage!
                                        .contains('.png')) ||
                                !widget.questionDetail.questionImage!
                                    .contains('http') ||
                                widget.questionDetail.questionImage!.isEmpty
                            ? Container()
                            : ClipRRect(
                                // borderRadius: BorderRadius.circular(18),
                                child: Image.network(
                                  widget.questionDetail.questionImage!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                      // const Text("\u2022 A pariatur autem in voluptatem odit ut magni doloremque sit iste modi sit voluptas omnis nam soluta dolorem eum iste cupiditate.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 8,),
                      // const Text("\u2022 Qui veniam galisum sed nihil dicta id expedita enim id voluptates nemo 33 nihil provident.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 10,),
                      // const Text("Et doloremque saepe qui tenetur eveniet sit sint reiciendis!", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 8,),
                      // const Text("\u2022 Et assumenda quidem et facilis inventore est accusantium laboriosam", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 8,),
                      // const Text("\u2022 A pariatur autem in voluptatem odit ut magni doloremque sit iste modi sit voluptas omnis nam soluta dolorem eum iste cupiditate.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 8,),
                      // const Text("\u2022 Qui veniam galisum sed nihil dicta id expedita enim id voluptates nemo 33 nihil provident.", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      // const SizedBox(height: 10,),
                      // const Text("Et doloremque saepe qui tenetur eveniet sit sint reiciendis!", style: TextStyle(fontSize: 14, color: Colors.grey),),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isLike = !isLike;
                                  if(isLike == false) {
                                    likeCounts--;
                                  } else {
                                    likeCounts++;
                                  }
                                          
                                  if(isDislike) {
                                    isDislike = false;
                                    dislikeCounts--;
                                  }
                                });
                                          
                                _viewModel.likeDislikeQuestion(
                                  context, 
                                  LikeDislikeRequestModel(
                                    isLike: isLike,
                                    isDislike: isDislike,
                                    type: "question",
                                    questionId: widget.questionDetail.id ?? "",
                                  ),
                                ).then((value) {
                                  ref.read(publicGroupProfileViewModel).getQuestionByGroup(context, widget.questionDetail.groupId ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: ""));
                                });
                              },
                              child: Icon(
                                Icons.thumb_up,
                                size: 20,
                                color: isLike 
                                      ? (AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xffff6666'
                                      ?  Colors.green.shade200
                                      : Colors.green)
                                    : (AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xffff6666'
                                      ?  Colors.grey.shade200
                                      : kGrey),
                              ),
                            ),
                            gapW4,
                            Text("$likeCounts"),
                            gapW10,
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isDislike = !isDislike;
                                  if(isDislike == false) {
                                    dislikeCounts--;
                                  } else {
                                    dislikeCounts++;
                                  }
                                          
                                  if(isLike) {
                                    isLike = false;
                                    likeCounts--;
                                  }
                                });
                                          
                                _viewModel.likeDislikeQuestion(
                                  context, 
                                  LikeDislikeRequestModel(
                                    isLike: isLike,
                                    isDislike: isDislike,
                                    type: "question",
                                    questionId: widget.questionDetail.id ?? "",
                                  ),
                                ).then((value) {
                                  ref.read(publicGroupProfileViewModel).getQuestionByGroup(context, widget.questionDetail.groupId ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: ""));
                                });
                              },
                              child: Icon(
                                Icons.thumb_down_rounded,
                                size: 20,
                                color: isDislike 
                                    ? (AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xffff6666'
                                      ?  Colors.orange[200]
                                      : Colors.orange[900])
                                    : (AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff54b3bf' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xff59cc66' 
                                            || AppConstants.formatColor( widget.questionDetail.bgColor ?? "",) == '0xffff6666'
                                      ?  Colors.grey.shade200
                                      : kGrey),
                              ),
                            ),
                            gapW4,
                            Text("$dislikeCounts"),
                            gapW10,
                            SvgPicture.asset(
                              'assets/icons/postCommentIcon.svg',
                              height: 20,
                            ),
                            gapW10,
                            Text("${_viewModel.getQuestionCommentResponseModel.data?.last.count ?? 0}", style: const TextStyle(fontSize: 18, color: Colors.grey),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.pushNamed(AppRoute.profileView.name, extra: {
                                  "userId": AppConstants.userId,
                                  "isSelfProfile": true,
                                  },
                                );
                              },
                              child: CircleAvatar(
                                backgroundImage: ref.watch(userProfileViewModel).singleUserResponseModel.data?.profilePhoto == null ||
                                        !(ref.watch(userProfileViewModel).singleUserResponseModel.data?.profilePhoto?.contains("https://skill") ??true)
                                    ? Image.asset('assets/icons/user.png').image
                                    : NetworkImage(ref
                                            .watch(userProfileViewModel)
                                            .singleUserResponseModel
                                            .data
                                            ?.profilePhoto ??
                                        AppConstants.imageNotFoundLink,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            gapW10,
                            Expanded(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF8F7F9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextFormField(
                                  controller: _viewModel.commentController,
                                  textCapitalization: TextCapitalization.sentences,
                                  // enabled: false,
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
                            gapW10,
                            InkWell(
                              onTap: () {
                                Logger.printSuccess( _viewModel.commentController.text,);
                                final AddQuestionCommentRequestModel  addQuestionCommentRequestModel = AddQuestionCommentRequestModel(
                                  questionId: widget.questionDetail.id,
                                  comment: _viewModel.commentController.text,
                                  type: "question",
                                );
                                Logger.printSuccess( addQuestionCommentRequestModel.toString(),);
                                _viewModel.commentController.clear();
                                _viewModel.createQuestionsComment( context, addQuestionCommentRequestModel,).then((value) {
                                  if (MediaQuery.of(context).viewInsets.bottom > 0) {
                                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                                  }
                                });
                                // _viewModel.getQuestionComment(context, widget.questionDetail.id ?? "");
                                // _viewModel.addPostComment(context, postCommentRequestModel).then((value) => commentController.clear());
                              },
                              child: SvgPicture.asset(
                                "assets/icons/send-comment.svg",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                        child: SizedBox(
                          child: _viewModel.commentLoader
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: primaryColor,
                                  ),
                                )
                              : ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.only(bottom: 10),
                                  itemCount: _viewModel
                                              .getQuestionCommentResponseModel
                                              .data
                                              ?.isEmpty ??
                                          false
                                      ? 0
                                      : (_viewModel
                                                  .getQuestionCommentResponseModel
                                                  .data
                                                  ?.length ??
                                              0) -
                                          1,
                                  itemBuilder: (context, index) {
                                    return QuestionsCommentsTile(
                                        questionComment: _viewModel
                                                  .getQuestionCommentResponseModel
                                                  .data?[index] ?? const QuestionComment(),
                                      );
                                  },
                                ),
                        ),
                      ),
                  
                      // gapH16,
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
                      //             gapH12,
                      //             OutlinedButton(
                      //               style:OutlinedButton.styleFrom(
                      //                 side: const BorderSide(color: primaryColor),
                      //               ),
                      //               onPressed: () {},
                      //               child: const Text('More Comment', style: TextStyle(color: primaryColor),)
                      //             ),
                      //           ],
                      //         ),
                      //       )
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
