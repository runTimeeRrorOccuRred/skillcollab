
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/updateTutorial/update_tutorial_view.dart';
import 'package:widget_zoom/widget_zoom.dart';


class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  
  final TextEditingController commentController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //!======Outer BIG box
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/icons/peoplePic.png'),
                    ),
                    gapW4,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mitchell Smith",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/followers.svg'),
                            gapW4,
                            const Text(
                              "5.3k",
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Text("Gardener Thu at 12:30 PM"),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: AppSizes.p32,
                      width: AppSizes.p32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primaryColor,
                      ),
                      child: const Icon(
                        Icons.person_add_alt_outlined,
                        color: kWhite,
                        size: AppSizes.p20,
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
                gapH16,
                const Text(
                  "Trying new cuisines from the specialized grown varieties veggies in my garden...more",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH16,
                const Text("#Gardening#garden#veggies#expertgardening...."),
                gapH16,
                Container(
                  //!==>image box style
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*0.2,
                  child: Image.asset(
                    'assets/images/postPic.png',
                    fit: BoxFit.cover,
                  ),
                ),
                gapH16,
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/icons/userPic.png'),
                    ),
                    gapW10,
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F7F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
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
                    gapW10,
                    SvgPicture.asset(
                      'assets/icons/upvoteComment.svg',
                      height: 20,
                    ),
                    gapW10,
                    SvgPicture.asset(
                      'assets/icons/downvoteComment.svg',
                      height: 20,
                    ),
                  ],
                ),
                gapH16,
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/postCommentIcon.svg',
                      height: 25,
                    ),
                    gapW10,
                    const Text(
                      "98",
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/icons/postShareIcon.svg',
                      height: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class GroupPostCard extends StatefulWidget {
  const GroupPostCard({super.key});

  @override
  State<GroupPostCard> createState() => _GroupPostCardState();
}

class _GroupPostCardState extends State<GroupPostCard> with BaseScreenView {
  final TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //!======Outer BIG box
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                InkWell(
                  onTap: () {
                    // add route
                    // context.pushNamed(AppRoute.groupProfileView.name);
                    context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {'isSelfGroup': false,});
                  },
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/icons/peoplePic.png'),
                      ),
                      gapW4,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Gardening group",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/followers.svg'),
                              gapW4,
                              const Text(
                                "5.3k",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                '(344)',
                                style: TextStyle(
                                  color: Color(0xFF979C9E),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              RatingBarIndicator(
                                rating: 4.5,
                                itemSize: 12.0,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: AppSizes.p32,
                        width: AppSizes.p32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: primaryColor,
                        ),
                        child: const Icon(
                          Icons.person_add_alt_outlined,
                          color: kWhite,
                          size: AppSizes.p20,
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
                gapH16,
                const Text(
                  "Trying new cuisines from the specialized grown varieties veggies in my garden...more",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH16,
                const Text("#Gardening#garden#veggies#expertgardening...."),
                gapH16,
                Container(
                  //!==>image box style
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*0.2,
                  child: Image.asset(
                    'assets/images/postPic.png',
                    fit: BoxFit.cover,
                  ),
                ),
                gapH16,
                const Text(
                  'Explorer-Gardener',
                  style: TextStyle(
                    color: Color(0xFF979C9E),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '“Gardening Voluptas delti quos vita dicta sunt.....”',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.33,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Gardener +33 minus esse veniam a...',
                  style: TextStyle(
                    color: Color(0xFF979C9E),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.33,
                  ),
                ),
                const SizedBox(height: 4),
                const Divider(),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/icons/userPic.png'),
                    ),
                    gapW10,
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F7F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
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
                    gapW10,
                    SvgPicture.asset(
                      'assets/icons/upvoteComment.svg',
                      height: 20,
                    ),
                    gapW10,
                    SvgPicture.asset(
                      'assets/icons/downvoteComment.svg',
                      height: 20,
                    ),
                  ],
                ),
                gapH16,
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/postCommentIcon.svg',
                      height: 25,
                    ),
                    gapW10,
                    const Text(
                      "98",
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/icons/postShareIcon.svg',
                      height: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
  
  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }
}

class TutorialCard extends ConsumerStatefulWidget {
  final String groupId;
  final bool isSelfGroup;
  const TutorialCard({super.key, required this.groupId, required this.isSelfGroup});

  @override
  ConsumerState<TutorialCard> createState() => _TutorialCardState();
}

class _TutorialCardState extends ConsumerState<TutorialCard> with BaseScreenView{
  String s="";
  String updatedString="";
  @override
  Widget build(BuildContext context) {

    return (ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?.isNotEmpty ?? false) 
    ? ListView.builder(
      itemCount: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        s = ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].data?.desc ?? "";
        updatedString = s.replaceAll('&lt;', '<');
       
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              AppRoute.tutorialDetailView.name,
              extra: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index],
            ).then((value) {
              ref.read(publicGroupProfileViewModel).getTutorialByGroup(context, widget.groupId, const GetTutorialRequestModel(searchKey: "", filter: ""));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  //!======Outer BIG box
                  // padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  margin: EdgeInsets.only(top: index == 0 ? 18 : 0),
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
                    color: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor?.isEmpty ?? false ? kWhite : Color(int.parse(AppConstants.formatColor(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor ?? "0xffffffff"))),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFFE1E1EF),
                    ),
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                        child: Row(
                          children: [
                            if ((ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto ?? "") == "" ||
                               !(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto?.contains("https://skillcollab") ?? true)) Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/icons/account-pic.svg'),
                                  ) else CircleAvatar(
                                      backgroundImage: NetworkImage(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto ?? ""),
                                      backgroundColor: kWhite,
                                    ),
                            gapW4,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.firstName} ${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.lastName}",
                                  style: TextStyle(
                                    color: AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                            || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                            || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666'
                                          ? kWhite
                                          : primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    if ((ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.expertise != null) || (ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.expertise?.isNotEmpty ?? false)) 
                                      Text(
                                        ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.expertise ?? "", 
                                        style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
                                      ) 
                                    else 
                                      const SizedBox.shrink(),
                                    gapW4,
                                    SvgPicture.asset('assets/icons/followers.svg'),
                                    gapW4,
                                    Text(
                                      "${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.followers?.length ?? 0}".length > 3
                                      ? "${"${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.followers?.length ?? 0}".substring(0, "${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.followers?.length ?? 0}".length - 3)}k"
                                      : "${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.followers?.length ?? 0}",
                                      style: const TextStyle(
                                        color: kBlack,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                // Text("${_searchViewModel.publicPostsResponseModel.data?[index].userId?.userName ?? ""} on ${DateFormat('dd-MM-yyyy').format(_searchViewModel.publicPostsResponseModel.data![index].createdAt!)}"),
                                // Text( "posted on ${DateFormat.E().format(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].createdAt ?? DateTime.now())} at ${DateFormat.jm().format(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].createdAt ?? DateTime.now())}",),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_month,
                                      color: Color(0xFF979C9E),
                                      size: 12,
                                    ),
                                    gapW4,
                                    Text(
                                      DateFormat.yMMMMd('en_US').format(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                                      DateFormat.jm().format(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].createdAt?.toLocal() ?? DateTime.now().toLocal()),
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
                            IconButton(
                              onPressed: () {
                                final TextEditingController reportController = TextEditingController();
                        
                                if(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.id != AppConstants.userId) {
                                  showModalBottomSheet(
                                    context: context, 
                                    builder: (context) {
                                      return Container(
                                        padding: const EdgeInsets.all(16),
                                        width: MediaQuery.of(context).size.width,
                                        decoration: const BoxDecoration(
                                          color: kWhite,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                  onPressed: () => Navigator.pop(context), 
                                                  icon: const Icon(Icons.close, color: Colors.black,),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {
                                                final UserModel peerUserModel = UserModel(
                                                  id: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.id ?? "",
                                                  coverPhoto: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.coverPhoto ?? "",
                                                  profilePhoto: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto ?? "",
                                                  description: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.description ?? "",
                                                  email: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.email ?? "",
                                                  firstName: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.firstName ?? "",
                                                  lastName: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.lastName ?? "",
                                                  userName: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.userName ?? "",
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
                                            InkWell(
                                              onTap: () {
                                                //--------------------Showing Dialog --------------------//
                                                showDialog(
                                                  context: context, 
                                                  builder: (BuildContext context) {
                                                  return AlertDialog(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                  title: const Center(child: Text("Report Tutorial", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)),
                                                  content: SizedBox(
                                                    height: MediaQuery.of(context).size.height / 5,
                                                    child: Column(
                                                      children: [
                                                        CommonTextField(
                                                          hintText: 'Write a Report Message !',
                                                          controller: reportController,
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
                                                              ref.read(dashboardViewModel).reportTutorial(context, TutorialReportRequestModel(
                                                                content: "$reportController",
                                                                tutorialId: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].id ?? "",
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
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  showModalBottomSheet(
                                    context: context, 
                                    builder: (context) {
                                      return Container(
                                        padding: const EdgeInsets.all(16),
                                        height: 250,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: const BoxDecoration(
                                          color: kWhite,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                  onPressed: () => Navigator.pop(context), 
                                                  icon: const Icon(Icons.close, color: Colors.black,),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 50,
                                              width: MediaQuery.of(context).size.width,
                                              child: ListTile(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateTutorialView(
                                                    tutorialData: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index] ?? const TutorialData(),
                                                  ),),).then((value) {
                                                    Logger.printError(ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].groupId ?? "");
                                                    ref.read(publicGroupProfileViewModel).getTutorialByGroup(
                                                      context,  
                                                      ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].groupId ?? "", 
                                                      const GetTutorialRequestModel(searchKey: "", filter: ""),
                                                    );
                                                  });
                                                },
                                                leading: const Icon(Icons.edit_note_rounded, color: kBlack,),
                                                title: const Text("Edit Tutorial", style: TextStyle(color: kBlack),),
                                              ),
                                            ),
                                            Container(
                                              height: 1,
                                              width: MediaQuery.of(context).size.width,
                                              color: Colors.grey,
                                              margin: const EdgeInsets.symmetric(vertical: 5),
                                            ),
                                            SizedBox(
                                              height: 50,
                                              width: MediaQuery.of(context).size.width,
                                              child: ListTile(
                                                onTap: () {
                                                  showDialog(
                                                    context: context, 
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                                        backgroundColor: Colors.white,
                                                        title: const Text("Delete Tutorial", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 30),),
                                                        content: const Text("Are you sure you want to delete the tutorial?"),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            }, 
                                                            child: const Text("Cancel", style: TextStyle(color: redColor),),
                                                          ),
                                                          TextButton(
                                                            onPressed: () async {
                                                              ref.read(publicGroupProfileViewModel).deleteTutorial(
                                                                ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].id ?? "",
                                                              ).then((value) {
                                                                Navigator.pop(context);
                                                                Navigator.pop(context);
                                                                showCustomSnackBar(context, text: "Your tutorial has been deleted successfully", color: Colors.green);
                                                                ref.read(publicGroupProfileViewModel).getTutorialByGroup(
                                                                  context,
                                                                  ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].groupId ?? "", 
                                                                  const GetTutorialRequestModel(searchKey: "", filter: ""),
                                                                );
                                                              });
                                                            }, 
                                                            child: const Text("Yes", style: TextStyle(color: primaryColor),),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                leading: const Icon(Icons.highlight_remove_rounded, color: kBlack,),
                                                title: const Text("Remove Tutorial", style: TextStyle(color: kBlack),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                }                              
                              }, 
                              icon: Icon(
                              Icons.more_horiz,
                                  color: AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                                || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                                || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666'
                                        ?  Colors.white
                                        : kBlack,
                                  size: AppSizes.p20,
                                ),
                            ),
                          ],
                        ),
                      ),
                      
                      const Divider(),
   
                      gapH16,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].data?.title ?? "",
                          style: TextStyle(
                            color:AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                            || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                            || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666'
                                    ?  Colors.white
                                     : kBlack,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      gapH8,
                      const SizedBox(width: 4),           
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: HtmlWidget(
                          // the first parameter (`html`) is required
                          updatedString.length > 100 
                          ? updatedString.substring(0, 100)
                          : updatedString,
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                          
                              TextSpan(
                                text: 'Read More',
                                style: TextStyle(
                                  color: AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                            || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                            || AppConstants.formatColor( ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666' 
                                    ?  Colors.white
                                     : primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  height: 1.33,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      gapH16,
                      Container(
                        //!==>image box style
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.2,
                        child: ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].tutorialImage == null 
                          || (!ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.contains('.jpg') && !ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.contains('.png'))
                          || !ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.contains('http')
                          || ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.isEmpty
                        ? Container()
                        : ClipRRect(
                          // borderRadius: BorderRadius.circular(18),
                          child: WidgetZoom(
                            heroAnimationTag: 'tag',
                            zoomWidget: Image.network(
                              ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: CustomButton(text: "${ref.watch(publicGroupProfileViewModel).getTutorialResponseModel.data?[index].commentCounts ?? 0} Comments"),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    )
    : const Column(
      children: [
        gapH60,
        gapH20,
        Text("No tutorials posted. So empty :(", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700),),
      ],
    );
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
