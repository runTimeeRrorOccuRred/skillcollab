import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
// import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/onboarding/onboarding_view_model.dart';

class OnboardingView extends ConsumerStatefulWidget {
  const OnboardingView({super.key});

  @override
  ConsumerState<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends ConsumerState<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    List<String> socialIcons;
    socialIcons = [
      "assets/icons/google.webp",
      "assets/icons/fb.webp",
    ];
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      socialIcons = [
        "assets/icons/google.webp",
        "assets/icons/fb.webp",
        "assets/icons/apple.webp",
      ];
    }

    final viewModel = ref.watch(onboardingViewModel);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                gapH60,
                Align(
                  child: Image.asset(
                    "assets/images/logo_full_high_res.png",
                    height: 40,
                  ),
                ),
                gapH8,
                const Align(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                gapH4,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.p40),
                  child: Text(
                    "Where your journey to learn and your passion for teaching converge.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: AppSizes.p32 + AppSizes.p8,
                    top: AppSizes.p24,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/droplets/welcome_1.webp",
                      height: 30,
                    ),
                  ),
                ),
                gapH48,
                Image.asset(
                  "assets/long_images/welcome_long.webp",
                  height: MediaQuery.of(context).size.height / 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: AppSizes.p28, top: AppSizes.p8,),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      "assets/droplets/welcome_1.webp",
                      height: 21,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 9),
                Row(
                  children: [
                    gapW12,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .pushNamed(AppRoute.signinView.name);
                        },
                        child: const CustomButton(
                          text: "Sign in",
                        ),
                      ),
                    ),
                    gapW16,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .pushNamed(AppRoute.signupView.name);
                        },
                        child: const CustomButton(
                          text: "Sign up",
                        ),
                      ),
                    ),
                    gapW12,
                  ],
                ),
                gapH16,
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "or continue with",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                gapH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      socialIcons.length,
                      (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: AppSizes.p20,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                viewModel.signInWithGoogle(context: context);
                              } else if (index == 1) {
                                viewModel.signInWithFacebook(context: context);
                              } else if (index == 2) {
                                viewModel.signInWithApple(context: context);
                              }
                            },
                            child: Image.asset(
                              socialIcons[index],
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                gapH20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // showCustomSnackBar(context, text: "Development in progress", color: kGrey);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),),
                              backgroundColor: kWhite,
                              title: const Text(
                                "Guest Login",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,),
                              ),
                              content: const Text(
                                "Are you sure you want to login as a guest",
                                style: TextStyle(color: primaryColor),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "No",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    AppConstants.usertype =
                                        0; // 0 is for guest type
                                    SharedPreferenceService.setInt(
                                        AppConstants.usertypePref, 0,);
                                    context.pushReplacementNamed(
                                        AppRoute.navigationView.name,);
                                  },
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Guest Login',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Visibility(
              visible: ref.watch(onboardingViewModel).loading,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white.withOpacity(0.9),
                child: const Center(
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
