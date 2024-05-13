// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

class PublicGroupPostsListTile extends ConsumerStatefulWidget {
  final Post postData;
  final int index;
  final String privacy;
  const PublicGroupPostsListTile({super.key, required this.postData, required this.index, required this.privacy});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PublicGroupPostsListTileState();
}

class _PublicGroupPostsListTileState extends ConsumerState<PublicGroupPostsListTile> {

  bool upvote = false;
  bool downvote = false;
  Uint8List? _image;
  int likeCounts = 0;
  int dislikeCounts = 0;
  bool isVideoPlaying = false;
  bool isPlay = false;
  bool isPressed = false;
  // File file = File("");
  final TextEditingController _reportController = TextEditingController();
  bool videoLoader = true;


  @override
  void initState() {
    super.initState();
    Logger.printInfo(widget.index.toString());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(publicGroupProfileViewModel).postionControl(-1);

      //! INITIALIZING THE VIDEO CONTROLLER IFF A VIDEO URL IS PRESENT
      if(widget.postData.videoUrl != null && widget.postData.videoUrl != "") {
        final fileName = await VideoThumbnail.thumbnailFile(
          video: widget.postData.videoUrl!,
          thumbnailPath: (await getTemporaryDirectory()).path,
          imageFormat: ImageFormat.JPEG,
          maxHeight: 2000,
        );
        _image = File(fileName!).readAsBytesSync();
      }   
    });
    
    upvote = widget.postData.likeDislike?.isLike ?? false;
    downvote = widget.postData.likeDislike?.isDislike ?? false;
    likeCounts = widget.postData.likeCounts ?? 0;
    dislikeCounts = widget.postData.dislikeCounts ?? 0;

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        videoLoader = false;
      });
    });
  }

  @override
  void dispose() {
    // _videoController..initialize()..pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return IgnorePointer(
      ignoring: widget.postData.isBan == true || widget.postData.isBan == true,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                color: kWhite,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFFE1E1EF),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Logger.printInfo(widget.postData.userId.toString() ?? "");
                            context
                                .pushNamed(AppRoute.profileView.name, extra: {
                              "userId": widget.postData.userId?.id ??
                                  "",
                              "isSelfProfile": (widget.postData.userId?.id ??
                                      "") ==
                                  AppConstants.userId,
                            },).then((value) {
                              ref.read(userProfileViewModel).followStatusUser(
                                  widget.postData
                                          .userId?.id ??
                                      "",
                                  load: false,);
                              ref.read(userProfileViewModel).getUserById(
                                  context,
                                  widget.postData
                                          .userId?.id ??
                                      "",);
                              // ref.read(userProfileViewModel).getSelfPost(context, const GetPostsUserRequestModel(type: "public"));
                              ref.read(userProfileViewModel).getPostsByUserId(
                                  context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"),
                                  widget.postData
                                          .userId?.id ??
                                      "",);
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                padding: !(widget.postData.userId?.profilePhoto
                                            ?.contains("https://skill") ??
                                        false)
                                    ? const EdgeInsets.all(8)
                                    : EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: kWhite,
                                ),
                                child: !(widget.postData.userId?.profilePhoto
                                            ?.contains("https://skill") ??
                                        false)
                                    ? Image.asset(
                                        "assets/icons/user.png",
                                        height: 20,
                                        width: 20,
                                      )
                                    : ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50),
                                        child: Image.network(
                                          widget.postData.userId?.profilePhoto ??
                                              "",
                                          fit: BoxFit.cover,
                                        ),),
                              ),
                              gapW6,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // context.pushNamed(AppRoute.profileView.name, extra: )
                                      context.pushNamed(AppRoute.profileView.name, extra: {
                                        "userId": widget.postData.userId?.id ?? "",
                                        "isSelfProfile": (widget.postData.userId?.id ?? "") == AppConstants.userId,
                                        },
                                      );
                                    },
                                    child: Text(
                                      "${widget.postData.userId?.firstName ?? ""}  ${widget.postData.userId?.lastName ?? ""}",
                                      // "firstName lastName",
                                      style: const TextStyle(
                                        color: primaryColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      if ((widget.postData.userId?.expertise != null) || (widget.postData.userId?.expertise?.isNotEmpty ?? false)) 
                                        Text(
                                          widget.postData.userId?.expertise ?? "", 
                                          style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 10),
                                        ) 
                                      else 
                                        const SizedBox.shrink(),
                                      gapW4,
                                      SvgPicture.asset('assets/icons/followers.svg',),
                                      gapW4,
                                      Text(
                                        "${widget.postData.followers?.length ?? 0}".length > 3
                                      ? "${"${widget.postData.followers?.length ?? 0}".substring(0, "${widget.postData.followers?.length ?? 0}".length - 3)}k"
                                      : "${widget.postData.followers?.length ?? 0}",
                                        style: const TextStyle(
                                          color: kBlack,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Text(
                                  //   "posted on ${DateFormat.E().format(widget.postData.createdAt ?? DateTime.now())} at ${DateFormat.jm().format(widget.postData.createdAt ?? DateTime.now())}",
                                  // ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Color(0xFF979C9E),
                                        size: 12,
                                      ),
                                      gapW4,
                                      Text(
                                        DateFormat.yMMMMd('en_US').format(widget.postData.createdAt?.toLocal() ?? DateTime.now().toLocal()),
                                        style: const TextStyle(
                                          color: Color(0xFF979C9E),
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      gapW4,
                                      const Icon(
                                        Icons.timer_outlined,
                                        color: Color(0xFF979C9E),
                                        size: 12,
                                      ),
                                      gapW4,
                                      Text(
                                        DateFormat.jm().format(widget.postData.createdAt?.toLocal() ?? DateTime.now().toLocal()),
                                        style: const TextStyle(
                                          color:Color(0xFF979C9E),
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Column(
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [
                              //     Text(
                              //       "${widget.postData.userId?.firstName ?? ""}  ${widget.postData.userId?.lastName ?? ""}",
                              //       // "firstName lastName",
                              //       style: const TextStyle(
                              //         color: primaryColor,
                              //         fontSize: 17,
                              //         fontWeight: FontWeight.w600,
                              //       ),
                              //     ),
                              //     gapH4,
                              //     Row(
                              //       children: [
                              //         Text(
                              //           "${widget.postData.userId?.firstName ?? ''} ${widget.postData.userId?.lastName ?? ''}",
                              //           overflow: TextOverflow.ellipsis,
                              //           style: TextStyle(
                              //             fontSize: 12,
                              //             fontWeight: FontWeight.w700,
                              //             color: Colors.grey.shade600,
                              //           ),
                              //         ),
                              //         gapW4,
                              //         if ((widget.postData.userId?.expertise != null) || (widget.postData.userId?.expertise?.isNotEmpty ?? false)) 
                              //           Text(
                              //             "(${widget.postData.userId?.expertise ?? ""})", 
                              //             overflow: TextOverflow.ellipsis,
                              //             style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                              //           ) 
                              //         else 
                              //           const SizedBox.shrink(),
                              //       ],
                              //     ),
                              //     gapH4,
                              //     Row(
                              //       children: [
                              //         const Icon(
                              //           Icons.calendar_month,
                              //           color: Color(0xFF979C9E),
                              //           size: 12,
                              //         ),
                              //         gapW4,
                              //         Text(
                              //           DateFormat.yMMMMd('en_US').format(widget.postData.createdAt?.toLocal() ?? DateTime.now().toLocal()),
                              //           style: const TextStyle(
                              //             color: Color(0xFF979C9E),
                              //             fontSize: 10,
                              //             fontFamily: 'Inter',
                              //             fontWeight: FontWeight.w600,
                              //           ),
                              //         ),
                              //         gapW4,
                              //         const Icon(
                              //           Icons.timer_outlined,
                              //           color: Color(0xFF979C9E),
                              //           size: 12,
                              //         ),
                              //         gapW4,
                              //         Text(
                              //           DateFormat.jm().format(widget.postData.createdAt?.toLocal() ?? DateTime.now().toLocal()),
                              //           style: const TextStyle(
                              //             color:Color(0xFF979C9E),
                              //             fontSize: 10,
                              //             fontFamily: 'Inter',
                              //             fontWeight: FontWeight.w600,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        // Container(
                        //   height: AppSizes.p32,
                        //   width: AppSizes.p32,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(8),
                        //     color: primaryColor,
                        //   ),
                        //   child: const Icon(
                        //     Icons.person_add_alt_outlined,
                        //     color: kWhite,
                        //     size: AppSizes.p20,
                        //   ),
                        // ),
                        gapW16,
                        InkWell(
                          onTap: () {
                            if(widget.postData.userId?.id  == AppConstants.userId){
                              _showUserPostEditOptionBottomSheet(context,  widget.postData.description ?? "", widget.postData.id ?? "", ref.watch(userProfileViewModel).getPostsByUserId, widget.postData.privacy ?? "", widget.postData.userId?.id ?? '');
                            } else{
                              _showUserPostReportOptionBottomSheet(context);
                            }
                          },
                          child: const Icon(
                            Icons.more_horiz,
                            color:  kBlack,
                            size: AppSizes.p20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // gapH16,
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id)
                        .then((value) {
                            // _videoController.dispose();
                            ref.read(singlePostViewModel).clearComments();
                            ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",);
                        });
                    },
                    child: Container(
                      color: widget.postData.bgColor!.isEmpty ? kWhite :  Color(int.parse(AppConstants.formatColor(widget.postData.bgColor ?? "0xffffffff"))),
                        
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: (widget.postData.description ?? "").length > 100 
                                      ? "${(widget.postData.description ?? "").substring(0, 101)}..." 
                                      : widget.postData.description ?? "",
                                      style: TextStyle(
                                        color: AppConstants.formatColor( widget.postData.bgColor ?? "",) == '0xff54b3bf' 
                                      || AppConstants.formatColor( widget.postData.bgColor ?? "",) == '0xff59cc66' 
                                      || AppConstants.formatColor( widget.postData.bgColor ?? "",) == '0xffff6666'
                                                ? Colors.white
                                                : kBlack,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                                  TextSpan(
                                    text: (widget.postData.description ?? "").length > 100 ? " Read More" : "",
                                    style: TextStyle(
                                      color: AppConstants.formatColor( widget.postData.bgColor ?? "",) == '0xff54b3bf' 
                                      || AppConstants.formatColor( widget.postData.bgColor ?? "",) == '0xff59cc66' 
                                      || AppConstants.formatColor( widget.postData.bgColor ?? "",) == '0xffff6666'
                                                ? Colors.white
                                                : primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // gapH16,
                          // const Text("#Gardening#garden#veggies#expertgardening...."),
                          if (widget.postData
                                            .postImage ==
                                        null ||
                                    (!widget.postData.postImage!
                                            .contains('.jpg') &&
                                        !widget.postData.postImage!
                                            .contains('.png')) ||
                                    !widget.postData
                                        .postImage!
                                        .contains('http') ||
                                    widget.postData
                                        .postImage!.isEmpty) Container() else gapH16,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.postData
                                            .postImage ==
                                        null ||
                                    (!widget.postData.postImage!
                                            .contains('.jpg') &&
                                        !widget.postData.postImage!
                                            .contains('.png')) ||
                                    !widget.postData
                                        .postImage!
                                        .contains('http') ||
                                    widget.postData
                                        .postImage!.isEmpty
                                ? Container()
                                :  ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: WidgetZoom(
                                        heroAnimationTag: 'tag',
                                        zoomWidget: Image.network(
                                            widget.postData.postImage ?? "",
                                            fit: BoxFit.contain,
                                        ),
                                    ),
                                      ),
                          ),
                          if (widget.postData.gif == null 
                                  ||(!widget.postData.gif!.contains('.gif')) 
                                  || !widget.postData.gif!.contains('http') 
                                  || widget.postData.gif!.isEmpty) Container() else gapH16,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.postData.gif == null 
                                  ||(!widget.postData.gif!.contains('.gif')) 
                                  || !widget.postData.gif!.contains('http') 
                                  || widget.postData.gif!.isEmpty
                                ? Container()
                                : ClipRRect(
                                    // borderRadius: BorderRadius.circular(18),
                                    child: Image.network(
                                      widget.postData.gif ?? "",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                          // gapH10,
                          

                          SizedBox(
                              child: widget.postData.videoUrl != null && widget.postData.videoUrl != ""
                                ? videoLoader 
                                  ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
                                  : GestureDetector(
                                    onTap: () {
                                      if(!(widget.postData.videoUrl?.contains("https://skill") ?? true)) {
                                        showCustomSnackBar(context, text: "Video not available", color: Colors.redAccent);
                                      } else {
                                        // context.pushNamed(AppRoute.videoPlayerPage.name, extra: widget.postData.videoUrl);
                                        context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id).then((value) {
                                          ref.read(dashboardViewModel).callAllData(context);
                                        });
                                      }
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        if (_image == null) Container(
                                          width: size.width,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            image: const DecorationImage(
                                              image: AssetImage("assets/images/no-image.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ) else Container(
                                          width: size.width,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                          ),
                                          child: Image.memory(_image!),      
                                        ),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: kWhite,
                                            borderRadius: BorderRadius.circular(80),
                                          ),
                                          child: const Center(
                                            child: Icon(Icons.play_arrow_rounded, color: primaryColor,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(),
                            ),


                          if (widget.postData.checkInImage ==
                                  null ||
                              (!widget.postData.checkInImage!
                                      .contains('.jpg') &&
                                  !widget.postData.checkIn!
                                      .contains('.png')) ||
                              !widget.postData.checkInImage!
                                  .contains('http') ||
                              widget.postData.checkInImage!.isEmpty) Container() else gapH10,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.postData.checkInImage ==
                                  null ||
                              (!widget.postData.checkInImage!
                                      .contains('.jpg') &&
                                  !widget.postData.checkIn!
                                      .contains('.png')) ||
                              !widget.postData.checkInImage!
                                  .contains('http') ||
                              widget.postData.checkInImage!.isEmpty
                            ? Container()
                            : ClipRRect(
                              // borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                widget.postData.checkInImage!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  gapH10,
                  Padding(
                    padding:  const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id)
                              .then((value) {
                                  // _videoController.dispose();
                                  ref.read(singlePostViewModel).clearComments();
                              });
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                padding: !(ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto
                                            ?.contains("https://skill") ??
                                        false)
                                    ? const EdgeInsets.all(8)
                                    : EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: kWhite,
                                ),
                                child: !(ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto
                                            ?.contains("https://skill") ??
                                        false)
                                    ? Image.asset(
                                        "assets/icons/user.png",
                                        height: 20,
                                        width: 20,
                                      )
                                    : ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? "",
                                          fit: BoxFit.cover,
                                        ),),
                              ),
                            ],
                          ),
                        ),
                        gapW10,
                        Expanded(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F7F9),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id)
                                  .then((value) {
                                      // _videoController.dispose();
                                      ref.read(singlePostViewModel).clearComments();
                                      ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",);
                                  });
                              },
                              child: TextFormField(
                                enabled: false,
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
                        ),
                        gapW10,
                        InkWell(
                          onTap: () async {
                            setState(() {
                              upvote = !upvote;
                              if(upvote) {
                                likeCounts++;
                              } else {
                                likeCounts--;
                              }

                              if(downvote) {
                                downvote = false;
                                dislikeCounts--;
                              }
                            });
                          
                            await ref.read(singlePostViewModel).likeDislikePost(
                              context, 
                              LikeDislikeRequestModel(
                                isLike: upvote,
                                isDislike: downvote,
                                postId: widget.postData.id ?? "",
                                type: 'post',
                              ),
                            ).then((value) async {
                              Future.delayed(const Duration(seconds: 1), () {
                                ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: ""), widget.postData.groupId ?? "");
                              });
                            });
                          },
                          child: Icon(
                            Icons.thumb_up,
                            color: upvote ? Colors.green : kGrey,
                          ),
                        ),
                        gapW4,
                        Text("$likeCounts"),
                        gapW10,
                        InkWell(
                          onTap: () async {
                            setState(() {
                              downvote = !downvote;
                              if(downvote) {
                                dislikeCounts++;
                              } else {
                                dislikeCounts--;
                              }

                              if(upvote) {
                                upvote = false;
                                likeCounts--;
                              }
                            });
                          
                            await ref.read(singlePostViewModel).likeDislikePost(
                              context, 
                              LikeDislikeRequestModel(
                                isLike: upvote,
                                isDislike: downvote,
                                postId: widget.postData.id ?? "",
                                type: 'post',
                              ),
                            ).then((value) async {
                              Future.delayed(const Duration(seconds: 1), () {
                                ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: ""), widget.postData.groupId ?? "");
                              });
                            });
                          },
                          child: Icon(
                            Icons.thumb_down,
                            color: downvote ? Colors.redAccent : kGrey,
                          ),
                        ),
                        gapW4,
                        Text("$dislikeCounts"),
                      ],
                    ),
                  ),
                  gapH4,
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id)
                        .then((value) {
                            // _videoController.dispose();
                            ref.read(singlePostViewModel).clearComments();
                            ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",);
                        });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/postCommentIcon.svg',
                            height: 25,
                          ),
                          gapW10,
                          Text(
                            widget.postData.commentCounts
                                .toString(),
                            style: const TextStyle(
                              color: kBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Share.share("https://www.app.skillcollab.com/home/feeds/${widget.postData.slug ?? ""}");
                            }, 
                            icon: const Icon(Icons.share_outlined, color: kGrey,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         context.pushNamed(AppRoute.sinlgePost.name, extra: _viewModel.postsByGroupModel.data![index]).then((value) {
                  //           ref.read(singlePostViewModel).clearComments();
                  //         });
                  //       },
                  //       child: Row(
                  //         children: [
                  //           SvgPicture.asset(
                  //             'assets/icons/postCommentIcon.svg',
                  //             height: 25,
                  //           ),
                  //           gapW10,
                  //           Text(
                  //             _viewModel.postsByGroupModel.data![index].commentCounts.toString(),
                  //             style: const TextStyle(
                  //               color: kBlack,
                  //               fontSize: 17,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     const Spacer(),
                  //     SvgPicture.asset(
                  //       'assets/icons/postShareIcon.svg',
                  //       height: 25,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
          if (widget.postData.isBan == true || widget.postData.userId?.isBan == true) Positioned.fill(
            top: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                          Image.asset('assets/icons/block.png', height: 50, width: 50,),
                          gapH12,
                          const Text(
                            'Post is not appropriate as per community guideline',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 20),
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

  Future<void> _showUserPostEditOptionBottomSheet(BuildContext context, String postDescription, String postId, Function getPost, String privacy, String userId) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // final _viewModel = ref.watch(userProfileViewModel);
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.edit,size: 20,),
                title: const Text('Edit Post'),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreatePostView(groupId: "null", privacy: privacy, postDescription: postDescription, isEdit: true, postId:postId),
                    ),
                  )
                  .then((value) {
                    try {
                      if(widget.privacy == 'public') {
                        ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",).whenComplete(() {
                          context.pop();
                        });
                      }else if(widget.privacy == 'private'){
                        ref.read(privateGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",).whenComplete(() {
                          context.pop();
                        });
                      } else if(widget.privacy == 'premium'){
                        ref.read(premiumGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",).whenComplete(() {
                          context.pop();
                        });
                      }
                      
                    } catch(e) {
                      Logger.printInfo(e.toString());
                    }
                  }),

                }, 
              ),
              // ListTile(
              //   leading: const Icon(Icons.lock,size: 20,),
              //   title: const Text('Change Privacy'),
              //   onTap: () => {}, 
              // ),
              ListTile(
                leading: const Icon(Icons.delete,size: 20,),
                title: const Text('Remove Post'),
                onTap: () {
                  // Logger.printError(widget.postData.toString());
                  ref.watch(userProfileViewModel).deletePost(context, postId).then((value) {
                    try {
                      Logger.printError(widget.privacy);
                      if(widget.privacy == 'public') {
                        ref.read(publicGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",).whenComplete(() {
                          context.pop();
                        });
                      }else if(widget.privacy == 'private'){
                        ref.read(privateGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",).whenComplete(() {
                          context.pop();
                        });
                      } else if(widget.privacy == 'premium'){
                        ref.read(premiumGroupProfileViewModel).getPostsByGroup(context, const GetPostsByGroupRequestModel(searchKey: "", timeFilter: "alltime"), widget.postData.groupId ?? "",).whenComplete(() {
                          context.pop();
                        });
                      } else {
                        context.pop();
                      }
                      
                    } catch(e) {
                      Logger.printInfo(e.toString());
                    }
                    // setState(() {});
                    // Future.delayed(Duration(seconds: 5), () => Navigator.pop(context));
                  });
                }, 
              ), 
            ],
          ),
        );
      },
    );
  }

  Future<void> _showUserPostReportOptionBottomSheet(BuildContext context) async {
    // showModalBottomSheet(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return SafeArea(
    //       child: Wrap(
    //         children: <Widget>[
    //           ListTile(
    //             leading: const Icon(Icons.report,size: 20,),
    //             title: const Text('Report'),
    //             onTap: () {
    //               showDialog(
    //                   context: context, 
    //                   builder: (BuildContext context) {
    //                   return AlertDialog(
    //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    //                   title: const Center(child: Text("Report Post", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)),
    //                   content: SizedBox(
    //                     height: MediaQuery.of(context).size.height / 5,
    //                     child: Column(
    //                       children: [
    //                         CommonTextField(
                              
    //                           hintText: 'Write a Report Message !',
    //                           controller: _reportController,
    //                           maxLines: 3,
    //                         ),
    //                         gapH16,
    //                         SizedBox(
    //                           height: 45,
    //                           width: MediaQuery.of(context).size.width / 1.3,
    //                           child: GestureDetector(
    //                             onTap: () {
    //                               Navigator.pop(context);
    //                               Navigator.pop(context);
    //                               ref.read(dashboardViewModel).getReport(context, ReportRequestModel(
    //                                 content: "$_reportController",
    //                                 toUserId: widget.postData.userId?.id ?? "",
    //                                 type: 'post'
    //                               ));
    //                               showCustomSnackBar(context, text: "Reported Post Successfully", color: Colors.green);
    //                             },
    //                             child: const CustomButton(
                                  
    //                               text: "Report",
    //                             ),
    //                           ),
    //                         ),
                            
    //                       ],
    //                     ),
    //                   ),
    //                 );
    //                 }
    //                 );
    //             }, 
    //           ),
              
    //         ],
    //       ),
    //     );
    //   },
    // );
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
                final UserModel peerUserModel = UserModel(
                  id: widget.postData.userId?.id ?? "",
                  coverPhoto: widget.postData.userId?.coverPhoto ?? "",
                  profilePhoto: widget.postData.userId?.profilePhoto ?? "",
                  description: widget.postData.userId?.description ?? "",
                  email: widget.postData.userId?.email ?? "",
                  firstName: widget.postData.userId?.firstName ?? "",
                  lastName: widget.postData.userId?.lastName ?? "",
                  userName: widget.postData.userId?.userName ?? "",
                );
                context.pushNamed(AppRoute.chatRoom.name, extra: peerUserModel);
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: [
                  Image.asset("assets/icons/drop_down_message.png", color: Colors.black,),
                  const SizedBox(width: AppSizes.p10,),
                  Text("Message",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
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

            //  InkWell(
            //   onTap: (){},
            //    child: Padding(
            //     padding: const EdgeInsets.all(12.0),
            //     child: Row(children: [
            //       Image.asset("assets/icons/drop_down_hide.png"),
            //       const SizedBox(width: AppSizes.p10,),
            //       Text("Hide",style: GoogleFonts.inter(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500,),)
            //     ],),
            //                                  ),
            //  ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
              child: Container(
                height: 0.5,
                color: Colors.grey,
              ),
            ),
          

          InkWell(
            onTap: () {
              //--------------------Showing Dialog --------------------//
              showDialog(
                context: context, 
                builder: (BuildContext context) {
                return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                title: const Center(child: Text("Report Post", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CommonTextField(
                      
                      hintText: 'Write a Report Message !',
                      controller: _reportController,
                      maxLines: 3,
                    ),
                    gapH16,
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          ref.read(dashboardViewModel).getReport(context, ReportRequestModel(
                            content: "$_reportController",
                            postId: widget.postData.userId?.id ?? "",
                            type: 'post',
                          ),);
                          showCustomSnackBar(context, text: "Reported Post Successfully", color: Colors.green);
                        },
                        child: const CustomButton(
                          text: "Report",
                        ),
                      ),
                    ),
                    
                  ],
                ),
              );
              },
              );
              
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(children: [
                Image.asset("assets/icons/drop_down_report.png", color: Colors.black,),
                const SizedBox(width: AppSizes.p10,),
                Text("Report",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
              ],),),
          ),
          gapH32,
        ],
      ),
    ),);
  }
}
