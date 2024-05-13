
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/updateTutorial/update_tutorial_view.dart';
import 'package:widget_zoom/widget_zoom.dart';

class PremiumTutorialCard extends ConsumerStatefulWidget {
  final String groupId;
  final bool isSelfGroup;
  const PremiumTutorialCard({super.key, required this.groupId, required this.isSelfGroup});

  @override
  ConsumerState<PremiumTutorialCard> createState() => _PremiumTutorialCardState();
}

class _PremiumTutorialCardState extends ConsumerState<PremiumTutorialCard> with BaseScreenView{
  String s="";
  String updatedString="";
  @override
  Widget build(BuildContext context) {

    return (ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?.isNotEmpty ?? false) 
    ?ListView.builder(
      itemCount: ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        s = ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].data?.desc ?? "";
        updatedString = s.replaceAll('&lt;', '<');
       
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              AppRoute.tutorialDetailView.name,
              extra: ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index],
            ).then((value) {
              ref.read(premiumGroupProfileViewModel).getTutorialByGroup(context,  const GetTutorialRequestModel(searchKey: "", filter: ""), widget.groupId,);
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
                    color: ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor?.isEmpty ?? false ? kWhite : Color(int.parse(AppConstants.formatColor(ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor ?? "0xffffffff"))),
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
                            if ((ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto ?? "") == "" ||
                               !(ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto?.contains("https://skillcollab") ?? true)) Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/icons/account-pic.svg'),
                                  ) else CircleAvatar(
                                      backgroundImage: NetworkImage(ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.profilePhoto ?? ""),
                                      backgroundColor: kWhite,
                                    ),
                            gapW4,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.firstName} ${ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.lastName}",
                                  style: TextStyle(
                                    color: AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                            || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                            || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666'
                                          ? kWhite
                                          : primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 6),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                if(ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.id != AppConstants.userId) {
                                  showModalBottomSheet(
                                    context: context, 
                                    builder: (context) {
                                      return Container(
                                        padding: const EdgeInsets.all(16),
                                        height: 150,
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
                                                  showDialog(
                                                    context: context, 
                                                    builder: (context) {
                                                      final TextEditingController reportController = TextEditingController();
                                                      return AlertDialog(
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                                        backgroundColor: Colors.white,
                                                        title: const Text("Report", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 30),),
                                                        content: TextField(
                                                          controller: reportController,
                                                          keyboardType: TextInputType.multiline,
                                                          maxLines: null,
                                                          decoration: const InputDecoration(
                                                            hintText: "Report Reason",
                                                          ),
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            }, 
                                                            child: const Text("Cancel", style: TextStyle(color: redColor),),
                                                          ),
                                                          TextButton(
                                                            onPressed: () async {
                                                              final TutorialReportRequestModel tutorialReportRequestModel = TutorialReportRequestModel(
                                                                content: reportController.text,
                                                                tutorialId: ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].userId?.id ?? "",
                                                                type: "tutorial",
                                                              );
                                                              Logger.printWarning(tutorialReportRequestModel.toString());
                        
                                                              await ref.watch(dashboardViewModel).reportTutorial(context, tutorialReportRequestModel).then((value) {
                                                                showCustomSnackBar(context, text: "Your report has been submitted successfully", color: Colors.green);
                                                                Navigator.pop(context);
                                                                Navigator.pop(context);
                                                              });
                                                            }, 
                                                            child: const Text("Report", style: TextStyle(color: primaryColor),),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                leading: const Icon(Icons.edit_note_rounded, color: kBlack,),
                                                title: const Text("Report Tutorial", style: TextStyle(color: kBlack),),
                                              ),
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
                                                    tutorialData: ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index] ?? const TutorialData(),
                                                  ),),).then((value) {
                                                    Logger.printError(ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].groupId ?? "");
                                                    ref.read(premiumGroupProfileViewModel).getTutorialByGroup(
                                                      context,  
                                                      const GetTutorialRequestModel(searchKey: "", filter: ""),
                                                      ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].groupId ?? "", 
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
                                                              ref.read(premiumGroupProfileViewModel).deleteTutorial(
                                                                ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].id ?? "",
                                                              ).then((value) {
                                                                Navigator.pop(context);
                                                                Navigator.pop(context);
                                                                showCustomSnackBar(context, text: "Your tutorial has been deleted successfully", color: Colors.green);
                                                                ref.read(premiumGroupProfileViewModel).getTutorialByGroup(
                                                                  context,
                                                                  const GetTutorialRequestModel(searchKey: "", filter: ""),
                                                                  ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].groupId ?? "", 
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
                                  color: AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                                || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                                || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666'
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
                          ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].data?.title ?? "",
                          style: TextStyle(
                            color:AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                            || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                            || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666'
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
                          updatedString,
                          
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
                                  color: AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff54b3bf' 
                            || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xff59cc66' 
                            || AppConstants.formatColor( ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].bgColor,) == '0xffff6666' 
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
                        child: ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].tutorialImage == null 
                          || (!ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.contains('.jpg') && !ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.contains('.png'))
                          || !ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.contains('http')
                          || ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!.isEmpty
                        ? Container()
                        : ClipRRect(
                          // borderRadius: BorderRadius.circular(18),
                          child: WidgetZoom(
                            heroAnimationTag: 'tag',
                            zoomWidget: Image.network(
                              ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data![index].tutorialImage!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: CustomButton(text: "${ref.watch(premiumGroupProfileViewModel).getTutorialResponseModel.data?[index].commentCounts ?? 0} Comments"),
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
