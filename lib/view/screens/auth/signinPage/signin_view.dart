// ignore_for_file: avoid_print

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages, implementation_imports
import 'package:flutter/src/services/system_channels.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/auth/models/login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/auth/signinPage/signin_view_model.dart';

class SigninView extends ConsumerStatefulWidget {
  const SigninView({super.key});

  @override
  ConsumerState<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends ConsumerState<SigninView> with BaseScreenView {
  bool hidepassword = true;
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late SigninViewModel _viewModel;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = true;
  DateTime? currentBackPressTime;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(signinViewModel);
      _viewModel.attachView(this);
    });
  }

  bool popPage = false;

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(signinViewModel);
    return PopScope(
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        }else{
          context.pop();
        }
      },
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                gapH32,
                Padding(
                  padding: const EdgeInsets.only(
                    right: AppSizes.p28,
                    top: AppSizes.p4,
                  ),
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
                gapH12,
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
                  '     Welcome Back! 👋',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH10,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.p40),
                  child: Text(
                    'Where your journey to learn and your passion for teaching converge.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                gapH32,
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: Image.asset(
                    'assets/long_images/signPageImg.webp',
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                ),
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
                CommonTextField(
                  validator: _viewModel.validateEmail,
                  hintText: 'Enter Email',
                  focusNode: _emailFocusNode,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onEditingComplete: () {
                    _emailFocusNode.unfocus();
                  },
                ),
                gapH20,
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.p14),
                    child: Text(
                      "Password",
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
                  validator: _viewModel.validatePassword,
                  hintText: 'Enter Password',
                  controller: passwordController,
                  obsecureText: showPassword,
                  focusNode: _passwordFocusNode,
                  suffixWidget: IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      !showPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: kGrey,
                    ),
                  ),
                  onEditingComplete: () {
                    _passwordFocusNode.unfocus();
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: AppSizes.p14),
                    child: TextButton(
                      onPressed: () {
                        // _viewModel.navigateToForgetPassword();
                        context.pushReplacementNamed(AppRoute.forgotPasswordView.name);
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                gapH20,
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: CustomButton(
                    onTap: () => onSave(),
                    isBusy: _viewModel.loading,
                    text: "Login",
                  ),
                ),
                gapH16,
                // const Padding(
                //   padding: EdgeInsets.only(left: 8.0),
                //   child: Text(
                //     "or continue with",
                //     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                //   ),
                // ),
                // gapH16,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     ...List.generate(
                //       _viewModel.socialIcons.length,
                //       (index) => Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           const SizedBox(
                //             width: AppSizes.p20,
                //           ),
                //           IconButton(
                //               onPressed: () => handleSocialLogIn(index),
                //               icon: Image.asset(
                //                 _viewModel.socialIcons[index],
                //                 height: 35,
                //               )),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                gapH20,
                InkWell(
                  onTap: () {
                    // _viewModel.navigateToSignUp();
                    context.pushReplacementNamed(AppRoute.signupView.name);
                  },
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account? ',
                          style: TextStyle(
                            color: Color(0xFF5D5D5D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                gapH40,
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    // context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(message),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> onSave() async {
    if (_formKey.currentState!.validate()) {
      _viewModel.loginRequest = LoginRequest(
        email: emailController.text,
        password: passwordController.text,
        deviceToken: AppConstants.fcmToken,
      );
      print(_viewModel.loginRequest);
      _viewModel.login(
        context,
        _viewModel.loginRequest,
      );
    }
  }

  void handleSocialLogIn(int index) {
    switch (index) {
      case 0:
        _viewModel.googleLogin();
        break;
      case 1:
        break;
      default:
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    _viewModel.detachView();
  }

  @override
  void pushReplacementToScreen(
    AppRoute appRoute, {
    Map<String, String>? params,
  }) {
    // TODO: implement pushReplacementToScreen
    // context.pushReplacementNamed(appRoute.name);
  }
}
