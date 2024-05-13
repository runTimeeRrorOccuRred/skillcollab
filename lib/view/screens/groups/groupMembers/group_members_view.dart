// ignore_for_file: use_named_constants, eol_at_end_of_file, avoid_dynamic_calls, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
// import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/removeFollower/models/remove_follower_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/text.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/groups/groupMembers/group_members_view_model.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';

class GroupMembersView extends ConsumerStatefulWidget {
  final String groupId;
  final bool isSelfGroup;
  final int groupProfile; //? 0 - Public | 1 - Private | 2 - Premium
  const GroupMembersView({super.key, required this.groupId, required this.isSelfGroup, required this.groupProfile});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GroupMembersViewState();
}

class _GroupMembersViewState extends ConsumerState<GroupMembersView> with BaseScreenView {

  late var _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.groupProfile == 0 ? ref.read(publicGroupProfileViewModel) : ref.read(privateGroupProfileViewModel);
    _viewModel.attachView(this);
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = widget.groupProfile == 0 ? ref.watch(publicGroupProfileViewModel) : ref.watch(privateGroupProfileViewModel);
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
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
            'Members',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          shadowColor: kBlack,
          bottom: TabBar(
            indicatorColor: primaryColor,
            labelColor: primaryColor,
            unselectedLabelColor: kGrey,
            indicator: const HalfCircleTabIndicator(
              color: primaryColor, // Change this to the desired indicator color
            ),
            tabs: [
              Tab(
                text: "${TextUtils.formatNumber(_viewModel.getFollowersModel.data?.length ?? 0)} Members",
              ),
              // const Tab(
              //   text: "0 Subscribers",
              // ),
            ],
          ),
        ),

        body: ListView.separated(
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Container(height: 1, width: size.width, color: Colors.black12,),
              ),
              itemCount: _viewModel.getFollowersModel.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    context.pushNamed(AppRoute.profileView.name, extra: {
                      "userId": _viewModel.getFollowersModel.data?[index].userId?.id ?? "",
                      "isSelfProfile": (_viewModel.getFollowersModel.data?[index].userId?.id ?? "") == AppConstants.userId,
                      },
                    );
                  },
                  leading: Container(
                    height: 50,
                    width: 50,
                    padding: _viewModel.getFollowersModel.data?[index].userId?.profilePhoto == null || !(_viewModel.getFollowersModel.data?[index].userId?.profilePhoto?.contains("https://skillcollab") ?? true)
                        ? const EdgeInsets.all(8) : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: _viewModel.getFollowersModel.data?[index].userId?.profilePhoto == null || !(_viewModel.getFollowersModel.data?[index].userId?.profilePhoto?.contains("https://skillcollab") ?? true)
                        ? Image.asset('assets/icons/user.png', fit: BoxFit.cover,)
                        : Image.network( _viewModel.getFollowersModel.data?[index].userId?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover),
                    ),
                  ),
                  title: Text(
                    "${_viewModel.getFollowersModel.data?[index].userId?.firstName ?? ""} ${_viewModel.getFollowersModel.data?[index].userId?.lastName ?? ""}", 
                    style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  subtitle: Text(
                    "${_viewModel.getFollowersModel.data?[index].userId?.userName ?? ""} - ${_viewModel.getFollowersModel.data?[index].groupId?.location ?? ""}", 
                    style: const TextStyle(color: kGrey, fontSize: 12),
                  ),
                  trailing: AppConstants.userId == _viewModel.getFollowersModel.data?[index].userId?.id?null: Visibility(
                    visible: widget.isSelfGroup,
                    child: Container(
                      height: 45,
                      // width: 100,
                      padding: const EdgeInsets.all(4),
                      child: MaterialButton(
                        onPressed: () {
                          // Logger.printWarning(_viewModel.getFollowersModel.data![index].userId!.id!);
                          // Logger.printWarning(AppConstants.userId);
                          ref.read(groupMembersViewModel).removeFollower(
                            context, 
                            RemoveFollowerRequestModel(memberId: _viewModel.getFollowersModel.data?[index].userId?.id ?? ""),
                             _viewModel.getFollowersModel.data?[index].userId?.firstName ?? "",
                            widget.groupId,
                          );
                          // _viewModel.removeFollower(context, _viewModel.getFollowersModel.data![index].userId!.id!)
                          //       .then((value) => _viewModel.getFollowersOfGroup(context, widget.groupId));
                        },
                        color: primaryColor,
                        child: !ref.watch(groupMembersViewModel).loading || _viewModel.loading
                          ? const Text("Remove", style: TextStyle(color: kWhite, fontSize: 12, fontWeight: FontWeight.w900),)
                          : const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)),
                      ),
                    ),
                  ),
                );
              },
            ),

        // body: TabBarView(
        //   children: [
        //     /// FOLLOWERS TAB
        //     ListView.separated(
        //       separatorBuilder: (context, index) => Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        //         child: Container(height: 1, width: size.width, color: Colors.black12,),
        //       ),
        //       itemCount: _viewModel.getFollowersModel.data!.length,
        //       itemBuilder: (context, index) {
        //         return ListTile(
        //           leading: const CircleAvatar(
        //             backgroundColor: Colors.transparent,
        //             backgroundImage: AssetImage('assets/icons/peoplePic.png',),
        //             radius: 25,
        //           ),
        //           title: Text(
        //             "${_viewModel.getFollowersModel.data?[index].userId?.firstName ?? ""} ${_viewModel.getFollowersModel.data?[index].userId?.lastName ?? ""}", 
        //             style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),
        //           ),
        //           subtitle: Text(
        //             "${_viewModel.getFollowersModel.data?[index].userId?.userName ?? ""} - ${_viewModel.getFollowersModel.data?[index].groupId?.location ?? ""}", 
        //             style: const TextStyle(color: kGrey, fontSize: 12),
        //           ),
        //           trailing: Visibility(
        //             visible: widget.isSelfGroup,
        //             child: Container(
        //               height: 45,
        //               // width: 100,
        //               padding: const EdgeInsets.all(4),
        //               child: MaterialButton(
        //                 onPressed: () {
        //                   // Logger.printWarning(_viewModel.getFollowersModel.data![index].userId!.id!);
        //                   // Logger.printWarning(AppConstants.userId);
        //                   ref.read(groupMembersViewModel).removeFollower(
        //                     context, 
        //                     RemoveFollowerRequestModel(memberId: _viewModel.getFollowersModel.data?[index].userId?.id ?? ""),
        //                      _viewModel.getFollowersModel.data?[index].userId?.firstName ?? "",
        //                     widget.groupId
        //                   );
        //                   // _viewModel.removeFollower(context, _viewModel.getFollowersModel.data![index].userId!.id!)
        //                   //       .then((value) => _viewModel.getFollowersOfGroup(context, widget.groupId));
        //                 },
        //                 color: primaryColor,
        //                 child: !ref.watch(groupMembersViewModel).loading || _viewModel.loading
        //                   ? const Text("Remove", style: TextStyle(color: kWhite, fontSize: 12, fontWeight: FontWeight.w900),)
        //                   : const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)),
        //               ),
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //     /// SUBSCRIBERS TAB
        //     ListView.separated(
        //       separatorBuilder: (context, index) => Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        //         child: Container(height: 1, width: size.width, color: Colors.black12,),
        //       ),
        //       itemCount: 0,
        //       itemBuilder: (context, index) {
        //         return const ListTile(
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.transparent,
        //             backgroundImage: AssetImage('assets/icons/peoplePic.png',),
        //             radius: 25,
        //           ),
        //           title: Text("Mitchell Smith", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),),
        //           subtitle: Text("Web designer - New York", style: TextStyle(color: kGrey, fontSize: 12),),
        //         );
        //       },
        //     ),
        //   ],
        // ),
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