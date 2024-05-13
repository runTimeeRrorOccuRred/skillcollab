import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class SearchUserPostTile extends ConsumerStatefulWidget {
  final Datum postData;
  final int index;
  const SearchUserPostTile({super.key, required this.postData, required this.index});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchUserPostTileState();
}

class _SearchUserPostTileState extends ConsumerState<SearchUserPostTile> {

  bool upvote = false;
  bool downvote = false;
  Uint8List? _image;

  bool isVideoPlaying = false;
  bool isPlay = false;
  bool isPressed = false;
  // File file = File("");
  

  VideoPlayerController _videoController = VideoPlayerController.networkUrl(Uri.parse(''));  
  

  Future<VideoPlayerController> _initController(String link) async {
    _videoController = VideoPlayerController.networkUrl(Uri.parse(link));
    await _videoController.initialize();
    return _videoController;
  }

  Future<void> _generateThumbnail() async {
    final String videoUrl = !widget.postData.videoUrl!.contains("http") ? 'https://${widget.postData.videoUrl ?? ""}' : widget.postData.videoUrl ?? ""; // Replace with actual video URL
    final String thumbnailPath = (await getTemporaryDirectory()).path;

    final String? thumbnail = await VideoThumbnail.thumbnailFile(
      video: videoUrl,
      thumbnailPath: thumbnailPath,
      imageFormat: ImageFormat.WEBP,
      maxHeight: 200,
      quality: 75,
    );

    if (thumbnail != null) {
      final File thumbnailFile = File(thumbnail);
      setState(() {
        _image = thumbnailFile.readAsBytesSync();
      });
    }
  }


  @override
  void initState() {
    super.initState();
    Logger.printInfo(widget.index.toString());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(publicGroupProfileViewModel).postionControl(-1);   
    });
    if(widget.postData.videoUrl != ""){
      _generateThumbnail();
    }
    
    upvote = widget.postData.likeDislike?.isLike ?? false;
    downvote = widget.postData.likeDislike?.isDislike ?? false;
  }

  @override
  void dispose() {
    // _videoController..initialize()..pause();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // padding:
        //     const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Logger.printInfo(_viewModel.postsByGroupModel.data?[index].userId.toString() ?? "");
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
                                     widget.postData
                                            .userId
                                            ?.profilePhoto ??
                                        "",
                                    fit: BoxFit.cover,
                                  ),),
                        ),
                        gapW6,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.postData.userId?.firstName ?? ""}  ${widget.postData.userId?.lastName ?? ""}",
                              // "firstName lastName",
                              style: const TextStyle(
                                color: primaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            gapH4,
                            // Row(
                            //   children: [
                            //     SvgPicture.asset('assets/icons/followers.svg'),
                            //     gapW4,
                            //     const Text(
                            //       "5.3k",
                            //       style: TextStyle(
                            //         color: kBlack,
                            //         fontSize: 13,
                            //         fontWeight: FontWeight.w600,
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            // Text("${_viewModel.postsByGroupModel.data?[index].userId?.userName ?? ""} on ${DateFormat('dd-MM-yyyy').format(_viewModel.postsByGroupModel.data![index].createdAt!)}"),
                            Text(
                                "posted on ${DateFormat.E().format(widget.postData.createdAt ?? DateTime.now())} at ${DateFormat.jm().format(widget.postData.createdAt ?? DateTime.now())}",),
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
                  const Icon(
                    Icons.more_horiz,
                    color: kBlack,
                    size: AppSizes.p20,
                  ),
                ],
              ),
            ),
            gapH16,
            Container(
              color: widget.postData.bgColor!.isEmpty ? kWhite :  Color(int.parse(AppConstants.formatColor(widget.postData.bgColor ?? "0xffffffff"))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                    child: Text(
                        widget.postData.description ??  "",
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
                  ),
                    gapH16,
                    SizedBox(
              
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height*0.2,
                      child: widget.postData.postImage == null 
                            ||  (!(widget.postData.postImage?.contains('.jpg') ?? false)
                              &&    !(widget.postData.postImage?.contains('.png') ?? false)) 
                              || !(widget.postData.postImage?.contains('http') ?? false) ||
                              (widget.postData.postImage?.isEmpty ?? false)
                          ? Container()
                          : ClipRRect(
                              // borderRadius: BorderRadius.circular(18),
                              child: Image.network(
                                widget.postData.postImage!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    gapH16,
                        SizedBox(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.2,
              child: widget.postData.gif == null 
                    ||(!(widget.postData.gif?.contains('.gif') ?? false)) 
                    || !(widget.postData.gif?.contains('http') ?? false)
                    || (widget.postData.gif?.isEmpty ?? false)
                  ? Container()
                  : ClipRRect(
                      // borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        widget.postData.gif ?? "",
                        fit: BoxFit.cover,
                      ),
                    ),
                        ),
                        gapH10,
                        if (
              (isVideoPlaying == false || ref.read(publicGroupProfileViewModel).position != widget.index) &&
              widget.postData.videoUrl != null && widget.postData.videoUrl != ""
                        ) Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height*0.2,
                child: ClipRRect(
                        // borderRadius: BorderRadius.circular(18),
                        child:_image != null ? Image.memory(_image!) : const SpinKitThreeBounce(
                                        color: primaryColor,
                                        size: 30,
                                      ),
                      ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:  ref.read(publicGroupProfileViewModel).position == widget.index ? Colors.transparent : Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: ()async {
                      ref.read(publicGroupProfileViewModel).postionControl(widget.index);
                      isPressed = true;
              
                      await _videoController.dispose();
              
                      if(!(widget.postData.videoUrl?.contains("http") ?? false)){
                        await _initController('https://${widget.postData.videoUrl ?? ""}');
                        
                      }else{
                        await _initController(widget.postData.videoUrl ?? "");
                      }
                      setState(() {
                        isVideoPlaying = true;
                        isPlay = true;
                      });
                      Logger.printSuccess(ref.read(publicGroupProfileViewModel).position.toString());
                      Logger.printSuccess(widget.postData.videoUrl ?? "");
                    },
                    visualDensity: VisualDensity.compact,
                    icon: ref.read(publicGroupProfileViewModel).position == widget.index ? const SpinKitThreeBounce(
                                        color: primaryColor,
                                        size: 15,
                                      ) : const Icon(Icons.play_arrow, color: Colors.red, weight: 50),
                    highlightColor: ref.read(publicGroupProfileViewModel).position == widget.index ? Colors.transparent : kWhite,
                  ),
                ),
              ],
                        ) else if(isVideoPlaying == true && ref.read(publicGroupProfileViewModel).position == widget.index &&
              widget.postData.videoUrl != null && widget.postData.videoUrl != "") SizedBox(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.2,
              child: widget.postData.videoUrl == "" 
                ||  !(widget.postData.videoUrl?.contains('.mp4') ?? false) 
                ||  !(widget.postData.videoUrl?.contains('nyc') ?? false) 
                ||  (widget.postData.videoUrl?.isEmpty ?? false)
                  ? Container()
                  : GestureDetector(
                    onTap: (){
                      ref.read(publicGroupProfileViewModel).postionControl(widget.index);
                      if(isPlay){
                        isPlay = false;
                        // ref.read(publicGroupProfileViewModel).controller..initialize()..pause();
                        _videoController..initialize()..pause();
                      } else{
                        isPlay = true;
                        // ref.read(publicGroupProfileViewModel).controller..initialize()..play();
                        _videoController..initialize()..play();
                      }
                    },
                    child: _videoController.value.isInitialized ? AspectRatio(
                      aspectRatio: _videoController.value.aspectRatio,
                      child: VideoPlayer(_videoController..play()..setLooping(true)),
                    ) : const SpinKitThreeBounce(
                                        color: primaryColor,
                                        size: 30,
                                      ),
                  ),
                        ) else Container(),
                        gapH10,
                        SizedBox(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.2,
              child: widget.postData.checkInImage ==
                    null ||
                (!(widget.postData.checkInImage?.contains('.jpg') ?? false)&&
                !(widget.postData.checkInImage?.contains('.jpeg') ?? false)&&
                    !(widget.postData.checkIn?.contains('.png') ?? false)) ||
                !(widget.postData.checkInImage?.contains('http') ?? false)||
                (widget.postData.checkInImage?.isEmpty ?? false)
              ? Container()
              : ClipRRect(
                // borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.postData.checkInImage ?? '',
                  fit: BoxFit.cover,
                ),
              ),
                        ),
                ],
              ),
            ),
            gapH16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context
                          .pushNamed(AppRoute.sinlgePost.name,
                              extra: widget.postData.id,)
                          .then((value) {
                        ref
                            .read(singlePostViewModel)
                            .clearComments();
                      });
                    },
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
                      ],
                    ),
                  ),
                  gapW10,
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id,);
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F7F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
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
                        if(downvote) downvote = false;
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
                    child: SvgPicture.asset(
                      'assets/icons/upvoteComment.svg',
                      height: 20,
                      color: upvote ? Colors.green: Colors.grey,
                    ),
                  ),
                  gapW10,
                  InkWell(
                    onTap: () async {
                      setState(() {
                        downvote = !downvote;
                        if(upvote) upvote = false;
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
                    child: SvgPicture.asset(
                      'assets/icons/downvoteComment.svg',
                      height: 20,
                      color: downvote ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            gapH16,
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
    );
  }
}