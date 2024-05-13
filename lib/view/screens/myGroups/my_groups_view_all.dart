// ignore_for_file: avoid_bool_literals_in_conditional_expressions, use_named_constants, unused_local_variable, deprecated_member_use, prefer_const_constructors


import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
// import 'package:palette_generator/palette_generator.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/group_pin_unpin_model.dart';
import 'package:skill_colab/data/remote/user/models/member_of_model.dart' as mom;
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class MyGroupsViewAll extends ConsumerStatefulWidget {
  const MyGroupsViewAll({super.key});

  @override
  ConsumerState<MyGroupsViewAll> createState() => _MyGroupsViewAllState();
}

class _MyGroupsViewAllState extends ConsumerState<MyGroupsViewAll> with BaseScreenView {

  late MyGroupsViewModel _viewModel;
  bool _editMyGroups = false;
  bool _editJoinedGroups = false;
  bool _editPinnedGroups = false;
  final settings = RestrictedPositions(
    maxCoverage: 0.7,
    minCoverage: 0.1,
    align: StackAlign.right,
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(myGroupsViewModel);
      _viewModel.attachView(this);
      _viewModel.getFolderList(context);
    });
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    _viewModel = ref.watch(myGroupsViewModel);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        InkWell(
          onTap: () => navigateToScreen(AppRoute.createGroupView),
          child: Container(
            padding: const EdgeInsets.all(13),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F1B9AAA),
                  blurRadius: 18,
                  offset: Offset(0, 8),
                ),
                BoxShadow(
                  color: Color(0x0A141414),
                  blurRadius: 1,
                ),
              ],
            ),
            width: double.infinity,
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'Create Group',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],),
          ),
        ),
      ],),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(color: primaryColor),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // _viewModel.clearData();
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.arrow_back_ios,
                                          color: primaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 22),
                                    const Text(
                                      'My Groups',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                context.pushNamed(AppRoute.settings.name);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                  top: 10,
                                  bottom: 10,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: primaryColor,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [CustomBoxShadow()],
                ),
                margin: const EdgeInsets.only(right: 16, left: 16),
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Pinned',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            AbsorbPointer(
                              absorbing: (_viewModel.pinnedGroups?.length ?? 0) == 0 ? true : false,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _editPinnedGroups = !_editPinnedGroups;
                                  });
                                },
                                child: Text(
                                  _editPinnedGroups ? 'Done' : 'Edit',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: (_viewModel.pinnedGroups?.length ?? 0) == 0 ? kGrey : primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Pinned groups are easier to find because they appear \nat the top of your groups. Tap edit to pin groups',
                          style: TextStyle(
                            color: Color(0xFF9AA0A3),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.58,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: Color(0xFFE2E2E2),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          child: (_viewModel.pinnedGroups?.isNotEmpty ?? [].isNotEmpty) 
                            ? ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              itemCount: _viewModel.pinnedGroups?.length ?? 0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Logger.printInfo(_viewModel.pinnedGroups?[index].toString() ?? "");
                                    if(_viewModel.pinnedGroups?[index].privacy == "public") {
                                        context.pushNamed(
                                          AppRoute.publicGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: _viewModel.pinnedGroups?[index].id), 
                                            'isSelfGroup': (_viewModel.pinnedGroups?[index].userId?.id ?? "") == AppConstants.userId,
                                          },
                                        ); 
                                      } else if(_viewModel.pinnedGroups?[index].privacy == "private") {
                                        context.pushNamed(
                                          AppRoute.privateGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: _viewModel.pinnedGroups?[index].id), 
                                            'isSelfGroup': (_viewModel.pinnedGroups?[index].userId?.id ?? "") == AppConstants.userId,
                                          },
                                        ); 
                                      } else {
                                        context.pushNamed(
                                          AppRoute.premiumGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: _viewModel.pinnedGroups?[index].id), 
                                            'isSelfGroup': (_viewModel.pinnedGroups?[index].userId?.id ?? "") == AppConstants.userId,
                                          },
                                        ); 
                                      }  
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              child: !_viewModel.pinnedGroups![index].groupPhoto!.contains('https://skill') && (_viewModel.pinnedGroups?[index].groupPhoto?.isNotEmpty ?? false)
                                              ? Container(
                                                  height: 38,
                                                  width: 38,
                                                  padding: const EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(color: primaryColor),
                                                  ),
                                                  child: Image.asset("assets/icons/group-icon.png"),
                                                )
                                              : Container(
                                                height: 38,
                                                width: 38,
                                                padding: const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(color: primaryColor),
                                                  image: DecorationImage(
                                                    image: NetworkImage(_viewModel.pinnedGroups?[index].groupPhoto ?? AppConstants.imageNotFoundLink),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Text(
                                              // _viewModel.pinnedGroups?[index].pinData?[0].isPinned.toString() ?? '',
                                              _viewModel.pinnedGroups?[index].name ?? "<error fetching name>",
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                        
                                            // SizedBox( width: 100, height: 30, child: Text(_viewModel.pinnedGroups?[index].pinData?[0].isPinned.toString() ?? '')),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            if(_editPinnedGroups) {
                                              showModalBottomSheet(
                                                context: context, 
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                builder: (context) {
                                                  return StatefulBuilder(
                                                    builder: (context, pinSetState) {
                                                      return Container(
                                                        height: size.height / 2.5,
                                                        width: size.width,
                                                        decoration: BoxDecoration(
                                                          color: kWhite,
                                                          borderRadius: BorderRadius.circular(30),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () => Navigator.pop(context),
                                                                  child: Icon(Icons.close, color: Colors.grey[900],),
                                                                ),
                                                                gapW20,
                                                              ],
                                                            ),
                                                            const Text(
                                                              "Do you want to unpin this group?",
                                                              style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 18),
                                                            ),
                                                            Container(
                                                              width: 80,
                                                              height: 80,
                                                              decoration: BoxDecoration(
                                                                color: const Color(0xffF3F5F6),
                                                                borderRadius: BorderRadius.circular(50),
                                                              ),
                                                              padding: const EdgeInsets.all(16),
                                                              child: SvgPicture.asset("assets/icons/pin.svg",),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.symmetric(horizontal: 14),
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: SizedBox(
                                                                      height: 45,
                                                                      child: MaterialButton(
                                                                        onPressed: () async {
                                                                          // Navigator.pop(context);
                                                                          pinSetState(() {});
                                                                          Logger.printSuccess(_viewModel.pinnedGroups?[index].id ?? "");
                                                                          final GroupPinUnpinRequestModel groupPinUnpinRequestModel = GroupPinUnpinRequestModel(
                                                                            groupId: _viewModel.pinnedGroups?[index].id ?? "",
                                                                          );
                                
                                                                          await _viewModel.togglePinUnpinGroup(context, groupPinUnpinRequestModel).then((value) {
                                                                            _viewModel.clearData();
                                                                            pinSetState(() {
                                                                              _editPinnedGroups = false;
                                                                            });
                                                                            if(_viewModel.pinnedGroups?.isEmpty ?? false) {
                                                                              setState(() {
                                                                                _editPinnedGroups = false;
                                                                              });
                                                                            }
                                                                          });
                                                                        },
                                                                        color: primaryColor,
                                                                        child: Center(
                                                                          child: _viewModel.loading
                                                                          ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,))
                                                                          : const Text(
                                                                              "Unpin", 
                                                                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: kWhite),
                                                                            ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(width: 18,),
                                                                  Expanded(
                                                                    child: SizedBox(
                                                                      height: 45,
                                                                      child: MaterialButton(
                                                                        onPressed: () {
                                                                          Navigator.pop(context);
                                                                        },
                                                                        color: const Color(0xffC4C4C4),
                                                                        child: const Center(
                                                                          child: Text(
                                                                            "Cancel", 
                                                                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff5D5D5D)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            // gapH16
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            }
                                          },
                                          child: SvgPicture.asset(
                                            "assets/icons/pin.svg", 
                                            color: _editPinnedGroups ? null : Colors.grey,
                                            height: 25, 
                                            width: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );  
                              },
                            )
                          : !_viewModel.isPinUnpinLoading ? const Center(child: Text("No pinned groups :(", style: TextStyle(color: primaryColor),),)
                          : ShimmerWidget(),
                          
                        ) ,
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Folder',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Divider(
                          color: Color(0xFFE2E2E2),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Visibility(
                          visible: _viewModel.folderListResponseModel.data?.isEmpty ?? false,
                          child: TextButton(
                            onPressed: (){
                              context.pushNamed(AppRoute.folderView.name);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Create Folder',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1B9AAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: _viewModel.folderListResponseModel.data?.isNotEmpty ?? false,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0),
                            itemCount: ((_viewModel.folderListResponseModel.data?.length ?? 0) < 2) ? _viewModel.folderListResponseModel.data?.length : 2,
                            itemBuilder: (context, index) {
                              final avatarStack = ((_viewModel.folderListResponseModel.data?[index].folderGroups?.length ?? 0) > 3) ? 3 : _viewModel.folderListResponseModel.data?[index].folderGroups?.length;
                              return GestureDetector(
                                onTap: () {
                                  context.pushNamed(AppRoute.folderGroupView.name, extra: _viewModel.folderListResponseModel.data?[index].id);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: [
                                      if (_viewModel.folderListResponseModel.data?[index].folderGroups?.isEmpty ?? false) 
                                      SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: SvgPicture.asset(
                                          'assets/icons/folder.svg',
                                          height: 20,
                                        ),
                                      ) else SizedBox(
                                          width: avatarStack == 3 ? 60 : avatarStack == 2 ? 50 : 40,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              AvatarStack(
                                                height: 40,
                                                // width: 40,
                                                borderColor: primaryColor,
                                                settings: settings,
                                                avatars: [
                                                  for(var i=0; i<(avatarStack ?? 1); i++)if(
                                                    _viewModel.folderListResponseModel.data?[index].folderGroups?[i].groupId?.groupPhoto == "" 
                                                    || !(_viewModel.folderListResponseModel.data?[index].folderGroups?[i].groupId?.groupPhoto?.contains("https://skillcollab",) ?? true)
                                                    || _viewModel.folderListResponseModel.data?[index].folderGroups?[i].groupId?.groupPhoto == null
                                                    ) const AssetImage(
                                                      "assets/icons/group-icon.png",
                                                      // height: 20,
                                                      // width: 20,
                                                    )else
                                                    NetworkImage(_viewModel.folderListResponseModel.data?[index].folderGroups?[i].groupId?.groupPhoto ?? AppConstants.imageNotFoundLink),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Text(_viewModel.folderListResponseModel.data?[0].name.toString() ?? ''),
                                      gapW16,
                                      Flexible(
                                        child: Text(
                                          _viewModel.folderListResponseModel.data?[index].name ?? "",
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Visibility(
                          visible: _viewModel.folderListResponseModel.data?.isNotEmpty ?? false,
                          child: TextButton(
                            onPressed: () {
                              context.pushNamed(AppRoute.folderView.name);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View All',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1B9AAA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Groups I Manage',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            AbsorbPointer(
                              absorbing: (_viewModel.memberOfResponseModel.data?.length ?? 0) == 0 ? true : false,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _editMyGroups = !_editMyGroups;
                                  });
                                },
                                child: Text(
                                  _editMyGroups ? 'Done' : 'Edit',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: (_viewModel.memberOfResponseModel.data?.length ?? 0) == 0 ? kGrey : primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFE2E2E2),
                        ),
                        
                        Container(
                          child: (_viewModel.myGroups.data?.isNotEmpty ?? [].isNotEmpty) 
                            ? ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(0),
                                itemCount: _viewModel.myGroups.data?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      if(_viewModel.myGroups.data?[index].privacy == "public") {
                                        context.pushNamed(
                                          AppRoute.publicGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: _viewModel.myGroups.data?[index].id), 
                                            'isSelfGroup': true,
                                          },
                                        ).then((value) {
                                          // _viewModel.getMyGroups(context);
                                          // _viewModel.getMyInterestGroups(MyGroupInterestRequestModel(interests: ref.watch(selfDataProvider).singleUserResponseModel.data?.interests));
                                          // _viewModel.getUserMemberOfList(AppConstants.userId);
                                        }); 
                                      } else if(_viewModel.myGroups.data?[index].privacy == "private") {
                                        context.pushNamed(
                                          AppRoute.privateGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: _viewModel.myGroups.data?[index].id), 
                                            'isSelfGroup': true,
                                          },
                                        ).then((value) {
                                          // _viewModel.getMyGroups(context);
                                          // _viewModel.getMyInterestGroups(MyGroupInterestRequestModel(interests: ref.watch(selfDataProvider).singleUserResponseModel.data?.interests));
                                          // _viewModel.getUserMemberOfList(AppConstants.userId);
                                        });
                                      } else {
                                        context.pushNamed(
                                          AppRoute.premiumGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: _viewModel.myGroups.data?[index].id), 
                                            'isSelfGroup': true,
                                          },
                                        ).then((value) {
                                          // _viewModel.getMyGroups(context);
                                          // _viewModel.getMyInterestGroups(MyGroupInterestRequestModel(interests: ref.watch(selfDataProvider).singleUserResponseModel.data?.interests));
                                          // _viewModel.getUserMemberOfList(AppConstants.userId);
                                        });
                                      }     
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 10, right: 20,),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                child: !_viewModel.myGroups.data![index].groupPhoto!.contains('https://skill') && (_viewModel.myGroups.data?[index].groupPhoto!.isNotEmpty ?? false)
                                                ? Container(
                                                    height: 38,
                                                    width: 38,
                                                    padding: const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(color: primaryColor),
                                                    ),
                                                    child: Image.asset("assets/icons/group-icon.png"),
                                                  )
                                                : Container(
                                                  height: 38,
                                                  width: 38,
                                                  padding: const EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(color: primaryColor),
                                                    image: DecorationImage(
                                                      image: NetworkImage(_viewModel.myGroups.data![index].groupPhoto ?? AppConstants.imageNotFoundLink),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              Text(
                                                _viewModel.myGroups.data?[index].name ?? "",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Visibility(
                                            visible: _editMyGroups,
                                            child:  GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  context: context, 
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                  builder: (context) {
                                                    return StatefulBuilder(
                                                      builder: (context, pinSetState) {
                                                        return Container(
                                                          height: size.height / 2.5,
                                                          width: size.width,
                                                          decoration: BoxDecoration(
                                                            color: kWhite,
                                                            borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap: () => Navigator.pop(context),
                                                                    child: Icon(Icons.close, color: Colors.grey[900],),
                                                                  ),
                                                                  gapW20,
                                                                ],
                                                              ),
                                                              Text(
                                                                (_viewModel.myGroups.data?[index].pinData?.isNotEmpty ?? false)
                                                                  ? (_viewModel.myGroups.data?[index].pinData?[0].isPinned ?? false)
                                                                    ? "Do you want to unpin this group?"
                                                                    : "Do you want to pin this group?"
                                                                  : "Do you want to pin this group?",
                                                                style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 18),
                                                              ),
                                                              Container(
                                                                width: 80,
                                                                height: 80,
                                                                decoration: BoxDecoration(
                                                                  color: const Color(0xffF3F5F6),
                                                                  borderRadius: BorderRadius.circular(50),
                                                                ),
                                                                padding: const EdgeInsets.all(16),
                                                                child: SvgPicture.asset("assets/icons/pin.svg",),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.symmetric(horizontal: 14),
                                                                child: Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: SizedBox(
                                                                        height: 45,
                                                                        child: MaterialButton(
                                                                          onPressed: () async {
                                                                            // Navigator.pop(context);
                                                                            pinSetState(() {});
                                                                            Logger.printSuccess(_viewModel.myGroups.data?[index].id ?? "");
                                                                            final GroupPinUnpinRequestModel groupPinUnpinRequestModel = GroupPinUnpinRequestModel(
                                                                              groupId: _viewModel.myGroups.data?[index].id ?? "",
                                                                            );
                                  
                                                                            await _viewModel.togglePinUnpinGroup(context, groupPinUnpinRequestModel).then((value) {
                                                                              _viewModel.clearData();
                                                                              pinSetState(() {});
                                                                            });
                                                                          },
                                                                          color: primaryColor,
                                                                          child: Center(
                                                                            child: _viewModel.isPinUnpinLoading 
                                                                            ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,))
                                                                            : Text(
                                                                                (_viewModel.myGroups.data?[index].pinData?.isNotEmpty ?? false)
                                                                                  ? (_viewModel.myGroups.data?[index].pinData?[0].isPinned ?? false)
                                                                                    ? "Unpin"
                                                                                    : "Pin"
                                                                                  : "Pin", 
                                                                                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: kWhite),
                                                                              ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(width: 18,),
                                                                    Expanded(
                                                                      child: SizedBox(
                                                                        height: 45,
                                                                        child: MaterialButton(
                                                                          onPressed: () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          color: const Color(0xffC4C4C4),
                                                                          child: const Center(
                                                                            child: Text(
                                                                              "Cancel", 
                                                                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff5D5D5D)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // gapH16
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                              child: (_viewModel.myGroups.data?[index].pinData?.isNotEmpty ?? false)
                                                ? (_viewModel.myGroups.data?[index].pinData?[0].isPinned ?? false)
                                                  ? SvgPicture.asset("assets/icons/pin.svg", height: 25, width: 25,)
                                                  : SvgPicture.asset("assets/icons/pin-outline.svg", height: 25, width: 25,)
                                                : SvgPicture.asset("assets/icons/pin-outline.svg", height: 25, width: 25,),
                                              // child: SvgPicture.asset("assets/icons/pin-outline.svg", height: 25, width: 25,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );  
                                },
                              )
                          : const Center(child: Text("You don't have groups :(", style: TextStyle(color: primaryColor),),),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Text(
                              'Joined Groups',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            AbsorbPointer(
                              absorbing: (_viewModel.memberOfResponseModel.data?.length ?? 0) == 0 ? true : false,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _editJoinedGroups = !_editJoinedGroups;
                                  });
                                },
                                child: Text(
                                  _editJoinedGroups ? 'Done' : 'Edit',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: (_viewModel.memberOfResponseModel.data?.length ?? 0) == 0 ? kGrey : primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFE2E2E2),
                        ),
                        /////////////////////////////
                        Container(
                          child: (_viewModel.memberOfResponseModel.data?.isNotEmpty ?? [].isNotEmpty) 
                            ? ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(0),
                                itemCount: _viewModel.memberOfResponseModel.data?.where(
                                    (element) => (element?.groupId?.userId ?? "") != AppConstants.userId,
                                  ).toList().length ?? 0,
                                itemBuilder: (context, index) {
                        
                                  final List<mom.Datum?> joinedGroups = _viewModel.memberOfResponseModel.data?.where((element) => (element?.groupId?.userId ?? "") != AppConstants.userId).toList() ?? [];
                                  Logger.printError(joinedGroups.toString());
                        
                                  return GestureDetector(
                                    onTap: () {
                                      if(joinedGroups[index]?.groupId?.privacy == "public") {
                                        context.pushNamed(
                                          AppRoute.publicGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: joinedGroups[index]?.groupId?.id), 
                                            'isSelfGroup': joinedGroups[index]?.groupId?.userId == AppConstants.userId,
                                          },
                                        ); 
                                      } else if(joinedGroups[index]?.groupId?.privacy == "private") {
                                        context.pushNamed(
                                          AppRoute.privateGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: joinedGroups[index]?.groupId?.id), 
                                            'isSelfGroup': joinedGroups[index]?.groupId?.userId == AppConstants.userId,
                                          },
                                        ); 
                                      } else {
                                        context.pushNamed(
                                          AppRoute.premiumGroupProfileView.name,
                                          extra: {
                                            'groupDetails': GroupDatum(id: joinedGroups[index]?.groupId?.id), 
                                            'isSelfGroup': joinedGroups[index]?.groupId?.userId == AppConstants.userId,
                                          },
                                        ); 
                                      }   
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 10, right: 20,),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                child: !(joinedGroups[index]?.groupId?.groupPhoto!.contains('https://skill') ?? true) && (joinedGroups[index]?.groupId?.groupPhoto?.isNotEmpty ?? false)
                                                ? Container(
                                                    height: 38,
                                                    width: 38,
                                                    padding: const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(color: primaryColor),
                                                    ),
                                                    child: Image.asset("assets/icons/group-icon.png"),
                                                  )
                                                : Container(
                                                  height: 38,
                                                  width: 38,
                                                  padding: const EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(color: primaryColor),
                                                    image: DecorationImage(
                                                      image: NetworkImage(joinedGroups[index]?.groupId?.groupPhoto ?? AppConstants.imageNotFoundLink),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              Text(
                                                joinedGroups[index]?.groupId?.name ?? "",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Visibility(
                                            visible: _editJoinedGroups,
                                            child:  GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  context: context, 
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                  builder: (context) {
                                                    return StatefulBuilder(
                                                      builder: (context, pinSetState) {
                                                        return Container(
                                                          height: size.height / 2.5,
                                                          width: size.width,
                                                          decoration: BoxDecoration(
                                                            color: kWhite,
                                                            borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap: () => Navigator.pop(context),
                                                                    child: Icon(Icons.close, color: Colors.grey[900],),
                                                                  ),
                                                                  gapW20,
                                                                ],
                                                              ),
                                                              Text(
                                                                (joinedGroups[index]?.pinData?.isNotEmpty ?? false)
                                                                  ? (joinedGroups[index]?.pinData?[0].isPinned ?? false)
                                                                    ? "Do you want to unpin this group?"
                                                                    : "Do you want to pin this group?"
                                                                  : "Do you want to pin this group?",
                                                                style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 18),
                                                              ),
                                                              Container(
                                                                width: 80,
                                                                height: 80,
                                                                decoration: BoxDecoration(
                                                                  color: const Color(0xffF3F5F6),
                                                                  borderRadius: BorderRadius.circular(50),
                                                                ),
                                                                padding: const EdgeInsets.all(16),
                                                                child: SvgPicture.asset("assets/icons/pin.svg",),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.symmetric(horizontal: 14),
                                                                child: Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: SizedBox(
                                                                        height: 45,
                                                                        child: MaterialButton(
                                                                          onPressed: () async {
                                                                            // Navigator.pop(context);
                                                                            pinSetState(() {});
                                                                            Logger.printSuccess(joinedGroups[index]?.id ?? "");
                                                                            final GroupPinUnpinRequestModel groupPinUnpinRequestModel = GroupPinUnpinRequestModel(
                                                                              groupId: joinedGroups[index]?.groupId?.id ?? "",
                                                                            );
                                  
                                                                            await _viewModel.togglePinUnpinGroup(context, groupPinUnpinRequestModel).then((value) {
                                                                              _viewModel.clearData();
                                                                              pinSetState(() {});
                                                                            });
                                                                          },
                                                                          color: primaryColor,
                                                                          child: Center(
                                                                            child: _viewModel.loading 
                                                                            ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,))
                                                                            : Text(
                                                                                (joinedGroups[index]?.pinData?.isNotEmpty ?? false)
                                                                                  ? (joinedGroups[index]?.pinData?[0].isPinned ?? false)
                                                                                    ? "Unpin"
                                                                                    : "Pin"
                                                                                  : "Pin", 
                                                                                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: kWhite),
                                                                              ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(width: 18,),
                                                                    Expanded(
                                                                      child: SizedBox(
                                                                        height: 45,
                                                                        child: MaterialButton(
                                                                          onPressed: () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          color: const Color(0xffC4C4C4),
                                                                          child: const Center(
                                                                            child: Text(
                                                                              "Cancel", 
                                                                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff5D5D5D)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // gapH16
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                              child: (joinedGroups[index]?.pinData?.isNotEmpty ?? false)
                                                ? (joinedGroups[index]?.pinData?[0].isPinned ?? false)
                                                  ? SvgPicture.asset("assets/icons/pin.svg", height: 25, width: 25,)
                                                  : SvgPicture.asset("assets/icons/pin-outline.svg", height: 25, width: 25,)
                                                : SvgPicture.asset("assets/icons/pin-outline.svg", height: 25, width: 25,),
                                              // child: SvgPicture.asset("assets/icons/pin-outline.svg", height: 25, width: 25,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );  
                                },
                              )
                          : const Center(child: Text("You don't have groups :(", style: TextStyle(color: primaryColor),),),
                        ),
                        const SizedBox(
                          height: 15,
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

  Widget ShimmerWidget() {
    return Column(
      children: [
        ShimmerContainer(),
        gapH10,
        ShimmerContainer(),
        gapH10,
        ShimmerContainer(),
      ],
    );
  }

  Widget ShimmerContainer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          gapW20,
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 20,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }


// Brightness.light?Colors.black:Colors.white;
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
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
