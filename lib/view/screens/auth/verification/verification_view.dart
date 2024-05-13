// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/verify_email/models/verify_email_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/auth/signUp/signup_view_model.dart';
import 'package:skill_colab/view/screens/auth/signinPage/signin_view_model.dart';
import 'package:skill_colab/view/screens/auth/verification/verification_view_model.dart';

class VerificationView extends ConsumerStatefulWidget {
  const VerificationView({super.key});

  @override
  ConsumerState<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends ConsumerState<VerificationView>
    with BaseScreenView {
  late VerificationViewModel _viewModel;
  TextEditingController otpController = TextEditingController();

  int time = 60;
  late Timer _timer;
  bool resend = false;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(verificationViewModel);
    _viewModel.attachView(this);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time > 0) {
        setState(() {
          time--;
        });
      } else if (time == 0) {
        _timer.cancel();
        setState(() {
          resend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(verificationViewModel);
    return PopScope(
      onPopInvoked: (didPop) {
        showCustomSnackBar(context, text: "Please sign in to verify your email", color: Colors.red);
        context.pop();
        context.pop();
      },
      child: Scaffold(
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
                  'Sign in',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              gapH16,
              const Text(
                'Verification',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH10,
              const Text(
                'Please check your email for verification code',
                style: TextStyle(
                  color: kGrey,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: AppSizes.p32 + AppSizes.p8,
                  top: AppSizes.p20,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "assets/droplets/welcome_1.webp",
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.p14, right: AppSizes.p14,),
                child: Image.asset(
                  "assets/long_images/verificationImg.webp",
                  height: MediaQuery.of(context).size.height / 4,
                ),
              ),
              gapH20,
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.p14, right: AppSizes.p14,),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                          0.3,
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
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      selectedColor: Colors.white,
                      selectedFillColor: Colors.white,
                      borderWidth: 1,
                      inactiveBorderWidth: 2,
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
                      final VerifyEmailRequestModel verifyEmailRequestModel =
                          VerifyEmailRequestModel(otp: int.parse(v));
                      _viewModel.verifyEmail(context, verifyEmailRequestModel);
                    },
                    onChanged: (value) {
                      log(value);
                      setState(() {});
                    },
                    beforeTextPaste: (text) {
                      log("Allowing to paste $text");
                      return true;
                    },
                  ),
                ),
              ),
              gapH20,
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSizes.p14,
                  right: AppSizes.p14,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (!_viewModel.loading) {
                        final VerifyEmailRequestModel verifyEmailRequestModel =
                            VerifyEmailRequestModel(
                                otp: int.parse(otpController.text),);
                        _viewModel.verifyEmail(context, verifyEmailRequestModel);
                      }
                    },
                    child: CustomButton(
                      text: "Sign in",
                      color: otpController.text.length < 6 ? kGrey : primaryColor,
                      isBusy: _viewModel.loading,
                    ),
                  ),
                ),
              ),
              gapH20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "00:${time > 10 ? '' : '0'}$time",
                      style: TextStyle(color: !resend ? primaryColor : kGrey),
                    ),
                    InkWell(
                      onTap: () async {
                        if(resend) {
                          try {
                            final Response sendEmailResponse =
                                await ApiClient().post(
                              path:
                                  "${AppConstants.baseUrl}auth/send-verification-email",
                              data: jsonEncode({
                                "email": ref
                                        .read(signupViewModel)
                                        .registrationResponse
                                        ?.data
                                        ?.email ??
                                    ref
                                        .read(signinViewModel)
                                        .loginResponse
                                        ?.data
                                        ?.email ??
                                    "",
                              }),
                            );
                            Logger.printSuccess(sendEmailResponse.data.toString());
                            showCustomSnackBar(context,
                                text: "OTP resent successfully",
                                color: Colors.green,);
                          } catch (e) {
                            Logger.printError(e.toString());
                          }
      
                          setState(() {
                            resend = false;
                            time = 60;
                            _timer =
                                Timer.periodic(const Duration(seconds: 1), (timer) {
                              if (time > 0) {
                                setState(() {
                                  time--;
                                });
                              } else if (time == 0) {
                                _timer.cancel();
                                setState(() {
                                  resend = true;
                                });
                              }
                            });
                          });
                        }
                      },
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                          color: resend ? primaryColor : kGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // GestureDetector(
              //   child: RichText(
              //     text: const TextSpan(
              //     text: "Didn't receive the code? ",
              //     style: TextStyle(
              //       color: kBlack,
              //       fontSize: 14,
              //       fontWeight: FontWeight.w300,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: "Resend code",
              //         style: TextStyle(
              //           color: primaryColor,
              //           fontSize: 14,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ],
              //   ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
    context.pushReplacementNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
