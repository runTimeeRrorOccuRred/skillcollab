// ignore_for_file: unnecessary_statements, deprecated_member_use, unrelated_type_equality_checks

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:quill_html_editor/quill_html_editor.dart';
import 'package:readmore/readmore.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/groups/groupDescription/premium_group_description_view_model.dart';
import 'package:skill_colab/view/screens/groups/groupRating/premium_group_rating_view.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';

class PremiumGroupDescriptionView extends ConsumerStatefulWidget {
  const PremiumGroupDescriptionView({super.key,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PremiumGroupDescriptionViewState();
}

class _PremiumGroupDescriptionViewState extends ConsumerState<PremiumGroupDescriptionView> with BaseScreenView{  

  late PremiumGroupDescriptionViewModel _viewModel;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  String updatedString="";

  void mapCreated(GoogleMapController controller) {
    setState(() {});
  }

  final QuillEditorController controller = QuillEditorController();

  // Uint8List list = Uint8List(10);

  // Future<void> loadMarker() async {
  //   final ByteData byteData = await rootBundle.load('assets/icons/peoplePic.png');
  //   list = byteData.buffer.asUint8List();
  // }

  @override
  void initState() {
    super.initState();
    // loadMarker();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(premiumGroupDescriptionViewModel);
      _viewModel.getLatLong(ref.read(premiumGroupProfileViewModel).groupData?.location ?? "");
      _viewModel.attachView(this);
      Future.delayed(const Duration(seconds: 1), () async {
        await controller.setText((ref.read(premiumGroupProfileViewModel).groupData?.rules ?? "").replaceAll("&lt;", "<"));
      });
      final String s = ref.read(premiumGroupProfileViewModel).groupData?.rules ?? '';
      updatedString = s.replaceAll('&lt;', '<');
    });
    
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(premiumGroupDescriptionViewModel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
        title: const Text(
          'Group Description Page',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        // actions: [
        //   InkWell(
        //     onTap: () {
        //       // Navigator.of(context).pop();
        //     },
        //     child: Container(
        //       margin: const EdgeInsets.only(right: 8),
        //       padding: const EdgeInsets.only(
        //         left: 8,
        //         right: 8,
        //         top: 10,
        //         bottom: 10,
        //       ),
        //       decoration: const BoxDecoration(
        //         color: Color(0xFFF3F5F6),
        //         shape: BoxShape.circle,
        //       ),
        //       child: const Center(
        //         child: Icon(
        //           Icons.settings_outlined,
        //           color: primaryColor,
        //           size: 20,
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
      ),

      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              gapH16,
              Container(
                width: size.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [CustomBoxShadow()],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("About Us", style: TextStyle(fontWeight: FontWeight.w600, color: kBlack)),
                    gapH8,
                    ReadMoreText(
                      ref.read(premiumGroupProfileViewModel).groupData?.description ?? "",
                      // 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                      style: const TextStyle(fontSize: 12, color: Color(0xff5D5D5D)),
                      trimLines: 5,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Read more',
                      trimExpandedText: ' Show less',
                      moreStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: primaryColor),
                      lessStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ],
                ),
              ),
              gapH12,
              Container(
                width: size.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [CustomBoxShadow()],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/members.svg"),
                        gapW6,
                        Text((ref.read(premiumGroupProfileViewModel).groupData?.follower ?? 0).toString(), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: kBlack),),
                      ],
                    ),
                    gapH4,
                    Divider(color: Colors.grey[500],),
                    gapH4,
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/lock.svg", color: Colors.grey[600], height: 16, width: 16,),
                        gapW6,
                        const Text("Private Group", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: kBlack),),
                      ],
                    ),
                    gapH4,
                    const Text(
                      "Only group-members can see and what they post.", 
                      style: TextStyle(fontSize: 12, color: Color(0xff5D5D5D)),
                    ),
                    gapH4,
                    Divider(color: Colors.grey[500],),
                    gapH4,
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/history.svg", color: Colors.grey[600], height: 16, width: 16,),
                        gapW6,
                        const Text("History", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: kBlack),),
                      ],
                    ),
                    gapH4,
                    Text(
                      "Group created on ${DateFormat.yMMMMd('en_US').format(ref.read(premiumGroupProfileViewModel).groupData?.createdAt ?? DateTime.now())}", 
                      style: const TextStyle(fontSize: 12, color: Color(0xff5D5D5D)),
                    ),
                  ],
                ),
              ),
              gapH12,
              Container(
                width: size.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [CustomBoxShadow()],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Group Location", style: TextStyle(fontWeight: FontWeight.w600, color: kBlack)),
                    gapH8,
                    Text(
                      ref.read(premiumGroupProfileViewModel).groupData?.location ?? "", 
                      style: const TextStyle(fontSize: 12, color: Color(0xff5D5D5D)),
                    ),
                    gapH8,
                    Container(
                      width: size.width,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: _viewModel.loading
                      ? const Center(child: CircularProgressIndicator(color: kGrey,),)
                      : GoogleMap(
                        initialCameraPosition: _viewModel.groupLocation,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        zoomControlsEnabled: false,
                        myLocationButtonEnabled: false,
                        markers: {
                          Marker(
                            markerId: const MarkerId("1"),
                            position: LatLng(_viewModel.lat, _viewModel.long),
                            // icon: BitmapDescriptor.fromBytes(list)
                          ),
                        },
                      ),
                    ),
                    // Container(
                    //   height: 200,
                    //   width: 200,
                    //   color: Colors.red,
                    //   child: GoogleMap(
                    //     // initialCameraPosition: _viewModel.groupLocation,
                    //     initialCameraPosition: const CameraPosition(
                    //       target: LatLng(22.57456610758227, 88.43059525421059),
                    //       zoom: 17.5,
                    //     ),
                    //     onMapCreated: (GoogleMapController controller) {
                    //       _controller.complete(controller);
                    //     },
                    //   )
                    // )
                  ],
                ),
              ),
              gapH12,
              Container(
                width: size.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [CustomBoxShadow()],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Group Activity", style: TextStyle(fontWeight: FontWeight.w600, color: kBlack)),
                    gapH8,
                    Row(
                      children: [
                        Icon(Icons.add_comment_outlined, color: Colors.grey[600], size: 20,),
                        gapW6,
                        Text("${ref.read(premiumGroupProfileViewModel).getGroupResponseModel.data?.postToday.toString() ?? "0"} New Posts Today", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: kBlack),),
                      ],
                    ),
                    gapH4,
                    Divider(color: Colors.grey[500],),
                    gapH4,
                    Row(
                      children: [
                        Icon(Icons.add_comment_rounded, color: Colors.grey[600], size: 20,),
                        gapW6,
                        Text("${ref.read(premiumGroupProfileViewModel).getGroupResponseModel.data?.postLastMonth.toString() ?? "0"} New Posts Last Month", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: kBlack),),
                      ],
                    ),
                    gapH4,
                    Divider(color: Colors.grey[500],),
                    gapH4,
                    Row(
                      children: [
                        Image.asset("assets/icons/group-icon.png", color: Colors.grey[600], height: 20, width: 20,),
                        gapW6,
                        Text("${ref.read(premiumGroupProfileViewModel).getGroupResponseModel.data?.followersLastWeek.toString() ?? "0"} Followers Last Week", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: kBlack),),
                      ],
                    ),
                    gapH4,
                  ],
                ),
              ),
              gapH12,
              Container(
                width: size.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: kWhite,
                  boxShadow: [CustomBoxShadow()],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Group Ratings", style: TextStyle(fontWeight: FontWeight.w600, color: kBlack)),
                        gapH8,
                        GestureDetector(
                          onTap: () {
                            if((ref.read(premiumGroupProfileViewModel).groupData?.rating ?? 0) > 0) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PremiumGroupRatingView(
                                groupId: ref.watch(premiumGroupProfileViewModel).groupData?.id ?? "", 
                                groupPrivacy: "premium",),),
                              );
                            } else {
                              showCustomSnackBar(context, text: "No ratings added", color: Colors.red);
                            }
                            HapticFeedback.heavyImpact();
                          },
                          child: Row(
                            children: [
                              Text((ref.read(premiumGroupProfileViewModel).groupData?.rating ?? "").toString(), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff5D5D5D)),),
                              gapW4,
                              RatingBarIndicator(
                                rating: ref.read(premiumGroupProfileViewModel).groupData?.averageRating ?? 0,
                                itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                ),
                                itemSize: 15.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (AppConstants.userId == ref.read(premiumGroupProfileViewModel).groupData?.userId) MaterialButton(
                      onPressed: () => context.pushNamed(
                                            AppRoute.addGroupRating.name, 
                                            extra: ref.read(premiumGroupProfileViewModel).groupData?.id ?? "",
                                          ),
                      
                      color: primaryColor,
                      child: const Text("Add Ratings", style: TextStyle(fontSize: 12, color: kWhite),),
                    ) else const SizedBox(),
                  ],
                ),
              ),
              gapH12,
              Visibility(
                visible: ref.watch(premiumGroupProfileViewModel).groupData?.rules != null,
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: kWhite,
                    boxShadow: [CustomBoxShadow()],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Group Rules", style: TextStyle(fontWeight: FontWeight.w600, color: kBlack)),
                      gapH8,                    
                      HtmlWidget(
                        // the first parameter (`html`) is required
                        updatedString,
                        
                      ),
                    ],
                  ),
                ),
              ),
              gapH40,
            ],
          ),
        ),
      ),
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
