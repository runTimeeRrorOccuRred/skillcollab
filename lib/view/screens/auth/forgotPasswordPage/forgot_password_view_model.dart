// ignore_for_file: eol_at_end_of_file, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/forgotPassword/forgot_password_repo_impl.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_password_model.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_verify_model.dart';
import 'package:skill_colab/data/remote/resetPassword/models/reset_password_model.dart';
import 'package:skill_colab/data/remote/resetPassword/reset_password_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/utils.dart';

final forgotPasswordViewModel = ChangeNotifierProvider((ref) => ForgotPasswordViewModel(ref: ref));

class ForgotPasswordViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ForgotPasswordViewModel({required this.ref});

  ForgotPasswordRepoImpl forgotPasswordRepoImpl = ForgotPasswordRepoImpl();
  ResetPasswordRepoImpl resetPasswordRepoImpl = ResetPasswordRepoImpl();

  /// DATA MEMBERS
  int _index = 1; // Can be only 1 or 2 ====> 1 -> email page ||| 2 -> otp page ||| 3 -> new password page


  /// GETTERS
  int get index => _index;


  /// SETTERS
  void setIndex(int val) {
    _index = val;
    notifyListeners();
  }

  /// OTHER METHODS
  
  Future<void> sendEmailForgotPassword(BuildContext context, String emailId) async {
    toggleLoading();
    forgotPasswordRepoImpl.sendEmailForgotPassword(ForgotPasswordRequestModel(email: emailId)).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("No Account Found!", style: TextStyle(color: kWhite),),
              backgroundColor: Colors.red,
            ),
          );
        }, 
        (r) {
          view?.showSnackbar("$r || Email sent");
          _index = 2;
          notifyListeners();
          // view?.navigateToScreen(appRoute)
        }      
      );
    });
  }


  Future<void> resetPassword(BuildContext context, String otp, String newPassword, String confirmNewPassword, String email) async {
    toggleLoading();
    final ResetPasswordRequestModel resetPasswordRequestModel = ResetPasswordRequestModel(otp: int.parse(otp), newPassword: newPassword, confirmPassword: confirmNewPassword, email: email);
    print(resetPasswordRequestModel);
    resetPasswordRepoImpl.resetPassword(resetPasswordRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          Logger.printError(l.message);
        }, 
        (r) {
          Logger.printSuccess(r.toString());
          Fluttertoast.showToast(
            msg: "Password changed successfully. Please login again",
            backgroundColor: Colors.green,
            gravity: ToastGravity.BOTTOM,
            textColor: kWhite,
            toastLength: Toast.LENGTH_LONG,
          );
          context.pop();
          notifyListeners();
        }
      );
    });    
  }


  Future<void> forgotVerifyOtp(ForgotVerifyRequestModel forgotVerifyRequestModel) async {
    toggleLoading();
    await forgotPasswordRepoImpl.forgotVerifyOtp(forgotVerifyRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Fluttertoast.showToast(
            msg: "OTP Verified Successfully",
            backgroundColor: Colors.green,
            gravity: ToastGravity.BOTTOM,
            textColor: kWhite,
          );
          Logger.printSuccess(r.toString());
          _index = 3;
        }
      );
    });
  }


  String? validateEmail(String? val) {
    if (val == '') return "Email id cannot be empty";
    final bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(val!);
    if (!emailValid) return "Email id is invalid";
    return null;
  }
}