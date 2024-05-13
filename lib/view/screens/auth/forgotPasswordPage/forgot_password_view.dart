// ignore_for_file: file_names, equal_elements_in_set

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_verify_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/auth/forgotPasswordPage/forgot_password_view_model.dart';

class ForgotPasswordView extends ConsumerStatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  ConsumerState<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends ConsumerState<ForgotPasswordView>
    with BaseScreenView {
  bool hideNewPassword = true;
  bool hideConfirmNewPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newConfirmPasswordController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late ForgotPasswordViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(forgotPasswordViewModel);
    _viewModel.attachView(this);
    // emailController = TextEditingController();
    // otpController = TextEditingController();
    // newPasswordController = TextEditingController();
    // newConfirmPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(forgotPasswordViewModel);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH40,
            Padding(
              padding:
                  const EdgeInsets.only(right: AppSizes.p28, top: AppSizes.p4),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/droplets/welcome_1.webp",
                  height: 20,
                ),
              ),
            ),
            Align(
              child: Image.asset(
                'assets/images/logo_full_high_res.png',
                height: 40,
              ),
            ),
            gapH16,
            const Align(
              child: Text(
                'Forgot  Password',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            gapH10,
            Text(
              _viewModel.index == 1
                  ? 'Enter your email to get your password'
                  : 'Please enter password you have received on your email',
              style: const TextStyle(
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
            gapH40,
            if (_viewModel.index == 1) ...{
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              gapH10,
              Form(
                key: _formKey,
                child: CommonTextField(
                  hintText: 'Enter Email',
                  controller: emailController,
                  validator: _viewModel.validateEmail,
                ),
              ),
            } else if (_viewModel.index == 2) ...{
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                  child: Text(
                    "Otp",
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              gapH10,
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.p14, right: AppSizes.p14,),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                          0.1,
                        ),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    animationType: AnimationType.fade,
                    controller: otpController,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: kWhite,
                      inactiveFillColor: kWhite,
                      activeColor: kWhite,
                      inactiveColor: kWhite,
                      selectedColor: kWhite,
                      selectedFillColor: kWhite,
                      borderWidth: 1,
                    ),
                    textStyle: const TextStyle(
                      color: kBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    cursorColor: kBlack,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    onCompleted: (v) {
                      Logger.printSuccess("Completed");
                    },
                    onChanged: (value) {
                      Logger.printWarning(value);
                      setState(() {});
                    },
                    beforeTextPaste: (text) {
                      Logger.printError("Allowing to paste $text");
                      return true;
                    },
                  ),
                ),
              ),
            } else ...{
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
              gapH12,
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSizes.p14,
                  right: AppSizes.p14,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (otpController.text.length != 6) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Please enter the otp first",
                            style: TextStyle(color: kWhite),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: CommonTextField(
                    // validator: _viewModel.validatePassword,
                    hintText: 'Enter Password',
                    enabled: otpController.text.length == 6,
                    padding: EdgeInsets.zero,
                    controller: newPasswordController,
                    obsecureText: hideNewPassword,
                    suffixWidget: IconButton(
                      onPressed: () {
                        setState(() {
                          hideNewPassword = !hideNewPassword;
                        });
                      },
                      icon: Icon(
                        !hideNewPassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: kGrey,
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                  child: Text(
                    "Confirm New Password",
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSizes.p14,
                  right: AppSizes.p14,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (otpController.text.length != 6) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Please enter the otp first",
                            style: TextStyle(color: kWhite),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: CommonTextField(
                    // validator: _viewModel.validatePassword,
                    hintText: 'Enter Password',
                    enabled: otpController.text.length == 6,
                    padding: EdgeInsets.zero,
                    controller: newConfirmPasswordController,
                    obsecureText: hideConfirmNewPassword,
                    suffixWidget: IconButton(
                      onPressed: () {
                        setState(() {
                          hideConfirmNewPassword = !hideConfirmNewPassword;
                        });
                      },
                      icon: Icon(
                        !hideConfirmNewPassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: kGrey,
                      ),
                    ),
                  ),
                ),
              ),
            },
            gapH60,
            SizedBox(
              child: _viewModel.loading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    )
                  : Row(
                      children: [
                        gapW12,
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (_viewModel.index == 1) {
                                context.pop();
                              } else {
                                _viewModel.setIndex(1);
                                setState(() {});
                              }
                            },
                            child: const CustomButton(
                              text: "Back",
                            ),
                          ),
                        ),
                        gapW16,
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // _viewModel.index = 2;
                              // setState(() {});
                              if (_viewModel.index == 1) {
                                if (_formKey.currentState!.validate()) {
                                  _viewModel.sendEmailForgotPassword(
                                      context, emailController.text,);
                                }
                              } else if (_viewModel.index == 2) {
                                _viewModel.forgotVerifyOtp(
                                    ForgotVerifyRequestModel(
                                        email: emailController.text,
                                        otp: int.parse(otpController.text),),);
                              } else {
                                // print(emailController.text);
                                // print(otpController.text);
                                // print(newConfirmPasswordController.text);
                                // print(newPasswordController.text);
                                _viewModel.resetPassword(
                                    context,
                                    otpController.text,
                                    newPasswordController.text,
                                    newConfirmPasswordController.text,
                                    emailController.text,);
                              }
                            },
                            child: CustomButton(
                              text: _viewModel.index == 1 ? 'Continue' : 'Next',
                            ),
                          ),
                        ),
                        gapW12,
                      ],
                    ),
            ),
            gapH32,
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
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
