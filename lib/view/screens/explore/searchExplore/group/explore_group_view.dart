import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class ExploreGroupView extends ConsumerStatefulWidget {
  final List<String> interests;
  final String searchKey;
  const ExploreGroupView({super.key, required this.interests, required this.searchKey});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExploreGroupViewState();
}

class _ExploreGroupViewState extends ConsumerState<ExploreGroupView> with BaseScreenView{
  bool isload = false;
  int groupIndex = -1;

   final ScrollController _scrollController = ScrollController();

  @override
  void initState(){
    super.initState();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        Logger.printError("end");
        ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExploreGroup(
          context, 
          ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 
          5, 
          ref.watch(exploreSearchViewModel).allDataPageNumber, 
          load: false,
        );
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: ()async{
        Future.delayed(const Duration(seconds: 2));
        ref.read(exploreSearchViewModel).clearAllDataList();
        // ref.read(exploreSearchViewModel).incrementPageNumber();
        ref.read(exploreSearchViewModel).getExploreGroup(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 5, ref.watch(exploreSearchViewModel).allDataPageNumber,);
      },
      indicatorBuilder: (context, controller) {
        return const Icon(
          Icons.refresh,
          color: primaryColor,
          size: 30,
        );
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: ref.watch(exploreSearchViewModel).groupDataList.length,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if(AppConstants.usertype == 0) {
                guestLoginRequestDialog(context, "to view  profile"); /*${widget.peopleData.firstName}'s */
              } else {
                    
                  if(ref.watch(exploreSearchViewModel).groupDataList[index].privacy == "public") {
                    context.pushNamed(AppRoute.publicGroupProfileView.name, extra: {
                      "groupDetails": GroupDatum(id: ref.watch(exploreSearchViewModel).groupDataList[index].id ?? ""),
                      "isSelfGroup": (ref.watch(exploreSearchViewModel).groupDataList[index].userId?.id ?? "") == AppConstants.userId,
                    },);
                  } else if(ref.watch(exploreSearchViewModel).groupDataList[index].privacy == "private") {
                    context.pushNamed(AppRoute.privateGroupProfileView.name, extra: {
                      "groupDetails": GroupDatum(id: ref.watch(exploreSearchViewModel).groupDataList[index].id ?? ""),
                      "isSelfGroup": (ref.watch(exploreSearchViewModel).groupDataList[index].userId?.id ?? "") == AppConstants.userId,
                    },);
                  } else {
                    context.pushNamed(AppRoute.premiumGroupProfileView.name, extra: {
                      "groupDetails": GroupDatum(id: ref.watch(exploreSearchViewModel).groupDataList[index].id ?? ""),
                      "isSelfGroup": (ref.watch(exploreSearchViewModel).groupDataList[index].userId?.id ?? "") == AppConstants.userId,
                    },);
                  }
              }
              // print(ref.watch(exploreSearchViewModel).exploreGroupResponseModel);
            },
            child: Container(
              width: double.infinity,
              // height: 190,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, ),
              decoration: BoxDecoration(
                boxShadow: [CustomBoxShadow()],
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFFE1E1EF),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: (ref.watch(exploreSearchViewModel).groupDataList[index].groupPhoto?.contains("https://skill") ?? false) && ref.watch(exploreSearchViewModel).groupDataList[index].groupPhoto != null ? BoxFit.cover : BoxFit.contain,
                            image: 
                            (ref.watch(exploreSearchViewModel).groupDataList[index].groupPhoto?.contains("https://skill") ?? false) && ref.watch(exploreSearchViewModel).groupDataList[index].groupPhoto != null 
                              ? NetworkImage(ref.watch(exploreSearchViewModel).groupDataList[index].groupPhoto ?? AppConstants.imageNotFoundLink)
                              : Image.asset("assets/icons/user.png").image,
                            ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 3.8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16),),),
                        child:  Row(children: [
                          Icon(
                            ref.watch(exploreSearchViewModel).groupDataList[index].privacy == 'public' ? Icons.lock_open_rounded : Icons.lock,
                            color: Colors.white,
                            size: 10,
                          ),
                           const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '${ref.watch(exploreSearchViewModel).groupDataList[index].privacy}',
                            textAlign: TextAlign.center,
                            style: const  TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],),
                      ),
                    ],
                  ),
                  SizedBox(width: 7.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH4,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${ref.watch(exploreSearchViewModel).groupDataList[index].name}',
                                    // ${widget.peopleData.firstName ?? ""} ${widget.peopleData.lastName ?? 
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  gapH4,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${ref.watch(exploreSearchViewModel).groupDataList[index].followers?.length ?? 0} Followers",
                                        style: const TextStyle(
                                          color: primaryColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                           Text(
                                            "(${ref.watch(exploreSearchViewModel).groupDataList[index].reviewer?.length})",
                                            style: const TextStyle(
                                              color: kGrey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          RatingBarIndicator(
                                            rating: ref.watch(exploreSearchViewModel).groupDataList[index].averageRating ?? 0.0,
                                            itemSize: 12.0,
                                            physics: const BouncingScrollPhysics(),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // Text(
                                  //   " followers", /*${widget.peopleData.follower ?? 0} */
                                  //   style:  TextStyle(
                                  //     color: primaryColor,
                                  //     fontSize: 10,
                                  //     fontWeight: FontWeight.w700,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        gapH4,
                        SizedBox(
                          height: 45.h,
                          child: Text(
                            "${ref.watch(exploreSearchViewModel).groupDataList[index].description}",  
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: const TextStyle(
                              fontSize: 14,
                              color: kGrey,
                            ),
                          ),
                        ),
                        gapH8,
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 40,
                                  width: 110.h,
                                  padding: const EdgeInsets.all(8),
                                  child: ref.watch(exploreSearchViewModel).groupDataList[index].isFollowing == false ? MaterialButton(
                                    onPressed: () async{
                                      setState(() {
                                        isload = true;
                                        groupIndex = index;
                                      });
                                      if(ref.watch(exploreSearchViewModel).groupDataList[index].privacy == 'public'){
                                        await ref.read(publicGroupProfileViewModel).followGroup( context, ref.watch(exploreSearchViewModel).groupDataList[index].id ?? "",).then((value){
                                          setState(() {isload = false;});
                                          ref.watch(exploreSearchViewModel).resetPageNumber();
                                          ref.watch(exploreSearchViewModel).clearAllDataList();
                                          ref.watch(exploreSearchViewModel).getExploreGroup(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
                                        });
                                        
                                      }else if(ref.watch(exploreSearchViewModel).groupDataList[index].privacy == 'private'){
                                        await ref.read(privateGroupProfileViewModel).followGroup( context, ref.watch(exploreSearchViewModel).groupDataList[index].id ?? "",).then((value){
                                          setState(() {isload = false;});
                                          ref.watch(exploreSearchViewModel).resetPageNumber();
                                          ref.watch(exploreSearchViewModel).clearAllDataList();
                                          ref.watch(exploreSearchViewModel).getExploreGroup(context, ExplorePeopleRequestModel(interests: widget.interests, searchKey: widget.searchKey), 5, ref.watch(exploreSearchViewModel).allDataPageNumber, load: false);
                                        });
                                      }
                                    },
                                    color: primaryColor,
                                    child: isload == true && groupIndex == index ? const SizedBox(height: 15, width : 15, child: CircularProgressIndicator(color: kWhite, )) : const Text("Join Group", style: TextStyle(color: kWhite, fontSize: 12),),
                                  ) : const SizedBox(),
                                ),
                              ],
                            ),
                            // gapH4,
                            // Row(
                            //   children: [
                            //     Text(/*"${widget.peopleData.publicPost}"*/ '24', style: const TextStyle(color: primaryColor, fontSize: 10, fontWeight: FontWeight.w700),),
                            //     gapW4,
                            //     const Text("Public Posts", style: TextStyle(color: kGrey, fontSize: 10, fontWeight: FontWeight.w700),),
                            //     gapW10,
                            //     Text( '2', style: const TextStyle(color: primaryColor, fontSize: 10, fontWeight: FontWeight.w700),), /*"${widget.peopleData.premiumPost}" */
                            //     gapW4,
                            //     const Text("Premium Posts", style: TextStyle(color: kGrey, fontSize: 10, fontWeight: FontWeight.w700),),
                            //   ],
                            // ),
                            // gapH12
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
