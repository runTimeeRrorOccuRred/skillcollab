// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/notifications/models/invite_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/groups/invite/invite_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class InviteView extends ConsumerStatefulWidget {
  const InviteView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InviteViewState();
}

class _InviteViewState extends ConsumerState<InviteView> {

  late InviteViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(inviteViewModel);
      _viewModel.getSelfFollowers(AppConstants.userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(inviteViewModel);
    return Scaffold(
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
          'Invite Followers',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        shadowColor: kBlack,
      ),

      body: SizedBox(
        height: size.height,
        width: size.width,
        child: _viewModel.loading 
          ? const Center(child: CircularProgressIndicator(color: primaryColor),)
          : _viewModel.getFollowersByUserResponseModel.data?.isEmpty ?? true
            ? const Center(child: Text("No Followers"),)
            : ListView.builder(
              // separatorBuilder: (context, index) => Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              //   child: Container(height: 1, width: size.width, color: Colors.black12,),
              // ),
              itemCount: ref.watch(selfDataProvider).singleUserResponseModel.data?.followers?.length ?? 0,
              itemBuilder: (context, index) {
                return Visibility(
                  visible: _viewModel.getFollowersByUserResponseModel.data?[index].id != AppConstants.userId,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          padding: _viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto == null || !(_viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto?.contains("https://skillcollab") ?? true)
                              // ignore: use_named_constants
                              ? const EdgeInsets.all(8) : const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: _viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto == null || !(_viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto?.contains("https://skillcollab") ?? true)
                              ? Image.asset('assets/icons/user.png', fit: BoxFit.cover,)
                              : Image.network( _viewModel.getFollowersByUserResponseModel.data?[index].profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover),
                          ),
                        ),
                        title: Text(
                          "${_viewModel.getFollowersByUserResponseModel.data?[index].firstName ?? ""} ${_viewModel.getFollowersByUserResponseModel.data?[index].lastName ?? ""}", 
                          style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                        subtitle: Text(
                          "${_viewModel.getFollowersByUserResponseModel.data?[index].userName ?? ""} - ${_viewModel.getFollowersByUserResponseModel.data?[index].location ?? ""}", 
                          style: const TextStyle(color: kGrey, fontSize: 12),
                        ),
                        trailing: InviteButton(
                          groupId: ref.read(publicGroupProfileViewModel).groupData?.id ?? "", invitedUserId: _viewModel.getFollowersByUserResponseModel.data?[index].id ?? "",),
                      ),
                      Visibility(
                        visible: index != ((_viewModel.getFollowersByUserResponseModel.data?.length ?? 0) -  1),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          height: 1,
                          width: size.width,
                          color: Colors.grey[200],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
      ),
    );
  }
}



class InviteButton extends ConsumerStatefulWidget {
  String? groupId;
  String? invitedUserId;
  InviteButton({super.key, required this.groupId, required this.invitedUserId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InviteButtonState();
}

class _InviteButtonState extends ConsumerState<InviteButton> {

  bool invited = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !invited,
      child: Container(
        height: 45,
        // width: 100,
        padding: const EdgeInsets.all(4),
        child: MaterialButton(
          onPressed: () {
            // Logger.printWarning(_viewModel.getFollowersModel.data![index].userId!.id!);
            // Logger.printWarning(AppConstants.userId);
            setState(() {
              invited = true;
            });
            ref.read(publicGroupProfileViewModel).triggerInviteNotification(InviteRequestModel(
              groupId: widget.groupId,
              invitedUserId: widget.invitedUserId,
            ),);
            // _viewModel.removeFollower(context, _viewModel.getFollowersModel.data![index].userId!.id!)
            //       .then((value) => _viewModel.getFollowersOfGroup(context, widget.groupId));
          },
          color: primaryColor,
          child: const Text("Invite", style: TextStyle(color: kWhite, fontSize: 12, fontWeight: FontWeight.w900),),
        ),
      ),
    );
  }
}