import 'dart:async';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/auth/models/register_model.dart';
import 'package:skill_colab/data/remote/auth/models/username_validator_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/auth/signUp/signup_view_model.dart';

class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> with BaseScreenView {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isValidFirst = false;
  bool isValidLast = false;
  bool isUserName = false;
  bool isEmail = false;
  bool isPhone = false;
  bool isPass = false;
  bool isConfirmPass = false;

  // final String expertise = '';
  late SignUpViewModel _viewModel;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = true;
  List<Interest> interests = [];
  List<Interest> expertise = [];

  bool validationState = false;
  String countryCode = "+1";
  String countryCodeName = 'US';
  TextEditingController locationController = TextEditingController();
  DateTime? currentBackPressTime;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(signupViewModel);
      _viewModel.attachView(this);
      _viewModel.getInterests(context);
    });

    _scrollController.addListener(() {
      Logger.printSuccess(_scrollController.offset.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(signupViewModel);
    return PopScope(
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        }else{
          context.pop();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                gapH40,
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
                    width: 400,
                  ),
                ),
                gapH16,
                const Align(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                gapH10,
                Row(
                  children: [
                    const TextFieldTitle(
                      title: "First Name",
                    ),
                    if (isValidFirst == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: kWhite,
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
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          isValidFirst = true;
                          return "First name cannot be empty";
                        } else if (value.isValidName() == false) {
                          isValidFirst = true;
                          return 'Name should not contain numbers or special characters';
                        }
      
                        isValidFirst = false;
                        return null;
                      },
                      controller: firstNameController,
                      textCapitalization: TextCapitalization.words,
                      decoration: textFormDecoration.copyWith(
                        hintText: 'Enter First Name',
                      ),
                    ),
                  ),
                ),
                gapH16,
                Row(
                  children: [
                    const TextFieldTitle(
                      title: "Last Name",
                    ),
                    if (isValidLast == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                CommonTextField(
                  isValidating: validationState,
                  validator: (value) {
                    if (value!.isEmpty) {
                      isValidLast = true;
                      return "Last name cannot be empty";
                    } else if (value.isValidName() == false) {
                      isValidLast = true;
                      return 'Name should not contain numbers or special characters';
                    }
      
                    isValidLast = false;
                    return null;
                  },
                  hintText: 'Enter Last Name',
                  controller: lastNameController,
                  keyboardType: TextInputType.name,
                  isCapital: true,
                ),
                gapH16,
                Row(
                  children: [
                    const TextFieldTitle(
                      title: "Username",
                    ),
                    if (isUserName == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
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
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          isUserName = true;
                          return "Username cannot be empty";
                        } else if ((value.length) >= 3) {
                          isUserName = true;
                          _viewModel.usernameverification(
                              UsernameValidatorRequest(userName: value),);
                        }
      
                          isUserName = false;
                          return null;
                        },
                        controller: userNameController,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          suffixIcon: ref
                                      .watch(signupViewModel)
                                      .usernameValidatorResponse!
                                      .message ==
                                  "verified"
                              ? const Icon(Icons.verified)
                              : const Tooltip(
                                message: "Please add a unique username",
                                showDuration: Duration(seconds: 5),
                                triggerMode: TooltipTriggerMode.tap,
                                child: Icon(
                                    Icons.error,
                                    color: Colors.red,
                                  ),
                              ),
                          hintText: 'Enter Username',
                          counterText: "",
                          contentPadding: const EdgeInsets.only(
                            left: 10,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintStyle: const TextStyle(
                            color: kGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onChanged: (value) {
                          if (value.isValidUserName()) {
                            _viewModel.validateUserName(userNameController.text);
                          } else if (value.isNotEmpty) {
                            showSnackbar(
                                "Username should not contain special characters",
                                color: Colors.red,);
                          }
                        },
                      ),
                    ),
                  ),
                gapH16,
                const TextFieldTitle(
                  title: "My Expertise",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () async {
                      FilterListDialog.display<Interest>(
                        context,
                        listData: _viewModel.getInterestsResponseModel.data ?? [],
                        selectedListData: expertise,
                        enableOnlySingleSelection: true,
                        choiceChipLabel: (p0) => p0?.name ?? "",
                        validateSelectedItem: (list, item) =>
                            list!.contains(item),
                        onItemSearch: (item, query) {
                          return (item.name ?? "")
                              .toLowerCase()
                              .contains(query.toLowerCase());
                          // return false;
                        },
                        onApplyButtonClick: (list) {
                          setState(() {
                            expertise = list ?? [];
                          });
                          Navigator.pop(context);
                        },
                        headerCloseIcon: const Padding(
                          padding:
                              EdgeInsets.only(right: 20, top: 20, bottom: 20),
                          child: Icon(Icons.close),
                        ),
                        borderRadius: 5,
                        themeData: FilterListThemeData(
                          context,
                          choiceChipTheme: const ChoiceChipThemeData(
                            selectedBackgroundColor: primaryColor,
                            textStyle: TextStyle(color: primaryColor),
                          ),
                          controlButtonBarTheme: ControlButtonBarThemeData(
                            context,
                            controlButtonTheme: const ControlButtonThemeData(
                              primaryButtonBackgroundColor: kWhite,
                              primaryButtonTextStyle:
                                  TextStyle(color: primaryColor),
                              borderRadius: 5,
                              textStyle: TextStyle(color: kWhite),
                            ),
                            margin: const EdgeInsets.all(20),
                            buttonSpacing: 20,
                            backgroundColor: primaryColor,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          headerTheme: const HeaderThemeData(
                            searchFieldTextStyle: TextStyle(color: primaryColor),
                            searchFieldBorderRadius: 5
                          ),
                          borderRadius: 5,
                        ),
                      );
                      // FilterListDelegate.show<Interest>(context: context,
                      //     list: _viewModel.getInterestsResponseModel.data ?? [],
                      //     enableOnlySingleSelection: true,
                      //     selectedListData: expertise,
                      //     tileLabel: (_) => _?.name ?? "",
                      //     onItemSearch: (item, query) {
                      //       return (item.name ?? "")
                      //           .toLowerCase()
                      //           .contains(query.toLowerCase());
                      //     },
                      //     onApplyButtonClick: (list) {
                      //       if (list != null && list.isNotEmpty) {
                      //       if (expertise.isNotEmpty) {
                      //         setState(() {
                      //           expertise.clear();
                      //         });
                      //       }
                      //       setState(() {
                      //         expertise.add(list.first);
                      //       });
                      //     }
                      //     // Navigator.pop(context);
                      //     },
                      //     // headerCloseIcon: const Padding(
                      //     //   padding:
                      //     //       EdgeInsets.only(right: 20, top: 20, bottom: 20),
                      //     //   child: Icon(Icons.close),
                      //     // ),
                      //     // borderRadius: 5,
                      //     theme: FilterListDelegateThemeData(
                      //       listTileTheme: ListTileThemeData(
      
                      //       )
                      //     ),
                      //   );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [CustomBoxShadow()],
                      ),
                      child: expertise.isEmpty
                          ? const Text(
                              "Select your expertise",
                              style: TextStyle(
                                color: kGrey,
                              ),
                            )
                          : Wrap(
                              children: [
                                for (int i = 0; i < expertise.length; i++)
                                  Container(
                                    margin: const EdgeInsets.only(right: 4),
                                    child: Chip(
                                      label: Text(
                                        expertise[i].name ?? "",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: kWhite,
                                        ),
                                      ),
                                      backgroundColor: primaryColor,
                                    ),
                                  ),
                              ],
                            ),
                    ),
                  ),
                ),
      
                gapH16,
                const TextFieldTitle(
                  title: "Interests",
                ),
      
                gapH10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () async {
                      FilterListDialog.display<Interest>(
                        context,
                        listData: _viewModel.getInterestsResponseModel.data ?? [],
                        selectedListData: interests,
                        choiceChipLabel: (p0) => p0?.name ?? "",
                        validateSelectedItem: (list, item) =>
                            list!.contains(item),
                        onItemSearch: (item, query) {
                          return (item.name ?? "")
                              .toLowerCase()
                              .contains(query.toLowerCase());
                          // return false;
                        },
                        onApplyButtonClick: (list) {
                          setState(() {
                            interests = list ?? [];
                          });
                          Navigator.pop(context);
                        },
                        headerCloseIcon: const Padding(
                          padding:
                              EdgeInsets.only(right: 20, top: 20, bottom: 20),
                          child: Icon(Icons.close),
                        ),
                        borderRadius: 5,
                        themeData: FilterListThemeData(
                          context,
                          choiceChipTheme: const ChoiceChipThemeData(
                            selectedBackgroundColor: primaryColor,
                            textStyle: TextStyle(color: primaryColor),
                          ),
                          controlButtonBarTheme: ControlButtonBarThemeData(
                            context,
                            controlButtonTheme: const ControlButtonThemeData(
                              primaryButtonBackgroundColor: kWhite,
                              primaryButtonTextStyle:
                                  TextStyle(color: primaryColor),
                              borderRadius: 5,
                              textStyle: TextStyle(color: kWhite),
                            ),
                            margin: const EdgeInsets.all(20),
                            buttonSpacing: 20,
                            backgroundColor: primaryColor,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          headerTheme: const HeaderThemeData(
                            searchFieldTextStyle: TextStyle(color: primaryColor),
                            searchFieldBorderRadius: 5
                          ),
                          borderRadius: 5,
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [CustomBoxShadow()],
                      ),
                      child: interests.isEmpty
                          ? const Text(
                              "Select your interests",
                              style: TextStyle(
                                color: kGrey,
                              ),
                            )
                          : Wrap(
                              children: [
                                for (int i = 0; i < interests.length; i++)
                                  Container(
                                    margin: const EdgeInsets.only(right: 4),
                                    child: Chip(
                                      label: Text(
                                        interests[i].name ?? "",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: kWhite,
                                        ),
                                      ),
                                      backgroundColor: primaryColor,
                                    ),
                                  ),
                              ],
                            ),
                    ),
                  ),
                ),
                gapH16,
      
                Row(
                  children: [
                    const TextFieldTitle(
                      title: "Email",
                    ),
                    if (isEmail == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                CommonTextField(
                  isValidating: validationState,
                  validator: (value) {
                    if (value!.isEmpty) {
                      isEmail = true;
                      return "Email id cannot be empty";
                    }
                    final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    ).hasMatch(value);
                    if (!emailValid) {
                      isEmail = true;
                      return "Email id is invalid";
                    }
      
                    isEmail = false;
                    return null;
                  },
                  hintText: 'Enter Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                gapH16,
                const TextFieldTitle(
                  title: "Location",
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TypeAheadField<String>(
                    suggestionsCallback: (search) {
                      if (search.length > 3) {
                        return _viewModel.fetchLocationSuggestions(search);
                      }
                      return [];
                      // return _viewModel.fetchLocationSuggestions(search);
                    },
                    hideKeyboardOnDrag: true,
                    controller: locationController,
                    builder: (context, controller, focusNode) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          color: kWhite,
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
                        //ANCHOR - location controller
                        child: TextFormField(
                          onEditingComplete: () {
                            locationController.clear();
                          },
                          focusNode: focusNode,
                          controller: controller,
                          onTap: () {},
                          onTapOutside: (event) {},
                          textCapitalization: TextCapitalization.sentences,
                          decoration: const InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.only(
                              left: 10,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),),
                            errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),),
                            hintText: "User Location",
                            hintStyle: TextStyle(
                              color: kGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      );
                      // return CommonTextField(
                      //   isValidating: validationState,
                      //   padding: EdgeInsets.zero,
                      //   controller: controller,
                      //   focusNode: focusNode,
                      //   hintText: "Enter group location",
      
                      //   onEditingComplete: () {
                      //     setState(() {
                      //       locationController.clear();
                      //     });
                      //   },
                      // );
                    },
                    hideOnEmpty: true,
                    itemBuilder: (context, data) {
                      return ListTile(
                        tileColor: kWhite,
                        title: Text(
                          data,
                          style: const TextStyle(color: kBlack),
                        ),
                      );
                    },
                    loadingBuilder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        color: kWhite,
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        ),
                      );
                    },
                    onSelected: (city) {
                      locationController.text = city;
                      _viewModel.setLocation(city);
                    },
                  ),
                ),
                gapH16,
                Row(
                  children: [
                    const TextFieldTitle(
                      title: "Phone Number",
                    ),
                    if (isPhone == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                CommonTextField(
                  isValidating: validationState,
                  validator: (value) {
                    if (value!.isEmpty) {
                      isPhone = true;
                      return "Phone number cannot be empty";
                    }
                    if (value.length > 14) {
                      isPhone = true;
                      return "Phone number must be equal or lesser than 13";
                    }
      
                    isPhone = false;
                    return null;
                  },
                  hintText: 'Enter Phone Number',
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  maxlength: 10,
                  prefixWidget: CountryCodePicker(
                    // favorite: const ['+39', 'FR'],
                    barrierColor: Colors.black.withOpacity(0.5),
                    onChanged: (contryCode) {
                      countryCode = contryCode.dialCode ?? '+1';
                      countryCodeName = contryCode.code ?? 'US';
                      setState(() {});
                    },
                    initialSelection: countryCodeName,
                    boxDecoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                gapH16,
                Row(
                  children: [
                    const TextFieldTitle(
                      title: "Password",
                    ),
                    if (isPass == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                CommonTextField(
                  isValidating: validationState,
                  validator: (value) {
                    if (value!.isEmpty) {
                      isPass = true;
                      return "Password cannot be empty";
                    }
                    if (value.length < 8) {
                      isPass = true;
                      return "Password must be greater than 7";
                    }
      
                    isPass = false;
                    return null;
                  },
                  hintText: 'Enter Password',
                  controller: passwordController,
                  obsecureText: showPassword,
                  suffixWidget: SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Tooltip(
                          message:
                              "Password must have\n1. At least 8 characters\n2. At least 1 number and 1 alphabet",
                          preferBelow: false,
                          showDuration: Duration(seconds: 3),
                          triggerMode: TooltipTriggerMode.tap,
                          padding: EdgeInsets.all(16),
                          child: Icon(Icons.info),
                        ),
                        IconButton(
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
                      ],
                    ),
                  ),
                ),
                gapH16,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextFieldTitle(
                      title: "Confirm Password",
                    ),
                    if (isConfirmPass == true)
                      const Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold,),
                      ),
                  ],
                ),
                gapH10,
                CommonTextField(
                  isValidating: validationState,
                  validator: (value) {
                    if (value!.isEmpty) {
                      isConfirmPass = true;
                      return "Password cannot be empty";
                    }
                    if (value.length < 8) {
                      isConfirmPass = true;
                      return "Password must be greater than 7";
                    }
      
                    isConfirmPass = false;
                    return null;
                  },
                  hintText: 'Enter Password Again',
                  controller: confirmPasswordController,
                  obsecureText: showPassword,
                  suffixWidget: SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Tooltip(
                          message:
                              "Password must have\n1. At least 8 characters\n2. At least 1 number and 1 alphabet",
                          preferBelow: false,
                          showDuration: Duration(seconds: 3),
                          triggerMode: TooltipTriggerMode.tap,
                          padding: EdgeInsets.all(16),
                          child: Icon(Icons.info),
                        ),
                        IconButton(
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
                      ],
                    ),
                  ),
                ),
                gapH16,
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: CustomButton(
                    isBusy: _viewModel.loading,
                    onTap: () {
                      // Logger.printSuccess(expertise.first.name ?? '');
      
                      if (_formKey.currentState!.validate()) {
                        onSave(context);
                        setState(() {
                          validationState = false;
                        });
                      } else {
                        setState(() {
                          validationState = false;
                        });
                      }
                    },
                    //   {
                    //   Logger.printWarning(_viewModel.locationController.text);
                    // },
      
                    text: 'Sign up',
                  ),
                ),
                // gapH12,
                // const Text("or continue with"),
                // gapH12,
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
                //           Image.asset(
                //             _viewModel.socialIcons[index],
                //             height: 35,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                gapH20,
                InkWell(
                  onTap: () {
                    _viewModel.navigateToSignIn();
                    // _viewModel.clearAllData();
                  },
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Color(0xFF5D5D5D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign in',
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
    context.pushNamed(appRoute.name);
  }

  @override
  void pushReplacementToScreen(
    AppRoute appRoute, {
    Map<String, String>? params,
  }) {
    // TODO: implement pushReplacementToScreen
    context.pushReplacementNamed(appRoute.name);
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

  Future<void> onSave(BuildContext context) async {
    if (userNameController.text.isValidUserName()) {
      if (_formKey.currentState!.validate()) {
        if (passwordController.text == confirmPasswordController.text) {
          _viewModel.registrationRequest = RegistrationRequest(
            email: emailController.text,
            password: passwordController.text,
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            phone: "${countryCode.substring(1)} $countryCodeName ${phoneNumberController.text}",
            userName: userNameController.text,
            location: locationController.text,
            deviceToken: AppConstants.fcmToken,
            interests: interests,
            expertise: expertise.isNotEmpty ? expertise.first.name ?? '' : null,
          );
          Logger.printSuccess(_viewModel.registrationRequest.toString());
          _viewModel.registration(
            context,
            _viewModel.registrationRequest,
          );
        } else {
          showSnackbar("Password does not match", color: Colors.red);
        }
      }
    } else {
      showSnackbar("Username doesn't contain special character",
          color: Colors.red,);
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    userNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    _viewModel.detachView();
  }
}

class TextFieldTitle extends StatelessWidget {
  final String title;
  const TextFieldTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p14),
        child: Text(
          title,
          style: const TextStyle(
            color: kBlack,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

extension UsernameValidator on String {
  bool isValidUserName() {
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);
  }
}

extension NameValidator on String {
  bool isValidName() {
    return RegExp(r'^[A-Za-z\s]+$').hasMatch(this);
  }
}
