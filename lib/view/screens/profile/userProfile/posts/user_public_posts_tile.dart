// ignore_for_file: unnecessary_null_comparison, use_late_for_private_fields_and_variables, unused_field, must_be_immutable

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

class UserPublicPostTile extends ConsumerStatefulWidget {
  Datum userPost;
  final int index;
  final String userId;
  UserPublicPostTile({super.key, required this.userPost, required this.index, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserPublicPostTileState();
}

class _UserPublicPostTileState extends ConsumerState<UserPublicPostTile> with BaseScreenView{
  bool upvote = false;
  bool downvote = false;
  int likeCounts = 0;
  int dislikeCounts = 0;
  final TextEditingController _reportController = TextEditingController();
  
  bool isVideoPlaying = false;
  bool isPlay = false;
  bool isPressed = false;
  // File file = File("");
  Uint8List? _image;  
  bool videoLoader = true;
  

  @override
  void initState() {
    super.initState();
    // Logger.printInfo(widget.index.toString());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(userProfileViewModel).postionControl(-1);

      //! INITIALIZING THE VIDEO CONTROLLER IFF A VIDEO URL IS PRESENT
      if(widget.userPost.videoUrl != null && widget.userPost.videoUrl != "") {
        final fileName = await VideoThumbnail.thumbnailFile(
          video: widget.userPost.videoUrl!,
          thumbnailPath: (await getTemporaryDirectory()).path,
          imageFormat: ImageFormat.JPEG,
          maxHeight: 2000,
        );
        _image = File(fileName!).readAsBytesSync();
      }
    });   
    upvote = widget.userPost.likeDislike?.isLike ?? false;
    downvote = widget.userPost.likeDislike?.isDislike ?? false;
    Logger.printSuccess(widget.userPost.isBan.toString());
    likeCounts = widget.userPost.likeCounts ?? 0;
    dislikeCounts = widget.userPost.dislikeCounts ?? 0;

    Future.delayed(Duration(seconds: 2), () {
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
      ignoring: widget.userPost.isBan == true || widget.userPost.isBan == true,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: DecoratedBox(
                  // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  // margin: const EdgeInsets.symmetric(vertical: 10),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // if(!widget.isSelfProfile) {
                                //   context.pushNamed(AppRoute.profileView.name, extra: {
                                //     "userId": AppConstants.userId,
                                //     "isSelfProfile": true
                                //   }).then((value) {
                                //     _viewModel.followStatusUser(widget.userId ?? "", load: false);
                                //     _viewModel.getUserById(context, widget.userId ?? "");
                                //     // _viewModel.getSelfPost(context, const GetPostsUserRequestModel(type: "public"));
                                //     _viewModel.getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), widget.userId ?? "");
                                //   });
                                // }
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 50, 
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    padding: ((widget.userPost.userId?.profilePhoto ?? "") == "") || !(widget.userPost.userId?.profilePhoto?.contains("https://skillcollab") ?? true)
                                        ? const EdgeInsets.all(8)
                                        : EdgeInsets.zero,
                                    child: ((widget.userPost.userId?.profilePhoto ?? "") == "") || !(widget.userPost.userId?.profilePhoto?.contains("https://skillcollab") ?? true) 
                                      ? Image.asset('assets/icons/user.png')
                                      : CircleAvatar(backgroundImage: NetworkImage(widget.userPost.userId?.profilePhoto ?? AppConstants.imageNotFoundLink,),),
                                  ),
                                  gapW4,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${ref.watch(userProfileViewModel).singleUserResponseModel.data?.firstName ?? ""} ${ref.watch(userProfileViewModel).singleUserResponseModel.data?.lastName ?? ""}",
                                        style: const TextStyle(
                                          color: primaryColor,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          if ((ref.watch(userProfileViewModel).singleUserResponseModel.data?.expertise != null) || (ref.watch(userProfileViewModel).singleUserResponseModel.data?.expertise?.isNotEmpty ?? false)) 
                                            Text(
                                              "(${ref.watch(userProfileViewModel).singleUserResponseModel.data?.expertise ?? ""})", 
                                              style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                                            ) 
                                          else 
                                            const SizedBox.shrink(),
                                          gapW4,
                                          SvgPicture.asset('assets/icons/followers.svg'),
                                          gapW4,
                                          Text(
                                            "${ref.watch(userProfileViewModel).singleUserResponseModel.data?.followers?.length ?? 0}".length > 3
                                            ? "${"${ref.watch(userProfileViewModel).singleUserResponseModel.data?.followers?.length ?? 0}".substring(0, "${ref.watch(userProfileViewModel).singleUserResponseModel.data?.followers?.length ?? 0}".length - 3)}k"
                                            : "${ref.watch(userProfileViewModel).singleUserResponseModel.data?.followers?.length ?? 0}",
                                            style: const TextStyle(
                                              color: kBlack,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.calendar_month,
                                            color: Color(0xFF979C9E),
                                            size: 12,
                                          ),
                                          gapW4,
                                          Text(
                                            DateFormat.yMMMMd('en_US').format(widget.userPost.createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                                            DateFormat.jm().format(widget.userPost.createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                            // const Icon(
                            //   Icons.more_horiz,
                            //   color: kBlack,
                            //   size: AppSizes.p20,
                            // ),
                            IconButton(onPressed: (){
                              if(widget.userId == AppConstants.userId){
                                _showUserPostEditOptionBottomSheet(context,  widget.userPost.description ?? "", widget.userPost.id ?? "", ref.watch(userProfileViewModel).getPostsByUserId, widget.userPost.privacy ?? "");
                              } else {
                                _showUserPostReportOptionBottomSheet(context);
                              }
                            }, icon: const Icon(Icons.more_horiz),),
                          ],
                        ),
                      ),
                      // gapH16,
                      Container(
                      color: widget.userPost.bgColor!.isEmpty ? kWhite : Color(int.parse(AppConstants.formatColor(widget.userPost.bgColor ?? "0xffffffff"))),
                          
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                              child: Text(
                                widget.userPost.description ?? "",
                                style: TextStyle(
                                  color: AppConstants.formatColor( widget.userPost.bgColor ?? "",) == '0xff54b3bf' 
                            || AppConstants.formatColor( widget.userPost.bgColor ?? "",) == '0xff59cc66' 
                            || AppConstants.formatColor( widget.userPost.bgColor ?? "",) == '0xffff6666' 
                                    ? Colors.white
                                    : kBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            if (widget.userPost.postImage!.isEmpty
                              || (!widget.userPost.postImage!.contains(".jpg") &&
                                          !widget.userPost.postImage!.contains(".png") ||
                                      !widget.userPost
                                          .postImage!
                                          .contains('http') ||
                                      widget.userPost
                                          .postImage!.isEmpty)) Container() else gapH16,
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height*0.2,
                              child: widget.userPost.postImage!.isEmpty
                              || (!widget.userPost.postImage!.contains(".jpg") &&
                                          !widget.userPost.postImage!.contains(".png") ||
                                      !widget.userPost
                                          .postImage!
                                          .contains('http') ||
                                      widget.userPost
                                          .postImage!.isEmpty)
                                  ? Container()
                                  : ClipRRect(
                                      // borderRadius: BorderRadius.circular(18),
                                      child: WidgetZoom(
                                      heroAnimationTag: 'tag',
                                      zoomWidget: Image.network(
                                           widget.userPost.postImage ?? "",
                                          fit: BoxFit.contain,
                                      ),
                                  ),
                                    ),
                              
                            ),
                            if (widget.userPost != null
                                    || !(widget.userPost.gif?.contains('.gif') ?? true) 
                                    || !(widget.userPost.gif?.contains('http') ?? true)
                                    || (widget.userPost.gif!.isEmpty)) Container() else gapH16,
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height*0.2,
                              child: widget.userPost != null
                                    || !(widget.userPost.gif?.contains('.gif') ?? true) 
                                    || !(widget.userPost.gif?.contains('http') ?? true)
                                    || (widget.userPost.gif!.isEmpty)
                                  ? Container()
                                  : ClipRRect(
                                      // borderRadius: BorderRadius.circular(18),
                                      child: Image.network(
                                        widget.userPost.gif ?? "",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                            gapH10,
                      
                      SizedBox(
                          child: widget.userPost.videoUrl != null && widget.userPost.videoUrl != ""
                            ? videoLoader 
                              ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
                              : GestureDetector(
                                onTap: () {
                                  if(!(widget.userPost.videoUrl?.contains("https://skill") ?? true)) {
                                    showCustomSnackBar(context, text: "Video not available", color: Colors.redAccent);
                                  } else {
                                    // context.pushNamed(AppRoute.videoPlayerPage.name, extra: widget.userPost.videoUrl);
                                    context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPost.id).then((value) {
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


                      if (widget.userPost.checkInImage!.isEmpty
                          || (!widget.userPost.checkInImage!.contains(".jpg") &&
                                      !widget.userPost.checkInImage!.contains(".png") ||
                                  !widget.userPost
                                      .checkInImage!
                                      .contains('http') ||
                                  widget.userPost
                                      .checkInImage!.isEmpty)) Container() else gapH10,
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: widget.userPost.checkInImage == null
                        ? Container()
                        : (widget.userPost.checkInImage!.isEmpty
                          || (!widget.userPost.checkInImage!.contains(".jpg") &&
                                      !widget.userPost.checkInImage!.contains(".png") ||
                                  !widget.userPost
                                      .checkInImage!
                                      .contains('http') ||
                                  widget.userPost
                                      .checkInImage!.isEmpty)) ? Container() : ClipRRect(
                            // borderRadius: BorderRadius.circular(18),
                            child: Image.network(
                               widget.userPost.checkInImage ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                      ),
                      // gapH16,
                          ],
                        ),
                      ),
                      gapH10,
                      // const Text("#Gardening#garden#veggies#expertgardening...."),
                      // gapH16,
                      // Container(
                      //   //!==>image box style
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(18),
                      //   ),
                      //   width: MediaQuery.of(context).size.width,
                      //   // height: MediaQuery.of(context).size.height*0.2,
                      //   child: Image.asset(
                      //     'assets/images/postPic.png',
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      // gapH16,
                      Padding(
                        padding:  const EdgeInsets.only(left: 16.0, right: 16.0),
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
                            gapW10,
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPost.id ?? "").then((value) {
                                    Logger.printSuccess(widget.userId);
                                    ref.read(userProfileViewModel).getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), widget.userId, load: false);
                                  });
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8F7F9),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextFormField(
                                    // controller: commentController,
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
                            GestureDetector(
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
                                postId: widget.userPost.id ?? "",
                                type: 'post',
                              ),
                            ).then((value) {
                              // ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                              //   context, 
                              //   const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime", feedFilter: 'New'),
                              //   ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                              //   1,
                              //   load: false,
                              // );
                            });
                      
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
                                postId: widget.userPost.id ?? "",
                                type: 'post',
                              ),
                            ).then((value) {
                              // ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                              //   context, 
                              //   const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime", feedFilter: 'New'), 
                              //   ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                              //   1,
                              //   load: false,
                              // );
                              widget.userPost = widget.userPost.copyWith(
                                  likeDislike: widget.userPost.likeDislike?.copyWith(
                                    isLike: upvote,
                                    isDislike: downvote,
                                  ),
                                  likeCounts: likeCounts,
                                  dislikeCounts: dislikeCounts,
                                );
                            });
                      
                      
                            HapticFeedback.heavyImpact();
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
                      gapH16,
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPost.id ?? "").then((value) {
                            Logger.printSuccess(widget.userId);
                            ref.read(userProfileViewModel).getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), widget.userId, load: false);
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
                                widget.userPost.commentCounts
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
                                  Share.share("https://www.app.skillcollab.com/home/feeds/${widget.userPost.slug ?? ""}");
                                }, 
                                icon: const Icon(Icons.share_outlined, color: kGrey,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (widget.userPost.isBan == true || widget.userPost.userId?.isBan == true) Positioned.fill(
                top: 100,
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
        ],
      ),
    );
  }

  
  Future<void> _showUserPostEditOptionBottomSheet(BuildContext context, String postDescription, String postId, Function getPost, String privacy) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        final viewModel = ref.watch(userProfileViewModel);
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
                  .then((value) {getPost(context, widget.userId);}),

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
                  viewModel.deletePost(context, postId).then((value) {
                    try {
                      viewModel.getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), widget.userId).whenComplete(() {
                        context.pop();
                      });
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
    //                                 toUserId: widget.userPost.userId?.id ?? '',
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
                  id: widget.userPost.userId?.id ?? "",
                  coverPhoto: widget.userPost.userId?.coverPhoto ?? "",
                  profilePhoto: widget.userPost.userId?.profilePhoto ?? "",
                  description: widget.userPost.userId?.description ?? "",
                  email: widget.userPost.userId?.email ?? "",
                  firstName: widget.userPost.userId?.firstName ?? "",
                  lastName: widget.userPost.userId?.lastName ?? "",
                  userName: widget.userPost.userId?.userName ?? "",
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
                content: SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Column(
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
                              postId: widget.userPost.userId?.id ?? "",
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
  
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
  
  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }
  
  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}