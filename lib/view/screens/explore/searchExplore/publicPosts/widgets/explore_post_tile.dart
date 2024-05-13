// ignore_for_file: always_use_package_imports, deprecated_member_use

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_public_post_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

import '../../../../../../data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

class ExplorePostTile extends ConsumerStatefulWidget {
  final PostDatum postData;
  final int index;
  final List<String> interests;
  const ExplorePostTile(
      {super.key, required this.postData, required this.index, required this.interests,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExplorePostTileState();
}

class _ExplorePostTileState extends ConsumerState<ExplorePostTile> {
  bool upvote = false;
  bool downvote = false;
  int likeCounts = 0;
  int dislikeCounts = 0;
  bool isVideoPlaying = false;
  bool isPlay = false;
  bool isPressed = false;
  bool isload = false;
  int groupIndex = -1;
  bool videoLoader = true;
  Uint8List? _image;  
  TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(userProfileViewModel).postionControl(-1);

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
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return IgnorePointer(
      ignoring: widget.postData.isBan == true || widget.postData.isBan == true,
      child: Stack(
        alignment: Alignment.center,
        children : [
          Container(
            //!======Outer BIG box
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
                  padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: widget.postData.groupId == null
                          ? widget.postData.userId?.profilePhoto != null 
                            ? NetworkImage(widget.postData.userId?.profilePhoto ?? AppConstants.imageNotFoundLink)
                            : Image.asset("assets/icons/user.png").image
                          : widget.postData.groupId?.groupPhoto != null
                            ? NetworkImage(widget.postData.userId?.profilePhoto ?? AppConstants.imageNotFoundLink)
                            : Image.asset("assets/icons/group-icon.png").image,
                      ),
                      gapW8,
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(AppRoute.profileView.name, extra: {
                            "userId": widget.postData.userId?.id ?? "",
                            "isSelfProfile": widget.postData.id == AppConstants.userId,
                          },).then((value) {
                            ref.read(searchViewModel).getAllPeople(
                                context,
                                const AllPeopleRequestModel(
                                    interests: '',
                                    searchKey: '',
                                    timeFilter: 'allTime',),);
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width*0.5,
                              child: Text(
                                widget.postData.groupId == null
                                    ? "${widget.postData.userId?.firstName} ${widget.postData.userId?.lastName}"
                                    : "${widget.postData.groupId?.name}",
                                    overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            if(widget.postData.groupId != null) Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/group-followers-icon.svg',),
                              gapW4,
                              Text(
                                "${widget.postData.groupId?.followers?.length ?? 0}".length > 3
                                ? "${"${widget.postData.groupId?.followers?.length ?? 0}".substring(0, "${widget.postData.groupId?.followers?.length ?? 0}".length - 3)}k"
                                : "${widget.postData.groupId?.followers?.length ?? 0}",
                                // widget.postData.follower.toString(),
                                style: const TextStyle(
                                  color:   kBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              gapW4,
                              Text(
                                "(${widget.postData.rating ?? 0}) ${widget.postData.averageRating?.toStringAsFixed(1) ?? 0}",
                                style: const TextStyle(
                                  color:  kGrey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              gapW4,
                              RatingBarIndicator(
                                rating: widget.postData.averageRating ?? 0,
                                itemSize: 12.0,
                                physics:
                                    const BouncingScrollPhysics(),
                                itemBuilder: (context, _) =>
                                    const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              
                            ],
                          ),
                          // Text(
                          //     "posted on ${DateFormat.E().format(widget.postData.createdAt ?? DateTime.now())} at ${DateFormat.jm().format(widget.postData.createdAt ?? DateTime.now())}",
                          //    ),
                          if(widget.postData.groupId == null)Row(
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
                                "${widget.postData.userId?.followers?.length ?? 0}".length > 3
                              ? "${"${widget.postData.userId?.followers?.length ?? 0}".substring(0, "${widget.postData.userId?.followers?.length ?? 0}".length - 3)}k"
                              : "${widget.postData.userId?.followers?.length ?? 0}",
                                style: const TextStyle(
                                  color: kBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          if(widget.postData.groupId != null) Row(
                              children: [
                                Text(
                                  "${widget.postData.userId?.firstName ?? ''} ${widget.postData.userId?.lastName ?? ''}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                gapW4,
                                if ((widget.postData.userId?.expertise != null) || (widget.postData.userId?.expertise?.isNotEmpty ?? false)) 
                                  Text(
                                    "(${widget.postData.userId?.expertise ?? ""})", 
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                                  ) 
                                else 
                                  const SizedBox.shrink(),
                              ],
                            ),
                          gapH4,
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
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: widget.postData.isFollowing == false ? () async {
                              if(AppConstants.usertype == 0) {
                                guestLoginRequestDialog(context, "to follow ");
                              }else if(widget.postData.groupId == null){
                                Logger.printError(widget.postData.userId?.id ?? "");
                                await ref.read(userProfileViewModel).followUser(context, widget.postData.userId?.id ?? "").then((value){
                                  setState(() {});
                                  ref.watch(exploreSearchViewModel).resetPageNumber();
                                  ref.watch(exploreSearchViewModel).clearAllDataList();
                                  ref.watch(exploreSearchViewModel).getExplorePost(context, ExplorePeopleRequestModel(interests: widget.interests, ), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
                                });
                              }else{
                                setState(() {
                                    isload = true;
                                    groupIndex = widget.index;
                                  });
                                  if(widget.postData.privacy == 'public'){
                                    await ref.read(publicGroupProfileViewModel).followGroup( context, widget.postData.groupId?.id ?? "",).then((value){
                                      setState(() {isload = false;});
                                      ref.watch(exploreSearchViewModel).resetPageNumber();
                                      ref.watch(exploreSearchViewModel).clearAllDataList();
                                      ref.watch(exploreSearchViewModel).getExplorePost(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: ''), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
                                    });
                                    
                                  }else if(widget.postData.privacy == 'private'){
                                    await ref.read(privateGroupProfileViewModel).followGroup( context, widget.postData.groupId?.id ?? "",).then((value){
                                      setState(() {isload = false;});
                                      ref.watch(exploreSearchViewModel).resetPageNumber();
                                      ref.watch(exploreSearchViewModel).clearAllDataList();
                                      ref.watch(exploreSearchViewModel).getExplorePost(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: ''), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
                                    });
                                  }
                              }
                            } : (){},
                        child: Container(
                          height: AppSizes.p32,
                          width: AppSizes.p32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: widget.postData.isFollowing == false ? primaryColor : kWhite,
                          ),
                          child:  widget.postData.isFollowing == false 
                              ? isload == true && groupIndex == widget.index ? const SizedBox(height: 15, width : 15, child: CircularProgressIndicator(color: kWhite, )) :
                              const Icon(
                                Icons.person_add_alt_outlined,
                                color: kWhite,
                                size: AppSizes.p20,
                              )
                              : const SizedBox(),
                        ),
                      ),
                      gapW16,
                      const Icon(
                        Icons.more_horiz,
                        color: kBlack,
                        size: AppSizes.p20,
                      ),
                    ],
                  ),
                ),
                // gapH8,
                Container(
                  color: widget.postData.bgColor?.isEmpty ?? false
                      ? kWhite
                      : Color(int.parse(AppConstants.formatColor(
                          widget.postData.bgColor ?? "0xffffffff",),),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
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
                      if (widget.postData.postImage?.isNotEmpty ?? false) gapH16,
                      // Text(widget.postData.postImage?.isEmpty.toString() ?? ''),
                      SizedBox(
                        //!==>image box style
                        // decoration: BoxDecoration(
                        //   // borderRadius: BorderRadius.circular(18),
                        // ),
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: widget.postData.postImage!.isEmpty ||
                                (!widget.postData.postImage!.contains(".jpg") &&
                                        !widget.postData.postImage!
                                            .contains(".png") ||
                                    !widget.postData.postImage!.contains('http') ||
                                    widget.postData.postImage!.isEmpty)
                            ? Container()
                            : ClipRRect(
                                // borderRadius: BorderRadius.circular(18),
                                child: WidgetZoom(
                                  heroAnimationTag: 'tag',
                                  zoomWidget: Image(image:  NetworkImage(
                                    widget.postData.postImage ?? "",
                                    
                                  ), fit: BoxFit.contain,),
                                ),
                              ),
                      ),
                      if(widget.postData.gif?.isNotEmpty ?? false) gapH16,
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: widget.postData.gif == null
                            ? Container()
                            : (widget.postData.gif!.isEmpty ||
                                    (!widget.postData.gif!.contains(".gif") ||
                                        !widget.postData.gif!.contains('http') ||
                                        widget.postData.gif!.isEmpty))
                                ? Container()
                                : ClipRRect(
                                    // borderRadius: BorderRadius.circular(18),
                                    child: Image(image:  NetworkImage(
                                      widget.postData.gif ?? "",
                                      
                                    ), fit: BoxFit.cover,),
                                  ),
                      ),
                      

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


                      if(widget.postData.checkInImage?.isNotEmpty ?? false) gapH10,
                      SizedBox(
                        //!==>image box style
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(18),
                        // ),
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: widget.postData.checkInImage == null
                            ? Container()
                            : (widget.postData.checkInImage!.isEmpty ||
                                    (!widget.postData.checkInImage!
                                                .contains(".jpg") &&
                                            !widget.postData.checkInImage!
                                                .contains(".png") ||
                                        !widget.postData.checkInImage!
                                            .contains('http') ||
                                        widget.postData.checkInImage!.isEmpty))
                                ? Container()
                                : ClipRRect(
                                    // borderRadius: BorderRadius.circular(18),
                                    child: Image(image:  NetworkImage(
                                      widget.postData.checkInImage ?? "",
                                      
                                    ), fit: BoxFit.cover,),
                                  ),
                      ),
                      gapH16,
                    ],
                  ),
                ),
                gapH10,
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.w,
                        padding: AppConstants.usertype == 0
                            ? const EdgeInsets.all(8)
                            : null,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[100],
                        ),
                        child: AppConstants.usertype == 0
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'assets/icons/account-pic.svg',
                                ),
                              )
                            : ((ref
                                                .watch(selfDataProvider)
                                                .singleUserResponseModel
                                                .data
                                                ?.profilePhoto ??
                                            "") ==
                                        "" ||
                                    !(ref
                                            .watch(selfDataProvider)
                                            .singleUserResponseModel
                                            .data
                                            ?.profilePhoto
                                            ?.contains("https://skillcollab") ??
                                        true))
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      'assets/icons/account-pic.svg',
                                    ),
                                  )
                                : CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      ref
                                              .watch(selfDataProvider)
                                              .singleUserResponseModel
                                              .data
                                              ?.profilePhoto ??
                                          "",
                                    ),
                                    backgroundColor: kWhite,
                                  ),
                      ),
                      gapW10,
                      Expanded(
                        child: GestureDetector(
                          onTap: () {                      
                      
                            // context
                            //     .pushNamed(AppRoute.sinlgePost.name,
                            //         extra: PeopleAndGroupPost(id: widget.postData.groupId?.id ?? ""),)
                            //     .then((value) {
                            //   ref
                            //       .read(dashboardViewModel)
                            //       .getAllGroupsAndPeopleWithLogin(
                            //         context,
                            //         const GetAllGroupsAndPeopleWithLoginRequestModel(
                            //             searchKey: '',
                            //             interests: '',
                            //             timeFilter: 'allTime',),
                            //         ref
                            //             .read(dashboardViewModel)
                            //             .allGroupsAndPeoplePageSize,
                            //         ref.read(dashboardViewModel).pageNumber,
                            //         load: false,
                            //       );
                            // });
                            context.pushNamed(AppRoute.sinlgePost.name, extra: widget.postData.id ?? "").then((value) {
                              ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                                commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                                
                                );
                                setState(() {
                                  
                              });
                            });
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F7F9),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              enabled: false,
                              controller: commentController,
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

                            if(ref.read(exploreSearchViewModel).postDataList[widget.index].likeDislike == null) {
                                ref.read(exploreSearchViewModel).postDataList[widget.index] = ref.read(exploreSearchViewModel).postDataList[widget.index].copyWith(
                                  likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                );
                              } else {
                                ref.read(exploreSearchViewModel).postDataList[widget.index] = ref.read(exploreSearchViewModel).postDataList[widget.index].copyWith(
                                  likeDislike: ref.read(exploreSearchViewModel).postDataList[widget.index].likeDislike?.copyWith(
                                    isLike: upvote,
                                    isDislike: downvote,
                                  ),
                                );
                              }
                          });
                      
                          await ref
                              .read(singlePostViewModel)
                              .likeDislikePost(
                                context,
                                LikeDislikeRequestModel(
                                  isLike: upvote,
                                  isDislike: downvote,
                                  postId: widget.postData.id ?? "",
                                  type: 'post',
                                ),
                              )
                              .then((value) {
                            ref
                                .read(dashboardViewModel)
                                .getAllGroupsAndPeopleWithLogin(
                                  context,
                                  const GetAllGroupsAndPeopleWithLoginRequestModel(
                                      interests: '',
                                      searchKey: '',
                                      timeFilter: "allTime",),
                                  ref
                                      .read(dashboardViewModel)
                                      .allGroupsAndPeoplePageSize,
                                  1,
                                  load: false,
                                );
                          });
                      
                          HapticFeedback.heavyImpact();
                        },
                        child: Icon(
                          Icons.thumb_up_alt_rounded,
                          size: 20,
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

                            if(ref.read(exploreSearchViewModel).postDataList[widget.index].likeDislike == null) {
                                ref.read(exploreSearchViewModel).postDataList[widget.index] = ref.read(exploreSearchViewModel).postDataList[widget.index].copyWith(
                                  likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                );
                              } else {
                                ref.read(exploreSearchViewModel).postDataList[widget.index] = ref.read(exploreSearchViewModel).postDataList[widget.index].copyWith(
                                  likeDislike: ref.read(exploreSearchViewModel).postDataList[widget.index].likeDislike?.copyWith(
                                    isLike: upvote,
                                    isDislike: downvote,
                                  ),
                                );
                              }
                          });
                      
                          await ref
                              .read(singlePostViewModel)
                              .likeDislikePost(
                                context,
                                LikeDislikeRequestModel(
                                  isLike: upvote,
                                  isDislike: downvote,
                                  postId: widget.postData.id ?? "",
                                  type: 'post',
                                ),
                              )
                              .then((value) {
                            ref
                                .read(dashboardViewModel)
                                .getAllGroupsAndPeopleWithLogin(
                                  context,
                                  const GetAllGroupsAndPeopleWithLoginRequestModel(
                                      interests: '',
                                      searchKey: '',
                                      timeFilter: "allTime",),
                                  ref
                                      .read(dashboardViewModel)
                                      .allGroupsAndPeoplePageSize,
                                  1,
                                  load: false,
                                );
                          });
                      
                          HapticFeedback.heavyImpact();
                        },
                        child: Icon(
                          Icons.thumb_down_alt_rounded,
                          size: 20,
                          color: downvote ? Colors.redAccent : kGrey,
                        ),
                      ),
                      gapW4,
                      Text("$dislikeCounts"),
                    ],
                  ),
                ),
                gapH16,
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/postCommentIcon.svg',
                        height: 25,
                      ),
                      gapW10,
                      Text(
                        widget.postData.groupId == null
                            ? "${widget.postData.commentCounts} "
                            : "${widget.postData.commentCounts}",
                        style: const TextStyle(
                          color: kBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Share.share(widget.postData.description ?? "");
                        },
                        icon: const Icon(
                          Icons.share_outlined,
                          color: kGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (widget.postData.isBan == true || widget.postData.userId?.isBan == true) Positioned.fill(
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
}
