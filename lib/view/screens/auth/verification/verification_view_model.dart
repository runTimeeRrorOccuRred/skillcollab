import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/verify_email/models/verify_email_model.dart';
import 'package:skill_colab/data/remote/verify_email/verify_email_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';

final verificationViewModel = ChangeNotifierProvider((ref) => VerificationViewModel(ref: ref));

class VerificationViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  VerificationViewModel({required this.ref});

  /// DATA MEMBERS
  final VerifyEmailRepoImpl _verifyEmailRepoImpl = VerifyEmailRepoImpl();


  /// GETTERS
  

  /// SETTERS
  


  /// OTHER METHODS
  Future<void> verifyEmail(BuildContext context, VerifyEmailRequestModel verifyEmailRequestModel) async {
    toggleLoading();
    Logger.printSuccess(verifyEmailRequestModel.toString());
    _verifyEmailRepoImpl.verifyEmail(verifyEmailRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, color: Colors.red, text: l.message),
        (r) {
          showCustomSnackBar(context, text: r.message!, color: Colors.green);
          context.pop();
          context.pushReplacementNamed(AppRoute.navigationView.name);
          // GoRouter.of(context).push(Uri(path: '/navigatin').toString()),
        }
      );
    });
  }  

}
