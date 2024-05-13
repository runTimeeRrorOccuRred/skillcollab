// ignore_for_file: avoid_dynamic_calls, deprecated_member_use, require_trailing_commas

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
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
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:widget_zoom/widget_zoom.dart';

class DashboardPeopleViewTile extends ConsumerStatefulWidget {
  final DashboardPeopleData userPostData;
  final int index;
  const DashboardPeopleViewTile({super.key, required this.userPostData, required this.index});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardPeopleViewTileState();
}

class _DashboardPeopleViewTileState extends ConsumerState<DashboardPeopleViewTile> {  

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
  bool videoLoader = false;
  final TextEditingController _reportController = TextEditingController();
  

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
      }

    });

    // print(widget.userPostData.likeDislike.toString() + " " + widget.userPostData.id.toString());

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
                          context.pushNamed(AppRoute.profileView.name, extra: {
                            "userId": widget.userPostData.userId?.id ?? "",
                            "isSelfProfile": (widget.userPostData.userId?.id ?? "") == AppConstants.userId,
                            },
                          );
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
                          SizedBox(
                            width: size.width * 0.48,
                            child: GestureDetector(
                              onTap: () {
                                // context.pushNamed(AppRoute.profileView.name, extra: )
                                context.pushNamed(AppRoute.profileView.name, extra: {
                                  "userId": widget.userPostData.userId?.id ?? "",
                                  "isSelfProfile": (widget.userPostData.userId?.id ?? "") == AppConstants.userId,
                                  },
                                );
                              },
                              child: Text(
                                "${widget.userPostData.userId?.firstName ?? ""}  ${widget.userPostData.userId?.lastName ?? ""}",
                                // "firstName lastName",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
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
                          )
                        ],
                      ),
                      const Spacer(),

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
                            
                                  await ref.read(dashboardViewModel).followUser(context, widget.userPostData.userId?.id ?? "");
                            
                                  final list = ref.read(dashboardViewModel).peopleDataList.map((e) {
                                    DashboardPeopleData updatedPostData = const DashboardPeopleData();
                                    if((e.userId?.id ?? "") == (widget.userPostData.userId?.id ?? "")) {
                                      updatedPostData = e.copyWith(
                                        isFollowing: true,
                                      );
                                    } else {
                                      updatedPostData = e;
                                    }
                                    Logger.printInfo("${updatedPostData.userId?.firstName ?? ""} isFollowing : ${updatedPostData.isFollowing ?? false}");
                                    return updatedPostData;
                                  }).toList();                            
                                  ref.read(dashboardViewModel).setPeopleDataList(list);
                            
                                  Fluttertoast.showToast(
                                    msg: "Followed ${widget.userPostData.userId?.userName ?? ""}",
                                    backgroundColor: Colors.green[300],
                                    gravity: ToastGravity.BOTTOM,
                                    textColor: Colors.white
                                  );
                                } else {
                                  showDialog(
                                    context: context, 
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: kWhite,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        title: const Text("Unfollow", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.redAccent),),
                                        content: Text("Are you sure you want to unfollow ${widget.userPostData.userId?.userName}?", style: const TextStyle(fontWeight: FontWeight.w700),),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            }, 
                                            child: const Text("No", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),)
                                          ),
                                          TextButton(
                                            onPressed: () async {
                                              setState(() {
                                                isFollowing = false;
                                              });
                                              await ref.read(dashboardViewModel).unfollowUser(context, widget.userPostData.userId?.id ?? "").then((value) {
                                                final list = ref.read(dashboardViewModel).peopleDataList.map((e) {
                                                  DashboardPeopleData updatedPostData = const DashboardPeopleData();
                                                  if((e.userId?.id ?? "") == (widget.userPostData.userId?.id ?? "")) {
                                                    updatedPostData = e.copyWith(
                                                      isFollowing: false,
                                                    );
                                                  } else {
                                                    updatedPostData = e;
                                                  }
                                                  return updatedPostData;
                                                }).toList();
                                                ref.read(dashboardViewModel).setPeopleDataList(list);
                                                Fluttertoast.showToast(
                                                  msg: "Unfollowed ${widget.userPostData.userId?.userName ?? ""}",
                                                  backgroundColor: Colors.red,
                                                  gravity: ToastGravity.BOTTOM,
                                                  textColor: Colors.white
                                                );
                                                Navigator.pop(context);
                                              });
                                            }, 
                                            child: const Text("Yes", style: TextStyle(color: Colors.redAccent),)
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
                                  : Image.asset("assets/icons/follow.png", color: Colors.white,),
                              ),
                            ),
                            gapW10,
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                                if((widget.userPostData.userId?.id ?? "") == AppConstants.userId) {
                                  _showUserPostEditOptionBottomSheet(
                                    context, 
                                    widget.userPostData.description ?? "", 
                                    widget.userPostData.id ?? "",
                                    () {},
                                    widget.userPostData.privacy ?? ""
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
                                      height: 120.h,
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
                                                Text("Message",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),)
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
                                                              type: 'post'
                                                            ));
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
                                              }
                                              );
                                              
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Row(children: [
                                                Image.asset("assets/icons/drop_down_report.png", color: Colors.black,),
                                                const SizedBox(width: AppSizes.p10,),
                                                Text("Report",style: GoogleFonts.inter(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,),)
                                              ],),
                                                                          ),
                                          ),
                                          gapH10
                                        ],
                                      )
                                          ,
                                    ),);
                                }
                            },
                            child: Image.asset("assets/icons/tripledot.png")),
                        ],
                      )
                    ],
                  ),
                ),
                // gapH16,
                GestureDetector(
                  onTap: () {
                    // final PeopleAndGroupPost peopleAndGroupPost = PeopleAndGroupPost(
                    //   id: widget.userPostData.id,
                    // );
                    context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      // ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                      //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                        
                      //   );
                      //   setState(() {
                          
                      // });
                      ref.read(dashboardViewModel).callAllData(context);
                    });
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
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ]
                            )
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
                        // gapH16,
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
          
                    context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      // ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                      //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                        
                      //   );
                      //   setState(() {
                          
                      // });
                      ref.read(dashboardViewModel).callAllData(context);
                    });
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
                                if(ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike == null) {
                                  ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                                    likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                    likeCounts: likeCounts,
                                    dislikeCounts: dislikeCounts
                                  );
                                } else {
                                  ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                                    likeDislike: ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike?.copyWith(
                                      isLike: upvote,
                                      isDislike: downvote
                                    ),
                                    likeCounts: likeCounts,
                                    dislikeCounts: dislikeCounts
                                  );
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
                              ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                                context, 
                                const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                                ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                                1,
                                load: false,
                              );
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
                              if(downvote == false) {
                                dislikeCounts--;
                              } else {
                                dislikeCounts++;
                              }  

                              if(upvote) {
                                upvote = false;
                                likeCounts--;
                              }

                              if(ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike == null) {
                                ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                                  likeDislike: LikeDislike(isLike: upvote, isDislike: downvote),
                                  likeCounts: likeCounts,
                                  dislikeCounts: dislikeCounts
                                );
                              } else {
                                ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                                  likeDislike: ref.read(dashboardViewModel).peopleDataList[widget.index].likeDislike?.copyWith(
                                    isLike: upvote,
                                    isDislike: downvote
                                  ),
                                  likeCounts: likeCounts,
                                  dislikeCounts: dislikeCounts
                                );
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
                              ref.read(dashboardViewModel).getAllGroupsAndPeopleWithLogin(
                                context, 
                                const GetAllGroupsAndPeopleWithLoginRequestModel(interests: '', searchKey: '', timeFilter: "allTime"), 
                                ref.read(dashboardViewModel).allGroupsAndPeoplePageSize,
                                1,
                                load: false,
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
                ),
                gapH10,
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoute.sinlgePost.name, extra: widget.userPostData.id).then((value) {
                      // ref.read(dashboardViewModel).peopleDataList[widget.index] = ref.read(dashboardViewModel).peopleDataList[widget.index].copyWith(
                      //   commentCounts: ref.read(singlePostViewModel).allComments.length - 1,
                        
                      //   );
                      //   setState(() {
                          
                      // });
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
                          icon: const Icon(Icons.share_outlined, color: kGrey,),
                        ),
                      ],
                    ),
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
                      color: Colors.grey.withOpacity(0.1)
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
        ]
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
                  viewModel.removeOneDashboardPeoplePost(postId);
                  Fluttertoast.showToast(
                    msg: "Deleting post from your profile",
                    backgroundColor: Colors.blueGrey[900],
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_LONG
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
