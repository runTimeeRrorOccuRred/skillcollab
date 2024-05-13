// ignore_for_file: deprecated_member_use, eol_at_end_of_file

import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

class DashboardGroupsViewTileWOL extends ConsumerStatefulWidget {
  final DashboardGroupModel groupModel;
  final int index;
  
  const DashboardGroupsViewTileWOL({super.key, required this.groupModel, required this.index});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardGroupsViewTileWOLState();
}

class _DashboardGroupsViewTileWOLState extends ConsumerState<DashboardGroupsViewTileWOL> {  

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
      ref.read(dashboardViewModel).postionControl(-1);
    });
    if(widget.groupModel.videoUrl != ""){
      generateThumbnail(!widget.groupModel.videoUrl!.contains("http") ? 'https://${widget.groupModel.videoUrl ?? ""}' : widget.groupModel.videoUrl ?? "");
    }
    
    upvote = widget.groupModel.likeDislike?.isLike ?? false;
    downvote = widget.groupModel.likeDislike?.isDislike ?? false;
    likeCounts = widget.groupModel.likeCounts ?? 0;
    dislikeCounts = widget.groupModel.dislikeCounts ?? 0;
    isFollowing = widget.groupModel.isFollowing ?? false;
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
    return IgnorePointer(
      ignoring: widget.groupModel.isBan == true || widget.groupModel.isBan == true,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
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
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // final GroupDatum groupDatum = GroupDatum(
                          //   id: widget.groupModel.groupId ?? "",
                          // );                    
                  
                          // context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                          //   "groupDetails": groupDatum,
                          //   "isSelfGroup": (widget.groupModel.groupData?.userId ?? "") == AppConstants.userId,
                          // },);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          padding: !(widget.groupModel.groupData?.groupPhoto
                                      ?.contains("https://skill") ??
                                  false)
                              ? const EdgeInsets.all(8)
                              : EdgeInsets.zero,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kWhite,
                          ),
                          child: !(widget.groupModel.groupData?.groupPhoto
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
                                    widget.groupModel.groupData?.groupPhoto ?? "",
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
                              // final GroupDatum groupDatum = GroupDatum(
                              //   id: widget.groupModel.groupId ?? "",
                              // );                        
                  
                              // context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                              //   "groupDetails": groupDatum,
                              //   "isSelfGroup": (widget.groupModel.groupData?.userId ?? "") == AppConstants.userId,
                              // },);
                            },
                            child: Text(
                              widget.groupModel.groupData?.name ?? "",
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
                              SvgPicture.asset(
                                  'assets/icons/followers.svg',),
                              gapW4,
                              Text(
                                "${widget.groupModel.groupData?.followers?.length ?? 0}".length > 3
                                ? "${"${widget.groupModel.groupData?.followers?.length ?? 0}".substring(0, "${widget.groupModel.groupData?.followers?.length ?? 0}".length - 3)}k"
                                : "${widget.groupModel.groupData?.followers?.length ?? 0}",
                                // widget.groupModel.follower.toString(),
                                style: const TextStyle(
                                  color:   kBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              gapW4,
                              Text(
                                "(${widget.groupModel.rating ?? 0}) ${widget.groupModel.averageRating?.toStringAsFixed(1) ?? 0}",
                                style: const TextStyle(
                                  color:  kGrey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              gapW4,
                              RatingBarIndicator(
                                rating: widget.groupModel.averageRating ?? 0,
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
                          //     "posted on ${DateFormat.E().format(widget.groupModel.createdAt ?? DateTime.now())} at ${DateFormat.jm().format(widget.groupModel.createdAt ?? DateTime.now())}",
                          //    ),
                          Row(
                              children: [
                                Text(
                                  "${widget.groupModel.userId?.firstName ?? ''} ${widget.groupModel.userId?.lastName ?? ''}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                gapW4,
                                if ((widget.groupModel.userId?.expertise != null) || (widget.groupModel.userId?.expertise?.isNotEmpty ?? false)) 
                                  Text(
                                    "(${widget.groupModel.userId?.expertise ?? ""})", 
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
                                DateFormat.yMMMMd('en_US').format(widget.groupModel.createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                                DateFormat.jm().format(widget.groupModel.createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                      const Spacer(),


                      //ANCHOR - Follow unfollow button
                      //! Follow unfollow button
                      GestureDetector(
                        onTap: () async {

                          // if(!isFollowing) {
                          //   setState(() {
                          //     isFollowing = true;
                          //   });

                          //   await ref.read(dashboardViewModel).followGroup(context, widget.groupModel.groupId ?? "");

                          //   final list = ref.read(dashboardViewModel).groupDataList.map((e) {
                          //     DashboardGroupModel updatedPostData = const DashboardGroupModel();
                          //     if((e.groupId ?? "") == (widget.groupModel.groupId ?? "")) {
                          //       updatedPostData = e.copyWith(
                          //         isFollowing: true,
                          //       );
                          //     } else {
                          //       updatedPostData = e;
                          //     }
                          //     Logger.printInfo("${updatedPostData.groupData?.name ?? ""} isFollowing : ${updatedPostData.isFollowing ?? false}");
                          //     return updatedPostData;
                          //   }).toList();                            
                          //   ref.read(dashboardViewModel).setGroupDataList(list);

                          //   Fluttertoast.showToast(
                          //     msg: "Followed ${widget.groupModel.groupData?.name ?? ""}",
                          //     backgroundColor: Colors.green[300],
                          //     gravity: ToastGravity.BOTTOM,
                          //     textColor: Colors.white
                          //   );
                          // } else {
                          //   showDialog(
                          //     context: context, 
                          //     builder: (context) {
                          //       return AlertDialog(
                          //         backgroundColor: kWhite,
                          //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          //         title: const Text("Unfollow", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.redAccent),),
                          //         content: Text("Are you sure you want to unfollow ${widget.groupModel.groupData?.name}?", style: const TextStyle(fontWeight: FontWeight.w700),),
                          //         actions: [
                          //           TextButton(
                          //             onPressed: () {
                          //               Navigator.pop(context);
                          //             }, 
                          //             child: const Text("No", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                          //           ),
                          //           TextButton(
                          //             onPressed: () async {
                          //               setState(() {
                          //                 isFollowing = false;
                          //               });
                          //               await ref.read(dashboardViewModel).unfollowGroup(context, widget.groupModel.groupId ?? "").then((value) {
                          //                 final list = ref.read(dashboardViewModel).groupDataList.map((e) {
                          //                   DashboardGroupModel updatedPostData = const DashboardGroupModel();
                          //                   if((e.groupId ?? "") == (widget.groupModel.groupId ?? "")) {
                          //                     updatedPostData = e.copyWith(
                          //                       isFollowing: false,
                          //                     );
                          //                   } else {
                          //                     updatedPostData = e;
                          //                   }
                          //                   return updatedPostData;
                          //                 }).toList();
                          //                 ref.read(dashboardViewModel).setGroupDataList(list);
                          //                 Fluttertoast.showToast(
                          //                   msg: "Unfollowed ${widget.groupModel.groupData?.name ?? ""}",
                          //                   backgroundColor: Colors.red,
                          //                   gravity: ToastGravity.BOTTOM,
                          //                   textColor: Colors.white
                          //                 );
                          //                 Navigator.pop(context);
                          //               });
                          //             }, 
                          //             child: const Text("Yes", style: TextStyle(color: Colors.redAccent),),
                          //           ),
                          //         ],
                          //       );
                          //     },
                          //   );
                          // }

                          // HapticFeedback.heavyImpact();
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor, width: 2),
                            borderRadius: BorderRadius.circular(5),
                            color: isFollowing ? kWhite : primaryColor,
                          ),
                          child: isFollowing 
                            ? Padding(padding: const EdgeInsets.all(8), child: SvgPicture.asset("assets/icons/remove-user.svg", color: primaryColor,))
                            : Image.asset("assets/icons/follow.png", color: Colors.white,),
                        ),
                      ),
                      gapW10,

                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // if((widget.groupModel.userId?.id ?? "") == AppConstants.userId) {
                              //   _showUserPostEditOptionBottomSheet(
                              //       context, 
                              //       widget.groupModel.description ?? "", 
                              //       widget.groupModel.id ?? "",
                              //       () {},
                              //       widget.groupModel.privacy ?? "",
                              //     );
                              // } else {
                              //   showModalBottomSheet(
                              //     context: context,
                              //     isScrollControlled: true,
                              //     backgroundColor: Colors.white,
                              //     shape: const RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(30),
                              //         topRight: Radius.circular(30),
                              //       ),
                              //     ),
                              //     builder: (context) => SizedBox(
                              //       height: 120.h,
                              //       child: 
                              //         Column(
                              //           mainAxisAlignment: MainAxisAlignment.end,
                              //           mainAxisSize: MainAxisSize.min,
                              //         children: [
                              //           Row(
                              //             mainAxisAlignment: MainAxisAlignment.end,
                              //             children: [
                              //             InkWell(
                              //             onTap: () {
                              //               Navigator.of(context).pop();
                              //             },
                              //             child: const Padding(
                              //               padding: EdgeInsets.only(top: 28, right: 16),
                              //               child: Icon(Icons.close),
                              //             ),
                              //           ),
                              //           ],),
                              //           // const SizedBox(height: 40,),
                              //           InkWell(
                              //             onTap: () {
                              //               Navigator.push(context, MaterialPageRoute(builder: (context) => ChatView(peerUserModel: UserModel(
                              //                 id: widget.groupModel.userId?.id ?? "",
                              //                 accountId: widget.groupModel.userId?.accountId ?? "",
                              //                 accountLink: widget.groupModel.userId?.accountLink ?? "",
                              //                 customerId: widget.groupModel.userId?.customerId ?? "",
                              //                 coverPhoto: widget.groupModel.userId?.coverPhoto ?? "",
                              //                 profilePhoto: widget.groupModel.userId?.profilePhoto ?? "",
                              //                 description: widget.groupModel.userId?.description ?? "",
                              //                 email: widget.groupModel.userId?.email ?? "",
                              //                 firstName: widget.groupModel.userId?.firstName ?? "",
                              //                 lastName: widget.groupModel.userId?.lastName ?? "",
                              //                 userName: widget.groupModel.userId?.userName ?? "",
                              //               ),),),);
                              //             },
                              //             child: Padding(
                              //               padding: const EdgeInsets.all(12.0),
                              //               child: Row(children: [
                              //                 Image.asset("assets/icons/drop_down_message.png", color: Colors.black,),
                              //                 const SizedBox(width: AppSizes.p10,),
                              //                 Text("Message",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
                              //               ],),
                              //             ),
                              //           ),
                              //           Padding(
                              //             padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
                              //             child: Container(
                              //               height: 0.5,
                              //               color: Colors.grey,
                              //             ),
                              //           ),
            
                              //           //  InkWell(
                              //           //   onTap: (){},
                              //           //    child: Padding(
                              //           //     padding: const EdgeInsets.all(12.0),
                              //           //     child: Row(children: [
                              //           //       Image.asset("assets/icons/drop_down_hide.png"),
                              //           //       SizedBox(width: AppSizes.p10,),
                              //           //       Text("Hide",style: GoogleFonts.inter(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500,),)
                              //           //     ],),
                              //           //                                  ),
                              //           //  ),
                              //           Padding(
                              //             padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
                              //             child: Container(
                              //               height: 0.5,
                              //               color: Colors.grey,
                              //             ),
                              //           ),
            
                              //             InkWell(
                              //             onTap: () {
                              //               //--------------------Showing Dialog --------------------//
                              //               showDialog(
                              //                 context: context, 
                              //                 builder: (BuildContext context) {
                              //                 return AlertDialog(
                              //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              //                 title: const Center(child: Text("Report Post", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)),
                              //                 content: SizedBox(
                              //                   height: MediaQuery.of(context).size.height / 5,
                              //                   child: Column(
                              //                     children: [
                              //                       CommonTextField(
                                                      
                              //                         hintText: 'Write a Report Message !',
                              //                         controller: _reportController,
                              //                         maxLines: 3,
                              //                       ),
                              //                       gapH16,
                              //                       SizedBox(
                              //                         height: 45,
                              //                         width: MediaQuery.of(context).size.width / 1.3,
                              //                         child: GestureDetector(
                              //                           onTap: () {
                              //                             Navigator.pop(context);
                              //                             Navigator.pop(context);
                              //                             ref.read(dashboardViewModel).getReport(context, ReportRequestModel(
                              //                               content: "$_reportController",
                              //                               toUserId: widget.groupModel.userId?.id ?? "",
                              //                               type: 'post',
                              //                             ),);
                              //                             showCustomSnackBar(context, text: "Reported Post Successfully", color: Colors.green);
                              //                           },
                              //                           child: const CustomButton(
                                                          
                              //                             text: "Report",
                              //                           ),
                              //                         ),
                              //                       ),
                                                    
                              //                     ],
                              //                   ),
                              //                 ),
                              //               );
                              //               },
                              //               );
                                            
                              //             },
                              //               child: Padding(
                              //               padding: const EdgeInsets.all(12.0),
                              //               child: Row(children: [
                              //                 Image.asset("assets/icons/drop_down_report.png", color: Colors.black,),
                              //                 const SizedBox(width: AppSizes.p10,),
                              //                 Text("Report",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),),
                              //               ],),
                              //                                             ),
                              //             ),
                              //             gapH10,
                              //         ],
                              //       )
                              //           ,
                              //     ),);
                              // }
                            },
                            child: Image.asset("assets/icons/tripledot.png"),),
                        ],
                      ),
                    ],
                  ),
                ),
                // gapH16,
                GestureDetector(
                  onTap: () {
                    // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                    //   id: widget.groupModel.id ?? "",
                    // );
                    
                    // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.groupModel.id ?? "").then((value) {
                    //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                    //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                        
                    //     );
                    //     setState(() {
                          
                    //   });
                    // });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    color: widget.groupModel.bgColor?.isEmpty ?? false ? kWhite : Color(int.parse(AppConstants.formatColor(widget.groupModel.bgColor ?? "0xffffffff"))),
          
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                            //   id: widget.groupModel.id ?? "",
                            // );
                            
                            // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.groupModel.id ?? "").then((value) {
                            //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
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
                                    text: (widget.groupModel.description ?? "").length > 100 
                                      ? "${(widget.groupModel.description ?? "").substring(0, 101)}..." 
                                      : widget.groupModel.description ?? "",
                                      style: TextStyle(
                                        color: AppConstants.formatColor( widget.groupModel.bgColor ?? "",) == '0xff54b3bf' 
                                      || AppConstants.formatColor( widget.groupModel.bgColor ?? "",) == '0xff59cc66' 
                                      || AppConstants.formatColor( widget.groupModel.bgColor ?? "",) == '0xffff6666'
                                                ? Colors.white
                                                : kBlack,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                                  TextSpan(
                                    text: (widget.groupModel.description ?? "").length > 100 ? " Read More" : "",
                                    style: TextStyle(
                                      color: AppConstants.formatColor( widget.groupModel.bgColor ?? "",) == '0xff54b3bf' 
                                      || AppConstants.formatColor( widget.groupModel.bgColor ?? "",) == '0xff59cc66' 
                                      || AppConstants.formatColor( widget.groupModel.bgColor ?? "",) == '0xffff6666'
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
                        if (widget.groupModel.postImage == "") const SizedBox() else gapH16,
                        GestureDetector(
                          onTap: () {
                            // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                            //   id: widget.groupModel.id ?? "",
                            // );
                            
                            // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.groupModel.id ?? "").then((value) {
                            //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                            //     commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                                
                            //     );
                            //     setState(() {
                                  
                            //   });
                            // });
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.2,
                            child: widget.groupModel.postImage ==
                                        null ||
                                    (!(widget.groupModel.postImage?.contains('.jpg') ?? false) &&
                                        !(widget.groupModel.postImage?.contains('.png') ?? false)) ||
                                    !(widget.groupModel.postImage?.contains('http') ?? false) ||
                                    (widget.groupModel.postImage?.isEmpty ?? false)
                                ? Container()
                                : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: WidgetZoom(
                                        heroAnimationTag: 'tag',
                                        zoomWidget: Image.network(
                                            widget.groupModel.postImage ?? '',
                                            fit: BoxFit.contain,
                                        ),
                                    ),
                                      ),
                          ),
                        ),
                        if (widget.groupModel.gif == "") const SizedBox() else gapH16,
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height*0.2,
                          child: widget.groupModel.gif ==
                                      null ||
                                  (!(widget.groupModel.gif?.contains('.gif') ?? true)) ||
                                  !(widget.groupModel.gif?.contains('http') ?? true) ||
                                  (!(widget.groupModel.gif?.contains('.gif') ?? false)) ||
                                  !(widget.groupModel.gif?.contains('http') ?? false)||
                                  (widget.groupModel.gif?.isEmpty ?? false)
                              ? Container()
                              : ClipRRect(
                                  // borderRadius: BorderRadius.circular(18),
                                  child: Image.network(
                                    widget.groupModel.gif ?? '',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        if (widget.groupModel.videoUrl == "") const SizedBox() else gapH16,
                        if (
                                (isVideoPlaying == false || ref.read(dashboardViewModel).positionAll != widget.index) &&
                                widget.groupModel.videoUrl != null && widget.groupModel.videoUrl != ""
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
                                                color:  ref.read(dashboardViewModel).positionAll == widget.index ? Colors.transparent : Colors.white.withOpacity(0.9),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: IconButton(
                                                onPressed: ()async {
                                                  ref.read(dashboardViewModel).postionControl(widget.index);
                                                  isPressed = true;
          
                                                  await _videoController.dispose();
          
                                                  if(!widget.groupModel.videoUrl!.contains("http")){
                                                    await _initController('https://${widget.groupModel.videoUrl ?? ""}');
                                                    
                                                  }else{
                                                    await _initController(widget.groupModel.videoUrl ?? "");
                                                  }
                                                  setState(() {
                                                    isVideoPlaying = true;
                                                    isPlay = true;
                                                  });
                                                  Logger.printSuccess(ref.read(dashboardViewModel).positionAll.toString());
                                                  Logger.printSuccess(widget.groupModel.videoUrl ?? "");
                                                },
                                                visualDensity: VisualDensity.compact,
                                                icon:  ref.read(dashboardViewModel).positionAll == widget.index ? const SpinKitThreeBounce(
                                                          color: primaryColor,
                                                          size: 15,
                                                        ) : const Icon(Icons.play_arrow, color: primaryColor, weight: 50),
                                                highlightColor: ref.read(dashboardViewModel).positionAll == widget.index ? Colors.transparent : kWhite,
                                              ),
                                            ),
                                          ],
                                        )
                                else if(isVideoPlaying == true && ref.read(dashboardViewModel).positionAll == widget.index &&
                                widget.groupModel.videoUrl  != null && widget.groupModel.videoUrl  != "") DecoratedBox(
                                //!==>image box style
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                // width: MediaQuery.of(context).size.width,
                                // height: MediaQuery.of(context).size.height*0.2,
                                child: widget.groupModel.videoUrl  == "" 
                                  ||  !(widget.groupModel.videoUrl?.contains('.mp4') ?? false)
                                  ||  !(widget.groupModel.videoUrl?.contains('nyc') ?? false)
                                  ||  (widget.groupModel.videoUrl?.isEmpty ?? false)
                                    ? Container()
                                    : GestureDetector(
                                      onTap: () {
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
                        if (widget.groupModel.checkInImage ==
                                      null ||
                                  (!(widget.groupModel.checkInImage?.contains('.jpg') ?? false) &&
                                  !(widget.groupModel.checkInImage?.contains('.jpeg') ?? false) &&
                                      !(widget.groupModel.checkIn?.contains('.png') ?? false)) ||
                                  !(widget.groupModel.checkInImage?.contains('http') ?? false) ||
                                  (widget.groupModel.checkInImage?.isEmpty ?? false)) Container() else gapH10,
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height*0.2,
                          child: widget.groupModel.checkInImage ==
                                      null ||
                                  (!(widget.groupModel.checkInImage?.contains('.jpg') ?? false) &&
                                  !(widget.groupModel.checkInImage?.contains('.jpeg') ?? false) &&
                                      !(widget.groupModel.checkIn?.contains('.png') ?? false)) ||
                                  !(widget.groupModel.checkInImage?.contains('http') ?? false) ||
                                  (widget.groupModel.checkInImage?.isEmpty ?? false)
                              ? Container()
                              : ClipRRect(
                                  // borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    widget.groupModel.checkInImage ?? '',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
                gapH16,
                Padding(
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
                        child: GestureDetector(
                          onTap: () {
                            // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                            //   id: widget.groupModel.id ?? "",
                            // );
                            
                            // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.groupModel.id ?? "").then((value) {
                            //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
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
                          //   if(upvote) {
                          //     likeCounts++;
                          //   } else {
                          //     likeCounts--;
                          //   }

                          //   if(downvote) {
                          //     downvote = false;
                          //     dislikeCounts--;
                          //   }

                          //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                          //     likeDislike: ref.read(dashboardViewModel).groupDataList[widget.index].likeDislike?.copyWith(
                          //       isLike: upvote,
                          //       isDislike: downvote,
                          //     ),
                          //     likeCounts: likeCounts,
                          //     dislikeCounts: dislikeCounts,  
                          //   );
                          // });
                      
                          // await ref.read(singlePostViewModel).likeDislikePost(
                          //   context, 
                          //   LikeDislikeRequestModel(
                          //     isLike: upvote,
                          //     isDislike: downvote,
                          //     postId: widget.groupModel.id ?? "",
                          //     type: 'post',
                          //   ),
                          // ).then((value) {
                          //   ref.read(dashboardViewModel).getPublicPosts(
                          //     context, 
                          //     const GetPublicPostsRequestModel(interests: '', searchKey: '', timeFilter: "allTime", feedFilter: ''), 
                          //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize, ref.read(dashboardViewModel).pageNumber,
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
                      Text("$likeCounts"),
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

                          //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                          //     likeDislike: ref.read(dashboardViewModel).groupDataList[widget.index].likeDislike?.copyWith(
                          //       isLike: upvote,
                          //       isDislike: downvote,
                          //     ),
                          //     likeCounts: likeCounts,
                          //     dislikeCounts: dislikeCounts,  
                          //   );
                          // });
                  
                          // await ref.read(singlePostViewModel).likeDislikePost(
                          //   context, 
                          //   LikeDislikeRequestModel(
                          //     isLike: upvote,
                          //     isDislike: downvote,
                          //     postId: widget.groupModel.id ?? "",
                          //     type: 'post',
                          //   ),
                          // ).then((value) {
                          //   ref.read(dashboardViewModel).getPublicPosts(
                          //     context, 
                          //     const GetPublicPostsRequestModel(interests: '', searchKey: '', timeFilter: "allTime", feedFilter: ''), 
                          //     ref.read(dashboardViewModel).allGroupsAndPeoplePageSize, ref.read(dashboardViewModel).pageNumber,
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
                      Text("$dislikeCounts"),
                    ],
                  ),
                ),
                gapH10,
                GestureDetector(
                  onTap: () {
                    // context.pushNamed(AppRoute.sinlgePost.name, extra: widget.groupModel.id ?? "").then((value) {
                    //   ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
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
                        Text(
                          widget.groupModel.commentCounts
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
                            Share.share(widget.groupModel.description ?? "");
                          }, 
                          icon: const Icon(Icons.share_outlined, color:  kGrey,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (widget.groupModel.isBan == true || widget.groupModel.userId?.isBan == true) Positioned.fill(
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




  Future<void> _showUserPostEditOptionBottomSheet(BuildContext context, String postDescription, String postId, Function getPost, String privacy) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        final viewModel = ref.watch(dashboardViewModel);
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
                  .then((value) {getPost(context, widget.groupModel.userId?.id ?? "");}),

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
                  ref.read(userProfileViewModel).deletePost(context, postId);
                  viewModel.removeOneDashboardGroupPost(postId);
                  Fluttertoast.showToast(
                    msg: "Deleting post from your profile",
                    backgroundColor: Colors.blueGrey[900],
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_LONG,
                  );
                  Navigator.pop(context);
                  // _viewModel.deletePost(context, postId).then((value) {
                  //   try {
                  //     _viewModel.getPostsByUserId(context, const GetPostsByUserIdRequestModel(searchKey: "", interests: "", timeFilter: "allTime", privacy: "public"), widget.userPostData.userId?.id ?? "").whenComplete(() {
                  //       context.pop();
                  //     });
                  //   } catch(e) {
                  //     Logger.printInfo(e.toString());
                  //   }
                  //   // setState(() {});
                  //   // Future.delayed(Duration(seconds: 5), () => Navigator.pop(context));
                  // });
                }, 
              ),
              
            ],
          ),
        );
      },
    );
  }
}