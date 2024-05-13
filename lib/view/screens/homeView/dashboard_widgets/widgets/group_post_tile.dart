// ignore_for_file: avoid_dynamic_calls, deprecated_member_use, always_use_package_imports, prefer_const_constructors, use_late_for_private_fields_and_variables

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart' as ggm;
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

import '../../../../../data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

class GroupPostTile extends ConsumerStatefulWidget {
  final PeopleAndGroupPost userPostData;
  final int index;
  final bool? isSearch;
  const GroupPostTile({super.key, required this.userPostData, required this.index, this.isSearch = false});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GroupPostTileState();
}

class _GroupPostTileState extends ConsumerState<GroupPostTile> {    

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
  final TextEditingController _reportController = TextEditingController();
  bool videoLoader = true;
  

  // Future<VideoPlayerController> _initController(String link) async {
  //   _videoController = VideoPlayerController.networkUrl(Uri.parse(link));
  //   await _videoController.initialize().then((value) => setState(() {}));
  //   return _videoController;
  // }

  // Future<void> generateThumbnail(String link) async { // Replace with actual video URL
  //   final String thumbnailPath = (await getTemporaryDirectory()).path;
  //   final String? thumbnail = await VideoThumbnail.thumbnailFile(
  //     video: link,
  //     thumbnailPath: thumbnailPath,
  //     imageFormat: ImageFormat.WEBP,
  //     maxHeight: 1000,
  //     quality: 75,
  //   );
  //   if (thumbnail != null) {
  //     final File thumbnailFile = File(thumbnail);
  //     setState(() {
  //       _image = thumbnailFile.readAsBytesSync();
  //     });
  //   }
  // }

  void mapCreated(GoogleMapController controller) {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref.read(dashboardViewModel).postionControl(-1);

      //! INITIALIZING THE VIDEO CONTROLLER IFF A VIDEO URL IS PRESENT
      if(widget.userPostData.videoUrl != null && widget.userPostData.videoUrl != "") {
        final fileName = await VideoThumbnail.thumbnailFile(
          video: widget.userPostData.videoUrl!,
          thumbnailPath: (await getTemporaryDirectory()).path,
          imageFormat: ImageFormat.JPEG,
          maxHeight: 2000,
        );
        _image = File(fileName!).readAsBytesSync();
        // _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.userPostData.videoUrl!))..initialize();
      }

    });
    upvote = widget.userPostData.likeDislike?.isLike ?? false;
    downvote = widget.userPostData.likeDislike?.isDislike ?? false;
    likeCounts = widget.userPostData.likeCounts ?? 0;
    dislikeCounts = widget.userPostData.dislikeCounts ?? 0;
    isFollowing = widget.userPostData.isFollowing ?? false;

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        videoLoader = false;
      });
    });
  }

  @override
  void dispose() {
    // _videoController..initialize()..pause();
    // _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return IgnorePointer(
      ignoring: widget.userPostData.isBan == true || widget.userPostData.isBan == true,
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
                          final ggm.GroupDatum groupDatum = ggm.GroupDatum(
                            id: widget.userPostData.groupId?.id ?? "",
                          );
          
                          Logger.printInfo("${AppConstants.userId} || ${widget.userPostData.groupId?.userId}");
                  
                          context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                            "groupDetails": groupDatum,
                            "isSelfGroup": (widget.userPostData.groupId?.userId ?? "") == AppConstants.userId,
                          },).then((value) {
                            ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                              context, 
                              const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                              ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                              1,
                            );
                          });
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
                                // gpp.UserId? _userId = gpp.UserId(id: widget.userPostData.userId?.id ?? "");
          
                                final ggm.GroupDatum groupDatum = ggm.GroupDatum(
                                  id: widget.userPostData.groupId?.id ?? "",
                                  userId: ggm.UserId(id: widget.userPostData.groupId?.userId ?? ""),
                                );
          
                                Logger.printInfo("${AppConstants.userId} || ${widget.userPostData.groupId?.userId}");
                  
                                context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                                  "groupDetails": groupDatum,
                                  "isSelfGroup": (widget.userPostData.groupId?.userId ?? "") == AppConstants.userId,
                                },).then((value) {
                                  ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                                    context, 
                                    const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                                    ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                                    1,
                                  );
                                });
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
                                SvgPicture.asset(
                                    'assets/icons/followers.svg',
                                    ),
                                gapW4,
                                Text(
                                  "${widget.userPostData.groupId?.followers?.length ?? 0}".length > 3
                              ? "${"${widget.userPostData.groupId?.followers?.length ?? 0}".substring(0, "${widget.userPostData.groupId?.followers?.length ?? 0}".length - 3)}k"
                              : "${widget.userPostData.groupId?.followers?.length ?? 0}",
                                  style: const TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                gapW4,
                                Text(
                                  "(${widget.userPostData.groupId?.reviewer?.length ?? 0})",
                                  style: const TextStyle(
                                    color: kGrey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                gapW4,
                                RatingBarIndicator(
                                  rating: widget.userPostData.averageRating?.toDouble() ?? 0,
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
                            //     "posted on ${DateFormat.E().format(widget.userPostData.createdAt ?? DateTime.now())} at ${DateFormat.jm().format(widget.userPostData.createdAt ?? DateTime.now())}",
                            // ),
                            Row(
                              children: [
                                Text(
                                  "${widget.userPostData.userId?.firstName ?? ''} ${widget.userPostData.userId?.lastName ?? ''}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                gapW4,
                                if ((widget.userPostData.userId?.expertise != null) || (widget.userPostData.userId?.expertise?.isNotEmpty ?? false)) 
                                  Text(
                                    "(${widget.userPostData.userId?.expertise ?? ""})", 
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


                      //ANCHOR - Follow unfollow button
                      //! Follow unfollow button
                      Visibility(
                        visible: widget.userPostData.userId?.id != AppConstants.userId && !isFollowing,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () async {
                            
                                if(!isFollowing) {
                                  setState(() {
                                    isFollowing = true;
                                  });
                                  await ref.read(dashboardViewModel).followGroup(context, widget.userPostData.groupId?.id ?? "");
                            
                                  if(widget.isSearch ?? false) {
                                    final list = ref.read(searchViewModel).allDataList.map((e) {
                                      PeopleAndGroupPost updatedPostData = PeopleAndGroupPost();
                                      if((e.groupId?.id ?? "") == (widget.userPostData.groupId?.id ?? "")) {
                                        updatedPostData = e.copyWith(
                                          isFollowing: true,
                                        );
                                      } else {
                                        updatedPostData = e;
                                      }
                                      Logger.printInfo("${updatedPostData.groupId?.name ?? ""} isFollowing : ${updatedPostData.isFollowing ?? false}");
                                      return updatedPostData;
                                    }).toList();                            
                                    ref.read(searchViewModel).setAllDataList(list);
                                  } else {
                                    final list = ref.read(dashboardViewModel).allDataList.map((e) {
                                      PeopleAndGroupPost updatedPostData = PeopleAndGroupPost();
                                      if((e.groupId?.id ?? "") == (widget.userPostData.groupId?.id ?? "")) {
                                        updatedPostData = e.copyWith(
                                          isFollowing: true,
                                        );
                                      } else {
                                        updatedPostData = e;
                                      }
                                      Logger.printInfo("${updatedPostData.groupId?.name ?? ""} isFollowing : ${updatedPostData.isFollowing ?? false}");
                                      return updatedPostData;
                                    }).toList();                            
                                    ref.read(dashboardViewModel).setAllDataList(list);
                                  }
                            
                                  Fluttertoast.showToast(
                                    msg: "Followed ${widget.userPostData.groupId?.name ?? ""}",
                                    backgroundColor: Colors.green[300],
                                    gravity: ToastGravity.BOTTOM,
                                    textColor: Colors.white,
                                  );
                                } else {
                                  showDialog(
                                    context: context, 
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: kWhite,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        title: const Text("Unfollow", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.redAccent),),
                                        content: Text("Are you sure you want to unfollow ${widget.userPostData.groupId?.name}?", style: const TextStyle(fontWeight: FontWeight.w700),),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            }, 
                                            child: const Text("No", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                                          ),
                                          TextButton(
                                            onPressed: () async {
                                              setState(() {
                                                isFollowing = false;
                                              });
                                              
                                              if(widget.isSearch ?? false) {
                                                await ref.read(dashboardViewModel).unfollowGroup(context, widget.userPostData.groupId?.id ?? "").then((value) {
                                                  final list = ref.read(searchViewModel).allDataList.map((e) {
                                                    PeopleAndGroupPost updatedPostData = PeopleAndGroupPost();
                                                    if((e.groupId?.id ?? "") == (widget.userPostData.groupId?.id ?? "")) {
                                                      updatedPostData = e.copyWith(
                                                        isFollowing: false,
                                                      );
                                                    } else {
                                                      updatedPostData = e;
                                                    }
                                                    return updatedPostData;
                                                  }).toList();
                                                  ref.read(searchViewModel).setAllDataList(list);
                                                  Fluttertoast.showToast(
                                                    msg: "Unfollowed ${widget.userPostData.groupId?.name ?? ""}",
                                                    backgroundColor: Colors.red,
                                                    gravity: ToastGravity.BOTTOM,
                                                    textColor: Colors.white,
                                                  );
                                                  Navigator.pop(context);
                                                });
                                              } else {
                                                await ref.read(dashboardViewModel).unfollowGroup(context, widget.userPostData.groupId?.id ?? "").then((value) {
                                                  final list = ref.read(dashboardViewModel).allDataList.map((e) {
                                                    PeopleAndGroupPost updatedPostData = PeopleAndGroupPost();
                                                    if((e.groupId?.id ?? "") == (widget.userPostData.groupId?.id ?? "")) {
                                                      updatedPostData = e.copyWith(
                                                        isFollowing: false,
                                                      );
                                                    } else {
                                                      updatedPostData = e;
                                                    }
                                                    return updatedPostData;
                                                  }).toList();
                                                  ref.read(dashboardViewModel).setAllDataList(list);
                                                  Fluttertoast.showToast(
                                                    msg: "Unfollowed ${widget.userPostData.groupId?.name ?? ""}",
                                                    backgroundColor: Colors.red,
                                                    gravity: ToastGravity.BOTTOM,
                                                    textColor: Colors.white,
                                                  );
                                                  Navigator.pop(context);
                                                });
                                              }
                                            }, 
                                            child: const Text("Yes", style: TextStyle(color: Colors.redAccent),),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                            
                                HapticFeedback.heavyImpact();
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
                                  : Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: SvgPicture.asset("assets/icons/group-follow-btn-icon.svg", color: Colors.white, height: 20, width: 20,),
                                    ),
                              ),
                            ),
                            gapW10,
                          ],
                        ),
                      ),

                      // const Spacer(),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if((widget.userPostData.userId?.id ?? "") == AppConstants.userId) {
                                  _showUserPostEditOptionBottomSheet(
                                    context, 
                                    widget.userPostData.description ?? "", 
                                    widget.userPostData.id ?? "",
                                    () {},
                                    widget.userPostData.privacy ?? "",
                                  );
                                } else {
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
                                                  id: widget.userPostData.userId?.id ?? "",
                                                  coverPhoto: widget.userPostData.userId?.coverPhoto ?? "",
                                                  profilePhoto: widget.userPostData.userId?.profilePhoto ?? "",
                                                  description: widget.userPostData.userId?.description ?? "",
                                                  email: widget.userPostData.userId?.email ?? "",
                                                  firstName: widget.userPostData.userId?.firstName ?? "",
                                                  lastName: widget.userPostData.userId?.lastName ?? "",
                                                  userName: widget.userPostData.userId?.userName ?? "",
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
                                                              postId: widget.userPostData.id ?? "",
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
                    context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      // ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                      //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                        
                      //   );
                      //   setState(() {
                          
                      // });
                      ref.read(dashboardViewModel).callAllData(context);
                    });
                  },
                  child: Container(
                    color: (widget.userPostData.bgColor?.isEmpty ?? true) ? kWhite :  Color(int.parse(AppConstants.formatColor(widget.userPostData.bgColor ?? "0xffffffff"))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                              ref.read(dashboardViewModel).callAllData(context);
                              // ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                              //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                              //     // likeDislike: ref.read(dashboardViewModel).allDataList[widget.index].likeDislike!.copyWith(
                              //     //   isLike: upvote,
                              //     //   isDislike: downvote,
                              //     // ),
                              //   );
                              //   setState(() {
                                  
                              //   });
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
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
                        GestureDetector(
                          onTap: () {
                            context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                              ref.read(dashboardViewModel).callAllData(context);
                              // ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                              //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                              //     // likeDislike: ref.read(dashboardViewModel).allDataList[widget.index].likeDislike!.copyWith(
                              //     //   isLike: upvote,
                              //     //   isDislike: downvote,
                              //     // ),
                              //   );
                              //   setState(() {
                                  
                              //   });
                            });
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
                                        (!(widget.userPostData.postImage?.contains('.jpg') ?? true) &&
                                            !(widget.userPostData.postImage?.contains('.png') ?? true)) ||
                                        !(widget.userPostData.postImage?.contains('http') ?? true) ||
                                        (widget.userPostData.postImage?.isEmpty ?? false)
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
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
                                        (!(widget.userPostData.gif?.contains('.gif') ?? true)) ||
                                        !(widget.userPostData.gif?.contains('http') ?? true) ||
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
                                        (!(widget.userPostData.gif?.contains('.gif') ?? true)) ||
                                        !(widget.userPostData.gif?.contains('http') ?? true) ||
                                        (widget.userPostData.gif?.isEmpty ?? false)
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: Image.network(
                                          widget.userPostData.gif!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                              ),
                              gapH10,

                              SizedBox(
                              child: widget.userPostData.videoUrl != null && widget.userPostData.videoUrl != ""
                                ? videoLoader 
                                  ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
                                  : GestureDetector(
                                    onTap: () {
                                      if(!(widget.userPostData.videoUrl?.contains("https://skill") ?? true)) {
                                        showCustomSnackBar(context, text: "Video not available", color: Colors.redAccent);
                                      } else {
                                        // context.pushNamed(AppRoute.videoPlayerPage.name, extra: widget.userPostData.videoUrl);
                                        context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
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

                              // if (
                              //   (isVideoPlaying == false || ref.read(dashboardViewModel).positionAll != widget.index) &&
                              //   widget.userPostData.videoUrl != null && widget.userPostData.videoUrl != ""
                              // ) Stack(
                              //             alignment: Alignment.center,
                              //             children: [
                              //               Container(
                              //               //!==>image box style
                              //               decoration: BoxDecoration(
                              //                 borderRadius: BorderRadius.circular(18),
                              //               ),
                              //               width: MediaQuery.of(context).size.width,
                              //               // height: MediaQuery.of(context).size.height*0.2,
                              //               child: ClipRRect(
                              //                       // borderRadius: BorderRadius.circular(18),
                              //                       child : _image != null ? Image.memory(_image!) : const SpinKitThreeBounce(
                              //                         color: primaryColor,
                              //                         size: 30,
                              //                       ),
                              //                 ),
                              //               ),
                              //               Container(
                              //                 margin: const EdgeInsets.all(8),
                              //                 decoration: BoxDecoration(
                              //                   color:  ref.read(dashboardViewModel).positionAll == widget.index ? Colors.transparent : Colors.white.withOpacity(0.9),
                              //                   borderRadius: BorderRadius.circular(100),
                              //                 ),
                              //                 child: IconButton(
                              //                   onPressed: ()async {
                              //                     ref.read(dashboardViewModel).postionControl(widget.index);
                              //                     isPressed = true;
          
                              //                     await _videoController.dispose();
          
                              //                     if(!(widget.userPostData.videoUrl?.contains("http") ?? false)){
                              //                       await _initController('https://${widget.userPostData.videoUrl ?? ""}');
                                                    
                              //                     }else{
                              //                       await _initController(widget.userPostData.videoUrl ?? "");
                              //                     }
                              //                     setState(() {
                              //                       isVideoPlaying = true;
                              //                       isPlay = true;
                              //                     });
                              //                     Logger.printSuccess(ref.read(dashboardViewModel).positionAll.toString());
                              //                     Logger.printSuccess(widget.userPostData.videoUrl ?? "");
                              //                   },
                              //                   visualDensity: VisualDensity.compact,
                              //                   icon: ref.read(dashboardViewModel).positionAll == widget.index ? const SpinKitThreeBounce(
                              //                             color: primaryColor,
                              //                             size: 15,
                              //                           ) : const Icon(Icons.play_arrow, color: primaryColor, weight: 50),
                              //                   highlightColor: ref.read(dashboardViewModel).positionAll == widget.index ? Colors.transparent : kWhite,
                              //                 ),
                              //               ),
                              //             ],
                              //           )
                              //   else if(isVideoPlaying == true && ref.read(dashboardViewModel).positionAll == widget.index &&
                              //   widget.userPostData.videoUrl  != null && widget.userPostData.videoUrl  != "") DecoratedBox(
                              //   //!==>image box style
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(18),
                              //   ),
                              //   // width: MediaQuery.of(context).size.width,
                              //   // height: MediaQuery.of(context).size.height*0.2,
                              //   child: widget.userPostData.videoUrl  == "" 
                              //     ||  !(widget.userPostData.videoUrl?.contains('.mp4') ?? false) 
                              //     ||  !(widget.userPostData.videoUrl?.contains('nyc') ?? false) 
                              //     ||  (widget.userPostData.videoUrl?.isEmpty ?? false)
                              //       ? Container()
                              //       : GestureDetector(
                              //         onTap: (){
                              //           ref.read(dashboardViewModel).postionControl(widget.index);
                              //           if(isPlay){
                              //             isPlay = false;
                              //             // ref.read(publicGroupProfileViewModel).controller..initialize()..pause();
                              //             _videoController..initialize()..pause();
                              //           } else{
                              //             isPlay = true;
                              //             // ref.read(publicGroupProfileViewModel).controller..initialize()..play();
                              //             _videoController..initialize()..play();
                              //           }
                              //         },
                              //         child: _videoController.value.isInitialized ? AspectRatio(
                              //           aspectRatio: _videoController.value.aspectRatio,
                              //           child: VideoPlayer(_videoController..play()..setLooping(true)),
                              //         ) : const SpinKitThreeBounce(
                              //                             color: primaryColor,
                              //                             size: 30,
                              //                           ),
                              //       ),
                              // ) else Container(),
                              if (widget.userPostData.checkInImage ==
                                            null ||
                                        (!(widget.userPostData.checkInImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.checkInImage?.contains('.jpeg') ?? false) &&
                                            !(widget.userPostData.checkIn?.contains('.png') ?? false)) ||
                                        !(widget.userPostData.checkInImage?.contains('http') ?? false )||
                                        (widget.userPostData.checkInImage?.isEmpty ?? false)) Container() else gapH10,
                              Container(
                                //!==>image box style
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                width: MediaQuery.of(context).size.width,
                                // height: MediaQuery.of(context).size.height*0.2,
                                child: widget.userPostData.checkInImage ==
                                            null ||
                                        (!(widget.userPostData.checkInImage?.contains('.jpg') ?? false) &&
                                        !(widget.userPostData.checkInImage?.contains('.jpeg') ?? false) &&
                                            !(widget.userPostData.checkIn?.contains('.png') ?? false)) ||
                                        !(widget.userPostData.checkInImage?.contains('http') ?? false )||
                                        (widget.userPostData.checkInImage?.isEmpty ?? false)
                                    ? Container()
                                    : ClipRRect(
                                        // borderRadius: BorderRadius.circular(18),
                                        child: Image.network(
                                          widget.userPostData.checkInImage ?? "",
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
                          border: Border.all(color: primaryColor),
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
                            context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                              // ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                              //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                              //     // likeDislike: ref.read(dashboardViewModel).allDataList[widget.index].likeDislike!.copyWith(
                              //     //   isLike: upvote,
                              //     //   isDislike: downvote,
                              //     // ),
                              //   );
                              //   setState(() {
                                  
                              //   });
                              ref.read(dashboardViewModel).callAllData(context);
                            });
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

                            if(widget.isSearch == false){
                                if(ref.read(dashboardViewModel).groupDataList[widget.index].likeDislike == null) {
                                  ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                                    likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                    likeCounts: likeCounts,
                                    dislikeCounts: dislikeCounts,  
                                  );
                                } else {
                                  ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                                    likeDislike: ref.read(dashboardViewModel).groupDataList[widget.index].likeDislike?.copyWith(
                                      isLike: upvote,
                                      isDislike: downvote,
                                    ),
                                    likeCounts: likeCounts,
                                    dislikeCounts: dislikeCounts,  
                                  );
                                }
                              }else{
                                // if(ref.read(searchViewModel).groupDataList[widget.index].likeDislike == null) {
                                //   ref.read(searchViewModel).groupDataList[widget.index] = ref.read(searchViewModel).groupDataList[widget.index].copyWith(
                                //     likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                //     likeCounts: likeCounts,
                                //     dislikeCounts: dislikeCounts  
                                //   );
                                // } else {
                                //   ref.read(searchViewModel).groupDataList[widget.index] = ref.read(searchViewModel).groupDataList[widget.index].copyWith(
                                //     likeDislike: ref.read(searchViewModel).groupDataList[widget.index].likeDislike?.copyWith(
                                //       isLike: upvote,
                                //       isDislike: downvote,
                                //     ),
                                //     likeCounts: likeCounts,
                                //     dislikeCounts: dislikeCounts  
                                //   );
                                // }
                              }
                          });
                      
                          await ref.read(singlePostViewModel).likeDislikePost(
                            context, 
                            LikeDislikeRequestModel(
                              isLike: upvote,
                              isDislike: downvote,
                              postId: widget.userPostData.id ?? "",
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
                        // SvgPicture.asset(
                        //   'assets/icons/upvoteComment.svg',
                        //   color: upvote ? Colors.green : kGrey,
                        //   height: 20,
                        // ),
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
                                                        
                            if(widget.isSearch == false){
                                if(ref.read(dashboardViewModel).groupDataList[widget.index].likeDislike == null) {
                                  ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                                    likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                    likeCounts: likeCounts,
                                    dislikeCounts: dislikeCounts,  
                                  );
                                } else {
                                  ref.read(dashboardViewModel).groupDataList[widget.index] = ref.read(dashboardViewModel).groupDataList[widget.index].copyWith(
                                    likeDislike: ref.read(dashboardViewModel).groupDataList[widget.index].likeDislike?.copyWith(
                                      isLike: upvote,
                                      isDislike: downvote,
                                    ),
                                    likeCounts: likeCounts,
                                    dislikeCounts: dislikeCounts,  
                                  );
                                }
                              }else{
                                // if(ref.read(searchViewModel).groupDataList[widget.index].likeDislike == null) {
                                //   ref.read(searchViewModel).groupDataList[widget.index] = ref.read(searchViewModel).groupDataList[widget.index].copyWith(
                                //     likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                //     likeCounts: likeCounts,
                                //     dislikeCounts: dislikeCounts  
                                //   );
                                // } else {
                                //   ref.read(searchViewModel).groupDataList[widget.index] = ref.read(searchViewModel).groupDataList[widget.index].copyWith(
                                //     likeDislike: ref.read(searchViewModel).groupDataList[widget.index].likeDislike?.copyWith(
                                //       isLike: upvote,
                                //       isDislike: downvote,
                                //     ),
                                //     likeCounts: likeCounts,
                                //     dislikeCounts: dislikeCounts  
                                //   );
                                // }
                              }
                          });
                      
                          await ref.read(singlePostViewModel).likeDislikePost(
                            context, 
                            LikeDislikeRequestModel(
                              isLike: upvote,
                              isDislike: downvote,
                              postId: widget.userPostData.id ?? "",
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
                          Icons.thumb_down,
                          color: downvote ? Colors.redAccent : kGrey,
                        ),
                        // SvgPicture.asset(
                        //   'assets/icons/downvoteComment.svg',
                        //   color: downvote ? Colors.redAccent : kGrey,
                        //   height: 20,
                        // ),
                      ),
                      gapW4,
                      Text("$dislikeCounts"),
                    ],
                  ),
                ),
                gapH10,
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      // ref.read(dashboardViewModel).allDataList[widget.index] = ref.read(dashboardViewModel).allDataList[widget.index].copyWith(
                      //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                      //     // likeDislike: ref.read(dashboardViewModel).allDataList[widget.index].likeDislike!.copyWith(
                      //     //   isLike: upvote,
                      //     //   isDislike: downvote,
                      //     // ),
                      //   );
                      //   setState(() {
                          
                      //   });
                      ref.read(dashboardViewModel).callAllData(context);
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
                          widget.userPostData.commentCounts
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
                            Share.share("https://www.app.skillcollab.com/home/feeds/${widget.userPostData.slug ?? ""}");
                          }, 
                          icon: const Icon(Icons.share_outlined,color:kGrey,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (widget.userPostData.isBan == true || widget.userPostData.userId?.isBan == true) Positioned.fill(
            top: 110,
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
                  .then((value) {getPost(context, widget.userPostData.userId?.id ?? "");}),

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
                  viewModel.removeOneDashboardAllPost(postId);
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