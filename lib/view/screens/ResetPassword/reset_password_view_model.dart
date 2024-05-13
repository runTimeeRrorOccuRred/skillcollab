import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/settingResetPassword/models/setting_reset_password_model.dart';
import 'package:skill_colab/data/remote/settingResetPassword/setting_reset_password_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/colors.dart';

final settingResetPasswordViewModelProvider = ChangeNotifierProvider( (ref) => SettingResetPasswordViewModel(ref: ref),
);
class SettingResetPasswordViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;  
  SettingResetPasswordViewModel({required this.ref});
  ResetPasswordResponse? resetPasswordResponse;
  ResetPasswordResponse? get getResetPasswordResponse => resetPasswordResponse;

  final SettingResetPasswordRepoImpl _settingResetPasswordRepoImpl = SettingResetPasswordRepoImpl(ApiClient());


 

  Future<void> settingResetPassword( BuildContext context, ResetPasswordRequest resetPasswordRequest) async {
     toggleLoading();
     notifyListeners();
    await _settingResetPasswordRepoImpl.settingResetPassword(resetPasswordRequest).then((value) {
      toggleLoading();
      return value.fold((l) {
        view?.showSnackbar(l.message);
      }, (r) async {
        resetPasswordResponse = r;
        if (resetPasswordResponse?.isSuccess == true) {
          notifyListeners();
          view?.showSnackbar( resetPasswordResponse?.message.toString() ?? "null");
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: kWhite,
                title: const Text("Success", style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold),),
                content: const Text("Your password reset successfully ", style: TextStyle(color: primaryColor),),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    }, 
                    child: const Text("Ok", style: TextStyle(color: primaryColor),),
                  ),
                ],
              );
            },
          );
        } else {
          view?.showSnackbar( resetPasswordResponse?.message.toString() ?? "null");
        }
        notifyListeners();
      });
    });
  }
}
