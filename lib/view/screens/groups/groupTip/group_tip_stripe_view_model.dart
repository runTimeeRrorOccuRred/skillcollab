import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/data/remote/tips/group_tips/group_tips_repo_impl.dart';
import 'package:skill_colab/data/remote/tips/group_tips/models/group_tips_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';

final groupTipStripeViewModel = ChangeNotifierProvider((ref) => GroupTipStripeViewModel(ref: ref));

class GroupTipStripeViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  GroupTipStripeViewModel({required this.ref}) : super();

  final GroupTipsRepoImpl _groupTipsRepoImpl = GroupTipsRepoImpl(ApiClient());

  /// DATA MEMBERS
  GroupTipsResponseModel _groupTipsResponseModel = const GroupTipsResponseModel();

  /// GETTERS
  GroupTipsResponseModel get groupTipsResponseModel => _groupTipsResponseModel;

  /// SETTERS


  /// OTHER METHODS
  Future<void> sendGroupTip(BuildContext context, GroupTipsRequestModel groupTipsRequestModel, String customerId) async {
    toggleLoading();
    await _groupTipsRepoImpl.grouptips(groupTipsRequestModel, customerId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _groupTipsResponseModel = r;
          Logger.printSuccess(_groupTipsResponseModel.toString());
          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                title: const Text("Successful", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
                content: Text("Your tip of \$${groupTipsRequestModel.tipAmount} was sent successfully"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                    }, 
                    child: const Text("Ok", style: TextStyle(color: primaryColor),),
                  ),
                ],
              );
            },
          );
        }
      );
    });
  }

}