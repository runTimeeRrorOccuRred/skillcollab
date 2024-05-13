import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
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
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/create_question_view.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/create_question_view_model.dart';
import 'package:widget_zoom/widget_zoom.dart';

class QuestionCardListTile extends ConsumerStatefulWidget {
  final QuestionData questionData;
  const QuestionCardListTile({super.key, required this.questionData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionCardListTileState();
}

class _QuestionCardListTileState extends ConsumerState<QuestionCardListTile> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          AppRoute.questionDetailView.name,
          extra: widget.questionData,
        ).then((value) {
          ref.read(publicGroupProfileViewModel).getQuestionByGroup(context, widget.questionData.groupDetails?.id ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: ""));
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //!======Outer BIG box
          // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          // margin: EdgeInsets.only(top: index == 0 ? 10 : 0),
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
            color: widget.questionData.bgColor?.isEmpty ?? false ? kWhite : Color(int.parse(AppConstants.formatColor(widget.questionData.bgColor ?? "0xffffffff"))),
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
                    if ((widget.questionData.userId?.profilePhoto ?? "") == "" ||
                        !(widget.questionData.userId?.profilePhoto?.contains("https://skillcollab") ?? true)) Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/icons/account-pic.svg'),
                          ) else CircleAvatar(
                              backgroundImage: NetworkImage(widget.questionData.userId?.profilePhoto ?? ""),
                              backgroundColor: kWhite,
                            ),
                    gapW4,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.questionData.userId?.firstName ?? ""} ${widget.questionData.userId?.lastName ?? ""}",
                          style: TextStyle(
                            color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                                  ? kWhite
                                  : primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            if ((widget.questionData.userId?.expertise != null) || (widget.questionData.userId?.expertise?.isNotEmpty ?? false)) 
                              Text(
                                widget.questionData.userId?.expertise ?? "", 
                                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                              ) 
                            else 
                              const SizedBox.shrink(),
                            gapW4,
                            SvgPicture.asset('assets/icons/followers.svg'),
                            gapW4,
                            Text(
                              "${widget.questionData.userId?.followers?.length ?? 0}".length > 3
                              ? "${"${widget.questionData.userId?.followers?.length ?? 0}".substring(0, "${widget.questionData.userId?.followers?.length ?? 0}".length - 3)}k"
                              : "${widget.questionData.userId?.followers?.length ?? 0}",
                              style: const TextStyle(
                                color: kBlack,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        gapH4,
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                                  ? Colors.grey.shade300
                                  : const Color(0xFF979C9E),
                              size: 12,
                            ),
                            gapW4,
                            Text(
                              DateFormat.yMMMMd('en_US').format(widget.questionData.createdAt ?? DateTime.now()),
                              style: TextStyle(
                                color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                                  ? Colors.grey.shade300
                                  : const Color(0xFF979C9E),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            gapW4,
                            Icon(
                              Icons.timer_outlined,
                              color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                                  ? Colors.grey.shade300
                                  : const Color(0xFF979C9E),
                              size: 12,
                            ),
                            gapW4,
                            Text(
                              DateFormat.jm().format(widget.questionData.createdAt ?? DateTime.now()),
                              style: TextStyle(
                                color:AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                                  ? Colors.grey.shade300
                                  : const Color(0xFF979C9E),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        // Text(
                        //   "Gardener Thu at 12:30 PM",
                        //   style: TextStyle(
                        //     color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        // || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        // || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                        //           ? Colors.grey.shade300
                        //           : const Color(0xFF979C9E),
                        //   ),
                        // ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        if(widget.questionData.userId?.id == AppConstants.userId){
                          _showGroupQuestionEditOptionBottomSheet(context);
                        } else {
                          _showUserPostReportOptionBottomSheet(context);
                        }
                      },
                      child: Icon(
                        Icons.more_horiz,
                        color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                          || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                          || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                            ?  Colors.white
                          : kBlack,
                        size: AppSizes.p20,
                      ),
                    ),
                  ],
                ),
              ),
              gapH16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  widget.questionData.data?.question ?? "",
                  style: TextStyle(
                    color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                        || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                          ?  Colors.white
                        : kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.43,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  (widget.questionData.data?.answer ?? "").length > 100 
                          ? "${(widget.questionData.data?.answer ?? "").substring(0, 101)}..." 
                          : widget.questionData.data?.answer ?? "",
                  maxLines: 5,
                  style: TextStyle(
                      color: AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff54b3bf' 
                    || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xff59cc66' 
                    || AppConstants.formatColor( widget.questionData.bgColor ?? "",) == '0xffff6666'
                              ? Colors.white
                              : kBlack,
                      fontSize: 12,
                      // fontWeight: FontWeight.w500,
                    ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child:  Text("...Read More", style: TextStyle(color: primaryColor),),
              ),
              gapH10,
              Container(
                //!==>image box style
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height*0.2,
                child: widget.questionData.questionImage == null 
                  || (!widget.questionData.questionImage!.contains('.jpg') && !(widget.questionData.questionImage?.contains('.png') ?? false))
                  || !widget.questionData.questionImage!.contains('http')
                  || widget.questionData.questionImage!.isEmpty
                ? Container()
                : ClipRRect(
                  // borderRadius: BorderRadius.circular(18),
                  child: WidgetZoom(
                    heroAnimationTag: 'tag',
                    zoomWidget: Image.network(
                      widget.questionData.questionImage ?? '',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: CustomButton(text: "${widget.questionData.commentCount ?? 0} Answers"),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showGroupQuestionEditOptionBottomSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // final _viewModel = ref.watch(userProfileViewModel);
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.edit,size: 20,),
                title: const Text('Edit Question'),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateQuestionView(
                        groupId: widget.questionData.groupDetails?.id ?? '', 
                        privacy: widget.questionData.groupDetails?.privacy ?? '', 
                        questionId: widget.questionData.id?? '',
                        question: widget.questionData.data?.question ?? '',
                        answer: widget.questionData.data?.answer ?? '',
                      ),
                    ),
                  ).then((value) {
                    try {
                      if(widget.questionData.groupDetails?.privacy == 'public') {
                        ref.read(publicGroupProfileViewModel).getQuestionByGroup(context, widget.questionData.groupDetails?.id ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: "")).whenComplete(() {
                          context.pop();
                        });
                      }else if(widget.questionData.groupDetails?.privacy == 'private'){
                        ref.read(privateGroupProfileViewModel).getQuestionByGroup(context, widget.questionData.groupDetails?.id ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: "")).whenComplete(() {
                          context.pop();
                        });
                      } else if(widget.questionData.groupDetails?.privacy == 'premium'){
                        ref.read(premiumGroupProfileViewModel).getQuestionByGroup(context,  const GetQuestionByGroupRequestModel(searchKey: "", filter: ""), widget.questionData.groupDetails?.id ?? "",).whenComplete(() {
                          context.pop();
                        });
                      }
                      
                    } catch(e) {
                      Logger.printInfo(e.toString());
                    }
                  }),
                  // .then((value) {getPost(context, userId);}),

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
                  ref.read(createQuestionViewModel).deleteQuestion(context, widget.questionData.id ?? '').then((value) {
                    try {
                      if(widget.questionData.groupDetails?.privacy == 'public') {
                        ref.read(publicGroupProfileViewModel).getQuestionByGroup(context, widget.questionData.groupDetails?.id ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: "")).whenComplete(() {
                          context.pop();
                        });
                      }else if(widget.questionData.groupDetails?.privacy == 'private'){
                        ref.read(privateGroupProfileViewModel).getQuestionByGroup(context, widget.questionData.groupDetails?.id ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: "")).whenComplete(() {
                          context.pop();
                        });
                      } else if(widget.questionData.groupDetails?.privacy == 'premium'){
                        ref.read(premiumGroupProfileViewModel).getQuestionByGroup(context,  const GetQuestionByGroupRequestModel(searchKey: "", filter: ""), widget.questionData.groupDetails?.id ?? "",).whenComplete(() {
                          context.pop();
                        });
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

  final TextEditingController _reportController = TextEditingController();

  Future<void> _showUserPostReportOptionBottomSheet(BuildContext context) async {
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
                  id: widget.questionData.userId?.id ?? "",
                  coverPhoto: widget.questionData.userId?.coverPhoto ?? "",
                  profilePhoto: widget.questionData.userId?.profilePhoto ?? "",
                  description: widget.questionData.userId?.description ?? "",
                  email: widget.questionData.userId?.email ?? "",
                  firstName: widget.questionData.userId?.firstName ?? "",
                  lastName: widget.questionData.userId?.lastName ?? "",
                  userName: widget.questionData.userId?.userName ?? "",
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
                title: const Center(child: Text("Report Question", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)),
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
                            ref.read(dashboardViewModel).reportQuestion(context, QuestionReportRequestModel(
                              content: "$_reportController",
                              questionId: widget.questionData.userId?.id ?? "",
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
}
