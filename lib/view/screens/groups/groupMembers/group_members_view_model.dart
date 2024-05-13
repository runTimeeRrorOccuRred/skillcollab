// ignore_for_file: eol_at_end_of_file

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/groups/removeFollower/models/remove_follower_model.dart';
import 'package:skill_colab/data/remote/groups/removeFollower/remove_follower_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

final groupMembersViewModel = ChangeNotifierProvider((ref) => GroupMembersViewModel(ref: ref));

class GroupMembersViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  GroupMembersViewModel({required this.ref});

  final RemoveFollowerRepoImpl _removeFollowerRepoImpl = RemoveFollowerRepoImpl();


  /// DATA MEMBER  
  

  /// GETTER
  


  /// OTHER METHODS  
  Future<void> removeFollower(BuildContext context, RemoveFollowerRequestModel removeFollowerRequestModel, String userName, String groupId) async {
    toggleLoading();
    // ref.read(publicGroupProfileViewModel).removeFollowerLocally(removeFollowerRequestModel.memberId ?? "");
    await _removeFollowerRepoImpl.removeFollower(removeFollowerRequestModel, groupId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess(r.toString());
          ref.read(publicGroupProfileViewModel).getFollowersOfGroup(context, groupId).whenComplete(() {
           // showCustomSnackBar(context, text: "Removed $userName", color: Colors.green);
          });
        }
      );
    });
  }

}