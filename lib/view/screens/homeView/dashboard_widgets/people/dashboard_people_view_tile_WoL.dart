// ignore_for_file: avoid_dynamic_calls, file_names, deprecated_member_use

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllPeopleWithoutLogin/models/get_all_people_without_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
// import 'package:skill_colab/utils/logger.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

class DashboardPeopleViewTileWOL extends ConsumerStatefulWidget {
  final People userPostData;
  const DashboardPeopleViewTileWOL({super.key, required this.userPostData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardPeopleViewTileState();
}

class _DashboardPeopleViewTileState extends ConsumerState<DashboardPeopleViewTileWOL> {  

  bool upvote = false;
  bool downvote = false;
  int likeCounts = 0;
  int dislikeCounts = 0;
  bool isVideoPlaying = false;
  bool isPlay = false;
  bool isPressed = false;
  // File file = File("");
  Uint8List? _image;
  bool isFollowing = false;

  VideoPlayerController _videoController = VideoPlayerController.networkUrl(Uri.parse(''));  
  

  Future<VideoPlayerController> _initController(String link) async {
    _videoController = VideoPlayerController.networkUrl(Uri.parse(link));
    await _videoController.initialize();
    return _videoController;
  }

  Future<void> generateThumbnail(String link) async { // Replace with actual video URL
    final String thumbnailPath = (await getTemporaryDirectory()).path;
    final String? thumbnail = await VideoThumbnail.thumbnailFile(
      video: link,
      thumbnailPath: thumbnailPath,
      imageFormat: ImageFormat.WEBP,
      maxHeight: 1000,
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // ref.read(dashboardViewModel).postionControl(-1);
    });
    if(widget.userPostData.videoUrl != ""){
      generateThumbnail(!widget.userPostData.videoUrl!.contains("http") ? 'https://${widget.userPostData.videoUrl ?? ""}' : widget.userPostData.videoUrl ?? "");
    }

    // print(widget.userPostData.likeDislike.toString() + " " + widget.userPostData.id.toString());

    // upvote = widget.userPostData.likeDislike?.isLike ?? false;
    // downvote = widget.userPostData.likeDislike?.isDislike ?? false;  
    // likeCounts = widget.userPostData.likeCounts ?? 0;
    // dislikeCounts = widget.userPostData.dislikeCounts ?? 0;
    // isFollowing = widget.userPostData.isFollowing ?? false;
  }

  @override
  void dispose() {
    // _videoController..initialize()..pause();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [ Container(
        // padding: const EdgeInsets.all(16),
        width: size.width,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // height: 1--,
        decoration: BoxDecoration(
          color: kWhite,
          boxShadow: [CustomBoxShadow()],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // context.pushNamed(AppRoute.profileView.name, extra: )
                      // context.pushNamed(AppRoute.profileView.name, extra: {
                      //   "userId": widget.userPostData.userId?.id ?? "",
                      //   "isSelfProfile": (widget.userPostData.userId?.id ?? "") == AppConstants.userId
                      //   }
                      // );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: !(widget.userPostData.userId?.profilePhoto
                                  ?.contains("https://skill") ??
                              false)
                          ? const EdgeInsets.all(8)
                          : EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kWhite,
                      ),
                      child: !(widget.userPostData.userId?.profilePhoto
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
                                widget.userPostData.userId?.profilePhoto ?? "",
                                fit: BoxFit.cover,
                              ),),
                    ),
                  ),
                  gapW6,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // context.pushNamed(AppRoute.profileView.name, extra: )
                          // context.pushNamed(AppRoute.profileView.name, extra: {
                          //   "userId": widget.userPostData.userId?.id ?? "",
                          //   "isSelfProfile": (widget.userPostData.userId?.id ?? "") == AppConstants.userId
                          //   }
                          // );
                        },
                        child: Text(
                          "${widget.userPostData.userId?.firstName ?? ""}  ${widget.userPostData.userId?.lastName ?? ""}",
                          // "firstName lastName",
                          style: const TextStyle(
                            color: primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      gapH4,
                      Row(
                            children: [
                              if ((widget.userPostData.userId?.expertise != null) || (widget.userPostData.userId?.expertise?.isNotEmpty ?? false)) 
                                Text(
                                  widget.userPostData.userId?.expertise ?? "", 
                                  style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 10),
                                ) 
                              else 
                                const SizedBox.shrink(),
                              gapW4,
                              SvgPicture.asset('assets/icons/followers.svg',),
                              gapW4,
                              Text(
                                "${widget.userPostData.userId?.followers?.length ?? 0}".length > 3
                              ? "${"${widget.userPostData.userId?.followers?.length ?? 0}".substring(0, "${widget.userPostData.userId?.followers?.length ?? 0}".length - 3)}k"
                              : "${widget.userPostData.userId?.followers?.length ?? 0}",
                                style: const TextStyle(
                                  color: kBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          // Text(
                          //   "posted on ${DateFormat.E().format(widget.userPostData.createdAt ?? DateTime.now())} at ${DateFormat.jm().format(widget.userPostData.createdAt ?? DateTime.now())}",
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
                                DateFormat.yMMMMd('en_US').format(widget.userPostData.createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                                DateFormat.jm().format(widget.userPostData.createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
            gapH16,
            GestureDetector(
              onTap: () {
                // Map<String, dynamic> data = {};
                // if(widget.userPostData.likeDislike == null) {
                //   data = {
                //     ...widget.userPostData.toJson(),
                //     "userId": widget.userPostData.userId?.toJson() ?? {},
                //   };
                // } else {
                //   data = {
                //     ...widget.userPostData.toJson(),
                //     "userId": widget.userPostData.userId?.toJson() ?? {},
                //     "likeDislike": widget.userPostData.likeDislike?.toJson() ?? {},
                //   };
                // }
      
                // context.pushNamed(AppRoute.sinlgePost.name, extra: PeopleAndGroupPost.fromJson(data)).then((value) {
                //   ref.read(dashboardViewModel).getAllPeopleWithLogin(
                //     context, 
                //     const GetAllPeopleWithLoginRequestModel(searchKey: '', interests: '', timeFilter: 'allTime'),
                //     ref.watch(dashboardViewModel).allPeoplePageSize,
                //   );
                // });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                      //   id: widget.userPostData.id,
                      // );
                      // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      //   ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                      //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                          
                      //     );
                      //     setState(() {
                            
                      //   });
                      // });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      color: widget.userPostData.bgColor!.isEmpty ? kWhite :  Color(int.parse(AppConstants.formatColor(widget.userPostData.bgColor ?? "0xffffffff"))),  
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //! Editing the text widget to have read more if there is more than 100 letters in it
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: (widget.userPostData.description ?? "").length > 100 
                                      ? "${(widget.userPostData.description ?? "").substring(0, 101)}..." 
                                      : widget.userPostData.description ?? "",
                                      style: TextStyle(
                                        color: AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff54b3bf' 
                                      || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff59cc66' 
                                      || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xffff6666'
                                                ? Colors.white
                                                : kBlack,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                                  TextSpan(
                                    text: (widget.userPostData.description ?? "").length > 100 ? " Read More" : "",
                                    style: TextStyle(
                                      color: AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff54b3bf' 
                                      || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff59cc66' 
                                      || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xffff6666'
                                                ? Colors.white
                                                : primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            // child: Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       (widget.userPostData.description ?? "").length > 100 
                            //           ? "${(widget.userPostData.description ?? "").substring(0, 101)}..." 
                            //           : widget.userPostData.description ?? "",
                            //       style: TextStyle(
                            //         color: AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff54b3bf' 
                            //       || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff59cc66' 
                            //       || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xffff6666'
                            //                 ? Colors.white
                            //                 : kBlack,
                            //         fontSize: 15,
                            //         fontWeight: FontWeight.w500,
                            //       ),
                            //     ),
                            //     Visibility(
                            //       visible: (widget.userPostData.description ?? "").length > 100,
                            //       child: Text(" Read More", 
                            //         style: TextStyle(
                            //           color: AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff54b3bf' 
                            //           || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xff59cc66' 
                            //           || AppConstants.formatColor( widget.userPostData.bgColor ?? "",) == '0xffff6666'
                            //                     ? Colors.white
                            //                     : primaryColor,
                            //           fontWeight: FontWeight.bold
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
                          ),
                          gapH4,
                          // const Text("#Gardening#garden#veggies#expertgardening...."),
                          if (widget.userPostData.postImage ==
                                        null ||
                                    (!(widget.userPostData.postImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.postImage?.contains('.png') ?? false)) ||
                                    !(widget.userPostData.postImage?.contains('http') ?? false) ||
                                    (widget.userPostData.postImage?.isEmpty ?? false)) Container() else gapH8,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.userPostData.postImage ==
                                        null ||
                                    (!(widget.userPostData.postImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.postImage?.contains('.png') ?? false)) ||
                                    !(widget.userPostData.postImage?.contains('http') ?? false) ||
                                    (widget.userPostData.postImage?.isEmpty ?? false)
                                ? Container()
                                : ClipRRect(
                                    child: WidgetZoom(
                                    heroAnimationTag: 'tag',
                                    zoomWidget: Image.network(
                                        widget.userPostData.postImage!,
                                        fit: BoxFit.contain,
                                    ),
                                ),
                              ),
                          ),
                          if (widget.userPostData.gif ==
                                  null ||
                              (!(widget.userPostData.gif?.contains('.gif') ?? false)) ||
                              !(widget.userPostData.gif?.contains('http') ?? false) ||
                              widget.userPostData.gif!.isEmpty) Container() else gapH8,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.userPostData.gif ==
                                  null ||
                              (!(widget.userPostData.gif?.contains('.gif') ?? false)) ||
                              !(widget.userPostData.gif?.contains('http') ?? false) ||
                              widget.userPostData.gif!.isEmpty
                          ? Container()
                          : ClipRRect(
                              child: Image.network(
                                widget.userPostData.gif!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // gapH8,
                          if (
                            (isVideoPlaying == false) &&
                            widget.userPostData.videoUrl != null && widget.userPostData.videoUrl != ""
                          ) Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                              width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height*0.2,
                              child: ClipRRect(
                                      // borderRadius: BorderRadius.circular(18),
                                  child :  _image != null ? Image.memory(_image!) : const SpinKitThreeBounce(
                                    color: primaryColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white.withOpacity(0.9),
                                  // borderRadius: BorderRadius.circular(100),
                                ),
                                child: IconButton(
                                  onPressed: ()async {
                                    // ref.read(dashboardViewModel).postionControl(widget.index);
                                    // isPressed = true;
            
                                    // await _videoController.dispose();
            
                                    // if(!widget.userPostData.videoUrl!.contains("http")){
                                    //   await _initController('https://${widget.userPostData.videoUrl ?? ""}');
                                      
                                    // }else{
                                    //   await _initController(widget.userPostData.videoUrl ?? "");
                                    // }
                                    // setState(() {
                                    //   isVideoPlaying = true;
                                    //   isPlay = true;
                                    // });
                                    // Logger.printSuccess(ref.read(dashboardViewModel).positionAll.toString());
                                    // Logger.printSuccess(widget.userPostData.videoUrl ?? "");
                                  },
                                  visualDensity: VisualDensity.compact,
                                  icon: const Icon(Icons.play_arrow, color: primaryColor, weight: 50),
                                  highlightColor: kWhite,
                                ),
                              ),
                            ],
                          )
                            else if(isVideoPlaying == true &&
                            widget.userPostData.videoUrl  != null && widget.userPostData.videoUrl  != "") SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: widget.userPostData.videoUrl  == "" 
                                  ||  !widget.userPostData.videoUrl !.contains('.mp4') 
                                  ||  !widget.userPostData.videoUrl !.contains('nyc') 
                                  ||  widget.userPostData.videoUrl !.isEmpty
                                    ? Container()
                                    : GestureDetector(
                                  onTap: (){
                                    // ref.read(dashboardViewModel).postionControl(widget.index);
                                    // if(isPlay){
                                    //   isPlay = false;
                                    //   // ref.read(publicGroupProfileViewModel).controller..initialize()..pause();
                                    //   _videoController..initialize()..pause();
                                    // } else{
                                    //   isPlay = true;
                                    //   // ref.read(publicGroupProfileViewModel).controller..initialize()..play();
                                    //   _videoController..initialize()..play();
                                    // }
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
                          if (widget.userPostData.checkInImage ==
                                        null ||
                                    (!(widget.userPostData.checkInImage?.contains('.jpg') ?? false) &&
                                    !(widget.userPostData.checkInImage?.contains('.jpeg') ?? false) &&
                                        !(widget.userPostData.checkIn?.contains('.png') ?? false)) ||
                                    !(widget.userPostData.checkInImage?.contains('http') ?? false) ||
                                    (widget.userPostData.checkInImage?.isEmpty ?? false)) Container() else gapH10,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.userPostData.checkInImage ==
                                        null ||
                                    (!(widget.userPostData.checkInImage?.contains('.jpg') ?? false) &&
                                    !(widget.userPostData.checkInImage?.contains('.jpeg') ?? false) &&
                                        !(widget.userPostData.checkIn?.contains('.png') ?? false)) ||
                                    !(widget.userPostData.checkInImage?.contains('http') ?? false) ||
                                    (widget.userPostData.checkInImage?.isEmpty ?? false)
                                ? Container()
                                : ClipRRect(
                                    // borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      widget.userPostData.checkInImage!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  gapH10,
                  GestureDetector(
                    onTap: () {                      
                      // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                      //   id: widget.userPostData.id,
                      // );
            
                      // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      //   ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                      //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                          
                      //     );
                      //     setState(() {
                            
                      //   });
                      // });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
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
                          gapW10,
                          GestureDetector(
                            onTap: () async {
                              // setState(() {
                              //     upvote = !upvote;
                              //     if(upvote) {
                              //       likeCounts++;
                              //     } else {
                              //       likeCounts--;
                              //     }
      
                              //     if(downvote) {
                              //       downvote = false;
                              //       dislikeCounts--;
                              //     }
                              //     if(ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike == null) {
                              //       ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                              //         likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                              //         likeCounts: likeCounts,
                              //         dislikeCounts: dislikeCounts
                              //       );
                              //     } else {
                              //       ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                              //         likeDislike: ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike?.copyWith(
                              //           isLike: upvote,
                              //           isDislike: downvote
                              //         ),
                              //         likeCounts: likeCounts,
                              //         dislikeCounts: dislikeCounts
                              //       );
                              //     }
                              // });
                                        
                              // await ref.read(singlePostViewModel).likeDislikePost(
                              //   context, 
                              //   LikeDislikeRequestModel(
                              //     isLike: upvote,
                              //     isDislike: downvote,
                              //     postId: widget.userPostData.id ?? "",
                              //     type: 'post',
                              //   ),
                              // ).then((value) {
                              //   ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                              //     context, 
                              //     const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                              //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                              //     1,
                              //     load: false,
                              //   );
                              // });
                                        
                              // HapticFeedback.heavyImpact();
                            },
                            child: Icon(
                              Icons.thumb_up,
                              color: upvote ? Colors.green : kGrey,
                            ),
                          ),
                          gapW4,
                          // Text("$likeCounts"),
                          gapW10,
                          GestureDetector(
                            onTap: () async {
                              // setState(() {
                              //   downvote = !downvote;
                              //   if(downvote == false) {
                              //     dislikeCounts--;
                              //   } else {
                              //     dislikeCounts++;
                              //   }  
      
                              //   if(upvote) {
                              //     upvote = false;
                              //     likeCounts--;
                              //   }
      
                              //   if(ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike == null) {
                              //     ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                              //       likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                              //       likeCounts: likeCounts,
                              //       dislikeCounts: dislikeCounts
                              //     );
                              //   } else {
                              //     ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                              //       likeDislike: ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike?.copyWith(
                              //         isLike: upvote,
                              //         isDislike: downvote
                              //       ),
                              //       likeCounts: likeCounts,
                              //       dislikeCounts: dislikeCounts
                              //     );
                              //   }
                              // });
                                        
                              // await ref.read(singlePostViewModel).likeDislikePost(
                              //   context, 
                              //   LikeDislikeRequestModel(
                              //     isLike: upvote,
                              //     isDislike: downvote,
                              //     postId: widget.userPostData.id ?? "",
                              //     type: 'post',
                              //   ),
                              // ).then((value) {
                              //   ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                              //     context, 
                              //     const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                              //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                              //     1,
                              //     load: false,
                              //   );
                              // });
                                        
                                        
                              // HapticFeedback.heavyImpact();
                            },
                            child: Icon(
                              Icons.thumb_down,
                              color: downvote ? Colors.redAccent : kGrey,
                            ),
                          ),
                          gapW4,
                          // Text("$dislikeCounts"),
                        ],
                      ),
                    ),
                  ),
                  gapH10,
                  GestureDetector(
                    onTap: () {
                      // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      //   ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                      //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                          
                      //     );
                      //     setState(() {
                            
                      //   });
                      // });
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
                          // Text(
                          //   widget.userPostData.commentCounts
                          //       .toString(),
                          //   style: const TextStyle(
                          //     color: kBlack,
                          //     fontSize: 17,
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Share.share(widget.userPostData.description ?? "");
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
          ],
        ),
      ),
      if (widget.userPostData.isBan == true || widget.userPostData.userId?.isBan == true) Positioned.fill(
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
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/block.png', height: 30, width: 30,),
                          gapH12,
                          const Text(
                            'Post is inappropriate as per community guideline',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 14),
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
    );
  }
}
