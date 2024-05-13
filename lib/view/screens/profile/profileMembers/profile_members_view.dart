// ignore_for_file: use_named_constants

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

class ProfileMembersView extends ConsumerStatefulWidget {
  final String userId;
  const ProfileMembersView({super.key, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileMembersViewState();
}

class _ProfileMembersViewState extends ConsumerState<ProfileMembersView> with BaseScreenView {

  // late GroupProfileViewModel _viewModel;
  late UserProfileViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(userProfileViewModel);
    _viewModel.getFollowersByUser(widget.userId);
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
    final viewModel = ref.watch(userProfileViewModel);
    return DefaultTabController(
      length: 2,
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
            'Followers',
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
                // text: "${TextUtils.formatNumber(_viewModel.getFollowersModel.data!.length)} Followers",
                // text: "${(viewModel.getFollowersByUserResponseModel.data?.length ?? 0) - 1} Followers",
                text: "${viewModel.getFollowersByUserResponseModel.data?.length ?? 0} Followers",
              ),
              Tab(
                text: "${ref.read(userProfileViewModel).singleUserResponseModel.data?.subscribers?.length}  Subscribers",
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            /// FOLLOWERS TAB
            SizedBox(
              child: viewModel.loading 
              ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
              : (viewModel.getFollowersByUserResponseModel.data?.length ?? 0) == 0 
                ? const Center(child: Text("No followers ;-;"),)
                : ListView.separated(
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  child: Container(height: 1, width: size.width, color: Colors.black12,),
                ),
                // itemCount: _viewModel.getFollowersModel.data!.length,
                itemCount: viewModel.getFollowersByUserResponseModel.data?.length ?? 0,
                itemBuilder: (context, index) {                              
                  return ListTile(
                      onTap: () {
                        context.pushNamed(
                          AppRoute.profileView.name,
                          extra: {
                            "userId": viewModel.getFollowersByUserResponseModel.data?[index].id ?? "", 
                            "isSelfProfile": viewModel.getFollowersByUserResponseModel.data?[index].id == AppConstants.userId,
                          },
                        ).then((value) {
                          viewModel.getFollowersByUser(widget.userId);
                        });
                      },
                      leading: Container(
                        height: 50,
                        width: 50,
                        padding: viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto == null || !(viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto?.contains("https://skillcollab") ?? true)
                            ? const EdgeInsets.all(8) : const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto == null || !(viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto?.contains("https://skillcollab") ?? true)
                            ? Image.asset('assets/icons/user.png', fit: BoxFit.cover,)
                            : Image.network( viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover),
                        ),
                      ),
                      title: Text(
                        "${viewModel.getFollowersByUserResponseModel.data?[index].firstName ?? ""} ${viewModel.getFollowersByUserResponseModel.data?[index].lastName ?? ""}", 
                        // "firstname lastname",
                        style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      subtitle: Text(
                        "${viewModel.getFollowersByUserResponseModel.data?[index].userName ?? ""} - ${viewModel.getFollowersByUserResponseModel.data?[index].location ?? "unknown location"}", 
                        // "username - location",
                        style: const TextStyle(color: kGrey, fontSize: 12),
                      ),
                      // trailing: Container(
                      //   height: 45,
                      //   // width: 100,
                      //   padding: const EdgeInsets.all(4),
                      //   child: MaterialButton(
                      //     onPressed: () {
                      //       // Logger.printWarning(_viewModel.getFollowersModel.data![index].userId!.id!);
                      //       // Logger.printWarning(AppConstants.userId);
                      //       // _viewModel.removeFollower(context, _viewModel.getFollowersModel.data![index].userId!.id!)
                      //       //       .then((value) => _viewModel.getFollowersOfGroup(context, widget.groupId));
                      //     },
                      //     color: primaryColor,
                      //     child: const Text("Remove", style: TextStyle(color: kWhite, fontSize: 12, fontWeight: FontWeight.w900),),
                      //   ),
                      // ),
                    );
                },
              ),
            ),
            /// SUBSCRIBERS TAB
            SizedBox(
              child: viewModel.loading 
              ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
              : (viewModel.singleUserResponseModel.data?.subscribers?.length ?? 0) == 0 
                ? const Center(child: Text("No Subscribers ;-;"),)
                : ListView.separated(
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  child: Container(height: 1, width: size.width, color: Colors.black12,),
                ),
                // itemCount: _viewModel.getFollowersModel.data!.length,
                itemCount: viewModel.singleUserResponseModel.data?.subscribers?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: () {
                        context.pushNamed(
                          AppRoute.profileView.name,
                          extra: {
                            "userId": viewModel.singleUserResponseModel.data?.subscribers?[index].id ?? "", 
                            "isSelfProfile": (viewModel.singleUserResponseModel.data?.subscribers?[index].user?.id ?? "") == AppConstants.userId,
                          },
                        ).then((value) {
                          viewModel.getFollowersByUser(widget.userId);
                        });
                      },
                      leading: Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        //  viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto == null || !(viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto?.contains("https://skillcollab") ?? true)
                        //     ? const EdgeInsets.all(8)  : 
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: viewModel.singleUserResponseModel.data?.subscribers?[index].user?.profilePhoto == null || !(viewModel.singleUserResponseModel.data?.subscribers?[index].user?.profilePhoto?.contains("https://skillcollab") ?? true)
                            ? Image.asset('assets/icons/user.png', fit: BoxFit.cover,)
                            : Image.network( viewModel.singleUserResponseModel.data?.subscribers?[index].user?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover),
                        ),
                      ),
                      title: Text(
                        "${viewModel.singleUserResponseModel.data?.subscribers?[index].user?.firstName ?? ""} ${viewModel.singleUserResponseModel.data?.subscribers?[index].user?.lastName ?? ""}", 
                        // "firstname lastname",
                        style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      subtitle: Text(
                        "${viewModel.getFollowersByUserResponseModel.data?[index].userName ?? ""} - ${viewModel.singleUserResponseModel.data?.subscribers?[index].user?.location ?? "unknown location"}", 
                        style: const TextStyle(color: kGrey, fontSize: 12),
                      ),
                      // trailing: Container(
                      //   height: 45,
                      //   // width: 100,
                      //   padding: const EdgeInsets.all(4),
                      //   child: MaterialButton(
                      //     onPressed: () {
                      //       // Logger.printWarning(_viewModel.getFollowersModel.data![index].userId!.id!);
                      //       // Logger.printWarning(AppConstants.userId);
                      //       // _viewModel.removeFollower(context, _viewModel.getFollowersModel.data![index].userId!.id!)
                      //       //       .then((value) => _viewModel.getFollowersOfGroup(context, widget.groupId));
                      //     },
                      //     color: primaryColor,
                      //     child: const Text("Remove", style: TextStyle(color: kWhite, fontSize: 12, fontWeight: FontWeight.w900),),
                      //   ),
                      // ),
                    );
                },
              ),
            ),
            // ListView.separated(
            //   separatorBuilder: (context, index) => Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            //     child: Container(height: 1, width: size.width, color: Colors.black12,),
            //   ),
            //   itemCount: 0,
            //   itemBuilder: (context, index) {
            //     return const ListTile(
            //       leading: CircleAvatar(
            //         backgroundColor: Colors.transparent,
            //         backgroundImage: AssetImage('assets/icons/peoplePic.png',),
            //         radius: 25,
            //       ),
            //       title: Text("Mitchell Smith", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),),
            //       subtitle: Text("Web designer - New York", style: TextStyle(color: kGrey, fontSize: 12),),
            //     );
            //   },
            // ),
          ],
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
