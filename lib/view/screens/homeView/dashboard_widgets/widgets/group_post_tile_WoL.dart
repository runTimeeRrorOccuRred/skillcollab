// ignore_for_file: file_names, avoid_dynamic_calls, deprecated_member_use, eol_at_end_of_file

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsAndPeopleWithoutLogin/models/get_all_groups_and_people_without_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
// import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

class GroupPostTileWithoutLogin extends ConsumerStatefulWidget {
  final PeopleAndGroupPostWOL userPostData;
  const GroupPostTileWithoutLogin({super.key, required this.userPostData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GroupPostTileState();
}

class _GroupPostTileState extends ConsumerState<GroupPostTileWithoutLogin> {  
bool upvote = false;
  bool downvote = false;
  int likeCounts = 0;
  int dislikeCounts = 0;
  bool isVideoPlaying = false;
  bool isPlay = false;
  bool isPressed = false;
  bool isFollowing = false;
  // File file = File("");
  Uint8List? _image;
  // final TextEditingController _reportController = TextEditingController();
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
      ref.read(dashboardViewModel).postionControl(-1);
    });
    if(widget.userPostData.videoUrl != ""){
      generateThumbnail(!(widget.userPostData.videoUrl?.contains("http") ?? true) ? 'https://${widget.userPostData.videoUrl ?? ""}' : widget.userPostData.videoUrl ?? "");
    }
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
    return Container(
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
            padding: const EdgeInsets.only(top : 16.0, left: 16, right: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Map<String, dynamic> groupDatum = {
                    //   ...widget.userPostData.toJson(),
                    //   "userId": widget.userPostData.userId?.toJson() ?? {},
                    //   "groupData": widget.userPostData.groupId?.toJson() ?? {}
                    // };
                    // Logger.printSuccess(GroupDatum.fromJson(groupDatum).toString());
                    // context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                    //   "groupDetails": GroupDatum.fromJson(groupDatum),
                    //   "isSelfGroup": (widget.userPostData.userId?.id ?? "") == AppConstants.userId
                    // }).then((value) {
                    //   ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                    //     context, 
                    //     const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                    //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                    //     load: true
                    //   );
                    // });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: !(widget.userPostData.groupId?.groupPhoto
                                ?.contains("https://skill") ??
                            false)
                        ? const EdgeInsets.all(8)
                        : EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kWhite,
                    ),
                    child: !(widget.userPostData.groupId?.groupPhoto
                                ?.contains("https://skill") ??
                            false)
                        ? Image.asset(
                            "assets/icons/group-icon.png",
                            height: 20,
                            width: 20,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                               widget.userPostData.groupId?.groupPhoto ?? "",
                              fit: BoxFit.cover,
                            ),),
                  ),
                ),
                gapW6,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Map<String, dynamic> groupDatum = {
                          //   ...widget.userPostData.toJson(),
                          //   "userId": widget.userPostData.userId?.toJson() ?? {},
                          //   "groupData": widget.userPostData.groupId?.toJson() ?? {}
                          // };
                          // Logger.printSuccess(GroupDatum.fromJson(groupDatum).toString());
                          // context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                          //   "groupDetails": GroupDatum.fromJson(groupDatum),
                          //   "isSelfGroup": (widget.userPostData.userId?.id ?? "") == AppConstants.userId
                          // }).then((value) {
                          //   ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                          //     context, 
                          //     const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                          //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                          //   );
                          // });
                        },
                        child: Text(
                          widget.userPostData.groupId?.name ?? "",
                          // "firstName lastName",
                          overflow: TextOverflow.ellipsis,
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
                ),
              ],
            ),
          ),
          gapH16,
          GestureDetector(
            onTap: () {
              // Map<String, dynamic> post = {
              //   ..._dashboardViewModel.getAllGroupsAndPeopleWithLoginResponseModel.data?[index].toJson() ?? {},
              //   "userId": _dashboardViewModel.getAllGroupsAndPeopleWithLoginResponseModel.data?[index].userId?.toJson() ?? {},
              //   // "groupData": _dashboardViewModel.getAllGroupsAndPeopleWithLoginResponseModel.data?[index].groupData?.toJson() ?? {}
              // };
              // print(post);
              // Logger.printInfo(post.toString());
              // context.pushNamed(AppRoute.sinlgePost.name, extra: Post.fromJson(post));
              // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData).then((value) {
              //   ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
              //     context, 
              //     const GetAllGroupsAndPeopleWithLoginRequestModel(searchKey: '', interests: '', timeFilter: 'allTime'), 
              //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
              //   );
              // });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                    //   ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                    //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                        
                    //     );
                    //     setState(() {
                          
                    //   });
                    // });
                  },
                  child: Container(
                    color: (widget.userPostData.bgColor?.isEmpty ?? true) ? kWhite :  Color(int.parse(AppConstants.formatColor(widget.userPostData.bgColor ?? "0xffffffff"))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                            //   ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                            //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                                
                            //     );
                            //     setState(() {
                                  
                            //   });
                            // });
                          },
                          child: Padding(
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
                          ),
                        ),
                        // gapH16,
                        // const Text("#Gardening#garden#veggies#expertgardening...."),
                        if (widget.userPostData.postImage ==
                                            null ||
                                        (!(widget.userPostData.postImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.postImage?.contains('.jpeg') ?? false) &&
                                            !(widget.userPostData.postImage?.contains('.png') ?? false)) ||
                                        !(widget.userPostData.postImage?.contains('http') ?? false) ||
                                        (widget.userPostData.postImage?.isEmpty ?? true)) Container() else gapH16,
                        GestureDetector(
                          onTap: () {
                            // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                            //   ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                            //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                                
                            //     );
                            //     setState(() {
                                  
                            //   });
                            // });
                          },
                          child: Column(
                            children: [
                              Container(
                                //!==>image box style
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                width: MediaQuery.of(context).size.width,
                                // height: MediaQuery.of(context).size.height*0.2,
                                child: widget.userPostData.postImage ==
                                            null ||
                                        (!(widget.userPostData.postImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.postImage?.contains('.jpeg') ?? false) &&
                                            !(widget.userPostData.postImage?.contains('.png') ?? false)) ||
                                        !(widget.userPostData.postImage?.contains('http') ?? false) ||
                                        (widget.userPostData.postImage?.isEmpty ?? true)
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: WidgetZoom(
                                        heroAnimationTag: 'tag',
                                        zoomWidget: Image.network(
                                            widget.userPostData.postImage ?? "",
                                            // placeholder:(context, url) =>   ShimmerContainer() ,
                                            fit: BoxFit.contain,
                                        ),
                                    ),
                                      ),
                              ),
                              if (widget.userPostData.gif ==
                                            null ||
                                        (!(widget.userPostData.gif?.contains('.gif') ?? false)) ||
                                        !(widget.userPostData.gif?.contains('http') ?? false) ||
                                        (widget.userPostData.gif?.isEmpty ?? false)) Container() else gapH12,
                              Container(
                                //!==>image box style
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                width: MediaQuery.of(context).size.width,
                                // height: MediaQuery.of(context).size.height*0.2,
                                child: widget.userPostData.gif ==
                                            null ||
                                        (!(widget.userPostData.gif?.contains('.gif') ?? false)) ||
                                        !(widget.userPostData.gif?.contains('http') ?? false) ||
                                        (widget.userPostData.gif?.isEmpty ?? false)
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: Image.network(
                                          widget.userPostData.gif ?? "",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                              ),
                              gapH10,
                              if (
                                (isVideoPlaying == false) &&
                                widget.userPostData.videoUrl != null && widget.userPostData.videoUrl != ""
                              ) Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                            //!==>image box style
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                            ),
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
                                                color: Colors.white.withOpacity(0.9),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: IconButton(
                                                onPressed: ()async {
                                          //         ref.read(dashboardViewModel).postionControl(widget.index);
                                          //         isPressed = true;
          
                                          // await _videoController.dispose();
          
                                          // if(!(widget.userPostData.videoUrl?.contains("http") ?? false)){
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
                                        icon:  const Icon(Icons.play_arrow, color: primaryColor, weight: 50),
                                        highlightColor: kWhite,
                                      ),
                                    ),
                                  ],
                                )
                                else if(isVideoPlaying == true &&
                                widget.userPostData.videoUrl  != null && widget.userPostData.videoUrl  != "") DecoratedBox(
                                //!==>image box style
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                // width: MediaQuery.of(context).size.width,
                                // height: MediaQuery.of(context).size.height*0.2,
                                child: widget.userPostData.videoUrl  == "" 
                                  ||  !(widget.userPostData.videoUrl?.contains('.mp4') ?? false) 
                                  ||  !(widget.userPostData.videoUrl?.contains('nyc') ?? false) 
                                  ||  (widget.userPostData.videoUrl?.isEmpty ?? false)
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
                              if (widget.userPostData.checkInImage == null ||
                                        (!(widget.userPostData.checkInImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.checkInImage?.contains('.jpeg') ?? false) &&
                                            !(widget.userPostData.checkIn?.contains('.png') ?? false)) ||
                                        !(widget.userPostData.checkInImage?.contains('http') ?? false) ||
                                        (widget.userPostData.checkInImage?.isEmpty ?? true)) Container() else gapH10,
                              Container(
                                //!==>image box style
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                width: MediaQuery.of(context).size.width,
                                // height: MediaQuery.of(context).size.height*0.2,
                                child: widget.userPostData.checkInImage == null ||
                                        (!(widget.userPostData.checkInImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.checkInImage?.contains('.jpeg') ?? false) &&
                                            !(widget.userPostData.checkIn?.contains('.png') ?? false)) ||
                                        !(widget.userPostData.checkInImage?.contains('http') ?? false) ||
                                        (widget.userPostData.checkInImage?.isEmpty ?? true)
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          widget.userPostData.checkInImage ?? '',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                gapH16,
                GestureDetector(
                  onTap: () {
                    // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                    //   ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
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
                        // GestureDetector(
                        //   onTap: () {
                        //     context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData).then((value) {
                        //       ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                        //         context, 
                        //         const GetAllGroupsAndPeopleWithLoginRequestModel(searchKey: '', interests: '', timeFilter: 'allTime'), 
                        //         ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                        //         load: false
                        //       );
                        //     });
                        //     // context
                        //     //     .pushNamed(AppRoute.sinlgePost.name, extra: Post.fromJson(ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLoginResponseModel.data![index].toJson()))
                        //     //     .then((value) {
                        //     //   ref.read(singlePostViewModel).clearComments();
                        //     // });
                        //   },
                        //   child: Row(
                        //     children: [
                        //       SvgPicture.asset(
                        //         'assets/icons/postCommentIcon.svg',
                        //         height: 25,
                        //       ),
                        //       gapW10,
                        //       Text(
                        //         widget.userPostData.commentCounts
                        //             .toString(),
                        //         style: const TextStyle(
                        //           color: kBlack,
                        //           fontSize: 17,
                        //           fontWeight: FontWeight.w600,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        gapW10,
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                              //   ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                              //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                                  
                              //     );
                              //     setState(() {
                                    
                              //   });
                              // });
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
                        GestureDetector(
                          onTap: () async {
                            // setState(() {
                            //   upvote = !upvote;
                            //   if(upvote == false) {
                            //     likeCounts--;
                            //   } else {
                            //     likeCounts++;
                            //   }

                            //   if(downvote) {
                            //     downvote = false;
                            //     dislikeCounts--;
                            //   }

                            //   if(widget.isSearch == false){
                            //     if(ref.read(dashboardViewModel).allDataList[widget.index].likeDislike == null) {
                            //       ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                            //         likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                            //         likeCounts: likeCounts,
                            //         dislikeCounts: dislikeCounts,  
                            //       );
                            //     } else {
                            //       ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                            //         likeDislike: ref.read(dashboardViewModel).allDataList[widget.index].likeDislike?.copyWith(
                            //           isLike: upvote,
                            //           isDislike: downvote,
                            //         ),
                            //         likeCounts: likeCounts,
                            //         dislikeCounts: dislikeCounts,  
                            //       );
                            //     }
                            //   }else{
                            //     // if(ref.read(searchViewModel).allDataList[widget.index].likeDislike == null) {
                            //     //   ref.read(searchViewModel).allDataList[widget.index] = ref.read(searchViewModel).allDataList[widget.index].copyWith(
                            //     //     likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                            //     //     likeCounts: likeCounts,
                            //     //     dislikeCounts: dislikeCounts  
                            //     //   );
                            //     // } else {
                            //     //   ref.read(searchViewModel).allDataList[widget.index] = ref.read(searchViewModel).allDataList[widget.index].copyWith(
                            //     //     likeDislike: ref.read(searchViewModel).allDataList[widget.index].likeDislike?.copyWith(
                            //     //       isLike: upvote,
                            //     //       isDislike: downvote,
                            //     //     ),
                            //     //     likeCounts: likeCounts,
                            //     //     dislikeCounts: dislikeCounts  
                            //     //   );
                            //     // }
                                
                            //   }
                    
                            //   // Logger.printError(ref.read(dashboardViewModel).allDataList[widget.index].toString());
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
                            //   // ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                            //   //   context, 
                            //   //   const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime", feedFilter: 'New'),
                            //   //   ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                            //   //   1,
                            //   //   load: false,
                            //   // );
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

                            //   if(widget.isSearch == false) {
                            //     if(ref.read(dashboardViewModel).allDataList[widget.index].likeDislike == null) {
                            //       ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                            //         likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                            //         likeCounts: likeCounts,
                            //         dislikeCounts: dislikeCounts,
                            //       );
                            //     } else {
                            //       ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                            //         likeDislike: ref.read(dashboardViewModel).allDataList[widget.index].likeDislike?.copyWith(
                            //           isLike: upvote,
                            //           isDislike: downvote,
                            //         ),
                            //         likeCounts: likeCounts,
                            //         dislikeCounts: dislikeCounts,
                            //       );
                            //     }
                            //   }
                            //   else{
                                // if(ref.read(searchViewModel).allDataList[widget.index].likeDislike == null) {
                                //   ref.read(searchViewModel).allDataList[widget.index] = ref.read(searchViewModel).allDataList[widget.index].copyWith(
                                //     likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                //     likeCounts: likeCounts,
                                //     dislikeCounts: dislikeCounts
                                //   );
                                // } else {
                                //   ref.read(searchViewModel).allDataList[widget.index] = ref.read(searchViewModel).allDataList[widget.index].copyWith(
                                //     likeDislike: ref.read(searchViewModel).allDataList[widget.index].likeDislike?.copyWith(
                                //       isLike: upvote,
                                //       isDislike: downvote,
                                //     ),
                                //     likeCounts: likeCounts,
                                //     dislikeCounts: dislikeCounts
                                //   );
                                // }
                                
                              // }
                    
                              // Logger.printError(ref.read(dashboardViewModel).allDataList[widget.index].toString());
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
                            //   // ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                            //   //   context, 
                            //   //   const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime", feedFilter: 'New'), 
                            //   //   ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                            //   //   1,
                            //   //   load: false,
                            //   // );
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
                    //   ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
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
    );
  }
}