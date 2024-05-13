import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/settingResetPassword/models/setting_reset_password_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/ResetPassword/reset_password_view_model.dart';

class ResetPassword extends ConsumerStatefulWidget {
  const ResetPassword({super.key});

  @override
  ConsumerState<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends ConsumerState<ResetPassword>
    with BaseScreenView {
  late SettingResetPasswordViewModel _viewModel;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(settingResetPasswordViewModelProvider);
    _viewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(settingResetPasswordViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
          'Reset Password',
          style: TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // gapH40,
            // Padding(
            //   padding:
            //       const EdgeInsets.only(right: AppSizes.p28, top: AppSizes.p4),
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: Image.asset(
            //       "assets/droplets/welcome_1.webp",
            //       height: 20,
            //     ),
            //   ),
            // ),
            // Align(
            //   child: Image.asset(
            //     'assets/images/logo_full_high_res.png',
            //     height: 45,
            //   ),
            // ),
            // gapH16,
            // const Align(
            //   child: Text(
            //     'Reset  Password',
            //     style: TextStyle(
            //       color: primaryColor,
            //       fontSize: 25,
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),
            // gapH10,
            const Text(
              'Reset your password',
              style: TextStyle(
                color: kGrey,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            gapH20,
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p14,
                right: AppSizes.p14,
              ),
              child: Image.asset(
                "assets/long_images/forgotPassword.webp",
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
            gapH10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                child: Text(
                  "Old Password",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            gapH10,
            CommonTextField(
              hintText: 'Enter your current password',
              controller: passwordController,
              obsecureText: true,
            ),
            gapH10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                child: Text(
                  "New Password",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            gapH10,
            CommonTextField(
              hintText: 'Enter your new password',
              controller: newPasswordController,
              obsecureText: true,
            ),
            gapH10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                child: Text(
                  "Confirm Password",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            gapH10,
            CommonTextField(
              hintText: 'Confirm your password',
              controller: confirmPasswordController,
              obsecureText: true,
            ),
            GestureDetector(
              onTap: () {
                final ResetPasswordRequest resetPasswordRequest =
                    ResetPasswordRequest(
                  password: passwordController.text,
                  newPassword: newPasswordController.text,
                  confirmPassword: confirmPasswordController.text,
                );
                _viewModel.settingResetPassword(context, resetPasswordRequest);
              },
              child: _viewModel.loading
                  ? const CircularProgressIndicator()
                  : const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CustomButton(
                        text: "Reset Password",
                      ),
                  ),
            ),
            gapW16,
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pop();
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }
}
