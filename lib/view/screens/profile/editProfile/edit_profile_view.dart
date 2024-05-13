// ignore_for_file: avoid_print, depend_on_referenced_packages, avoid_bool_literals_in_conditional_expressions

import 'package:country_code_picker/country_code_picker.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
// import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/user/models/update_user_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/auth/signUp/signup_view.dart';
import 'package:skill_colab/view/screens/auth/signUp/signup_view_model.dart';
import 'package:skill_colab/view/screens/profile/editProfile/edit_profile_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

class EditProfileView extends ConsumerStatefulWidget {
  final bool isSocialLogin;
  const EditProfileView({super.key, required this.isSocialLogin});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileViewState();
}

class _EditProfileViewState extends ConsumerState<EditProfileView>
    with BaseScreenView {
  late SignUpViewModel _signUpviewModel;
  late UserProfileViewModel _userProfileViewModel;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late EditProfileViewModel _viewModel;
  TextEditingController locationController = TextEditingController();

  List<Interest> interests = [];
  List<Interest> expertise = [];

  bool isChanged = false;
  bool isEnabled = false;

  bool isValidFirst = false;
  bool isValidLast = false;
  bool isPhone = false;
  String countryCode = "+1";
  String countryCodeName = 'US';
  bool isFieldChanged = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(editProfileViewModel);
      _viewModel.setData(ref.read(selfDataProvider).singleUserResponseModel);
      locationController.text =
          ref.read(selfDataProvider).singleUserResponseModel.data?.location ??
              "";
      Logger.printError(
          ref.read(selfDataProvider).singleUserResponseModel.data.toString(),);
       isEnabled = _viewModel.emailController.text.isEmpty || _viewModel.emailController.text.contains("@facebook.com") || _viewModel.emailController.text.contains("@apple.com");

      if(widget.isSocialLogin && _viewModel.phoneNumberController.text.isNotEmpty) {
        context.pushReplacementNamed(AppRoute.navigationView.name);
      } else {
        //! SETTING THE PHONE NUMBER
        List<String> phoneNumberList = _viewModel.phoneNumberController.text.split(' ');
        
        final String ph = '${phoneNumberList[2]}';
        // ph = ph.split('').reversed.join();
        countryCodeName = '${phoneNumberList[1]}';
        countryCode = '+${phoneNumberList[0]}';        
        Logger.printSuccess('Asfar $phoneNumberList');
        _viewModel.setPhoneNumber(ph);


        _signUpviewModel = ref.read(signupViewModel);
        _signUpviewModel.attachView(this);
        _signUpviewModel.getInterests(context);

        _userProfileViewModel = ref.read(userProfileViewModel);
        _userProfileViewModel.attachView(this);
        _userProfileViewModel
            .getUserById(context, AppConstants.userId)
            .then((value) {
          for (final x
              in _userProfileViewModel.singleUserResponseModel.data!.interests!) {
            final Interest i = Interest(id: x.id, name: x.name);
            print(x);
            interests.add(i);
          }

          expertise.add(_signUpviewModel.getInterestsResponseModel.data
                  ?.where((element) =>
                      element.name ==
                      _userProfileViewModel
                          .singleUserResponseModel.data!.expertise,)
                  .toList()[0] ??
              const Interest(),);
          //  _userProfileViewModel.singleUserResponseModel.data!.expertise!
          setState(() {});
        });
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(editProfileViewModel);
    _userProfileViewModel = ref.watch(userProfileViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        } else if (isChanged == true) {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('You have unsaved changes.'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    // Text(''),
                    Text('Are you sure you want to cancel changes?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Back'),
                  onPressed: () {
                    _viewModel.clearData();
                    context.pop();
                    context.pop();
                  },
                ),
              ],
            ),
          );
        } else if(widget.isSocialLogin == false) {
          context.pop();
        } else {

        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          centerTitle: false,
          title: const Text(
            "Edit profile",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
          ),
          elevation: 0,
          leading: Visibility(
            visible: context.canPop(),
            child: InkWell(
              onTap: () {
                if (!context.canPop()) {
                  ref.read(selfDataProvider).getUserById(
                      context,
                      ref
                              .read(selfDataProvider)
                              .singleUserResponseModel
                              .data
                              ?.id ??
                          "",);
                  context.pushReplacementNamed(AppRoute.navigationView.name);
                }
                if (MediaQuery.of(context).viewInsets.bottom > 0) {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                } else if (isChanged == true) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('You have unsaved changes.'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            // Text(''),
                            Text('Are you sure you want to cancel changes?'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: const Text('Back'),
                          onPressed: () {
                            _viewModel.clearData();
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                } else {
                  Navigator.pop(context);
                }
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.only(
                  left: 10,
                  // top: 10,
                  // bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
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
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cover photo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      InkWell(
                        splashColor: kGrey,
                        onTap: () async {
                          // final File? file =
                          await openPickImageModalSheet(context).then((value) {
                            if (value != null) {
                              isChanged = true;
                              _viewModel.setCoverImage(value);
                              _viewModel.uploadImage(
                                  true, value.path, value.path,);
                            } else {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Error in selecting image"),),
                              );
                            }
                          });
                        },
                        child: _viewModel.coverPhotoUrl != ""
                            ? Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image:
                                        NetworkImage(_viewModel.coverPhotoUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : _viewModel.coverImage!.path == "null" ||
                                    _viewModel.coverImage == null
                                ? Image.asset(
                                    "assets/icons/add_image.png",
                                    height: 53.02,
                                  )
                                : Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image:
                                            FileImage(_viewModel.coverImage!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                      ),
                      gapW10,
                      SizedBox(
                        child: (_viewModel.coverImage?.path ?? "") != "null"
                            ? SizedBox(
                                child: _viewModel.coverPhotoLoading
                                    ? const SpinKitThreeBounce(
                                        color: primaryColor,
                                        size: 20,
                                      )
                                    : SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: SvgPicture.asset(
                                            "assets/icons/correct.svg",),),
                              )
                            : Container(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'Profile photo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      InkWell(
                        splashColor: kGrey,
                        onTap: () async {
                          // final File? file =
                          await openPickImageModalSheet(context).then((value) {
                            if (value != null) {
                              isChanged = true;
                              _viewModel.setProfileImage(value);
                              _viewModel.uploadImage(
                                  false, value.path, value.path,);
                            } else {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Error in selecting image"),),
                              );
                            }
                          });
                        },
                        child: _viewModel.profilePhotoUrl != ""
                            ? Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        _viewModel.profilePhotoUrl,),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : _viewModel.profilePhoto!.path == "null" ||
                                    _viewModel.profilePhoto == null
                                ? Image.asset(
                                    "assets/icons/add_image.png",
                                    height: 53.02,
                                  )
                                : Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image:
                                            FileImage(_viewModel.profilePhoto!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                      ),
                      gapW10,
                      SizedBox(
                        child: (_viewModel.profilePhoto?.path ?? "") != "null"
                            ? SizedBox(
                                child: _viewModel.profilePhotoLoading
                                    ? const SpinKitThreeBounce(
                                        color: primaryColor,
                                        size: 20,
                                      )
                                    : SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: SvgPicture.asset(
                                            "assets/icons/correct.svg",),),
                              )
                            : Container(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'User Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  DecoratedBox(
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
                      validator: _viewModel.validateUserName,
                      controller: _viewModel.userNameController,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        suffixIcon: ref
                                        .watch(editProfileViewModel)
                                        .usernameValidatorResponse!
                                        .message ==
                                    "verified" ||
                                (ref
                                        .read(selfDataProvider)
                                        .singleUserResponseModel
                                        .data
                                        ?.userName
                                        .toString() ==
                                    _viewModel.userNameController.text)
                            ? const Icon(Icons.verified)
                            : const Icon(
                                Icons.error,
                                color: Colors.red,
                              ),
                        hintText: 'JhonDoe',
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
                          _viewModel.validateUserName(
                              _viewModel.userNameController.text,);
                        } else if (value.isNotEmpty) {
                          showSnackbar(
                              "Username should not contain special characters",
                              color: Colors.red,);
                        }
                        isChanged = true;
                        setState(() {});
                      },
                    ),
                  ),

                  gapH10,
                  Row(
                    children: [
                      const Text(
                        'First Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (isValidFirst == true)
                        const Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold,),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  DecoratedBox(
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
                          isValidFirst = true;
                          return "First name cannot be empty";
                        } else if (value.isValidName() == false) {
                          isValidFirst = true;
                          return 'Name should not contain numbers or special characters';
                        }

                        isValidFirst = false;
                        return null;
                      },
                      controller: _viewModel.firstNameController,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: const InputDecoration(
                        // suffixIcon: ref.watch(editProfileViewModel).usernameValidatorResponse!.message == "verified" || (ref.read(selfDataProvider).singleUserResponseModel.data?.userName.toString() == _viewModel.userNameController.text) ? const Icon(Icons.verified) : const Icon(Icons.error,color: Colors.red,),
                        hintText: "John",
                        counterText: "",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintStyle: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onChanged: (value) {
                        isChanged = true;
                        setState(() {});
                      },
                    ),
                  ),
                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.firstNameController,
                  //   hintText: "John",
                  //   onEditingComplete: (){
                  //     isChanged = true;
                  //     setState(() {

                  //     });
                  //   },
                  // ),
                  gapH10,
                  Row(
                    children: [
                      const Text(
                        'Last Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (isValidFirst == true)
                        const Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold,),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  DecoratedBox(
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
                          isValidLast = true;
                          return "Last name cannot be empty";
                        } else if (value.isValidName() == false) {
                          isValidLast = true;
                          return 'Name should not contain numbers or special characters';
                        }

                        isValidLast = false;
                        return null;
                      },
                      controller: _viewModel.lastNameController,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: const InputDecoration(
                        // suffixIcon: ref.watch(editProfileViewModel).usernameValidatorResponse!.message == "verified" || (ref.read(selfDataProvider).singleUserResponseModel.data?.userName.toString() == _viewModel.userNameController.text) ? const Icon(Icons.verified) : const Icon(Icons.error,color: Colors.red,),
                        hintText: "Doe",
                        counterText: "",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintStyle: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onChanged: (value) {
                        isChanged = true;
                        setState(() {});
                      },
                    ),
                  ),
                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.lastNameController,
                  //   hintText: "Doe",
                  //   onEditingComplete: (){
                  //     isChanged = true;
                  //     setState(() {

                  //     });
                  //   },
                  // ),
                  const SizedBox(height: 21),
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  DecoratedBox(
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
                      // validator: _viewModel.validateUserName,
                      controller: _viewModel.emailController,
                      enabled: isEnabled,
                      textCapitalization: TextCapitalization.sentences,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        // suffixIcon: ref.watch(editProfileViewModel).usernameValidatorResponse!.message == "verified" || (ref.read(selfDataProvider).singleUserResponseModel.data?.userName.toString() == _viewModel.userNameController.text) ? const Icon(Icons.verified) : const Icon(Icons.error,color: Colors.red,),
                        hintText: "johndoe@gmail.com",
                        counterText: "",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintStyle: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        isChanged = true;
                        setState(() {});
                      },
                    ),
                  ),
                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.emailController,

                  //   enabled: _viewModel.emailController.text.isEmpty ? true : false,
                  //   hintText: "johndoe@gmail.com",
                  //   onEditingComplete: (){
                  //     isChanged = true;
                  //     setState(() {

                  //     });
                  //   },
                  // ),
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      if (isPhone == true)
                        const Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold,),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CommonTextField(
                    padding: EdgeInsets.zero,
                    // isValidating: validationState,
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
                    controller: _viewModel.phoneNumberController,
                    keyboardType: TextInputType.phone,
                    maxlength: 10,
                    prefixWidget: CountryCodePicker(
                      // favorite: const ['+39', 'FR'],
                      barrierColor: Colors.black.withOpacity(0.5),
                      onChanged: (contryCode) {
                        Logger.printSuccess(contryCode.code!);
                        countryCode = contryCode.dialCode ?? '+1';
                        countryCodeName = contryCode.code ?? 'US';
                        setState(() {
                          isChanged = true;
                        });
                      },
                      initialSelection: countryCodeName,
                      boxDecoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  // DecoratedBox(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5.0),
                  //     color: Colors.white,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey.withOpacity(
                  //           0.3,
                  //         ),
                  //         spreadRadius: 1,
                  //         blurRadius: 10,
                  //         offset: const Offset(0, 3),
                  //       ),
                  //     ],
                  //   ),
                  //   child: TextFormField(
                  //     // validator: _viewModel.validateUserName,
                  //     textCapitalization: TextCapitalization.sentences,
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         isPhone = true;
                  //         return "Phone number cannot be empty";
                  //       }
                  //       if (value.length > 14) {
                  //         isPhone = true;
                  //         return "Phone number must be equal or lesser than 13";
                  //       }

                  //       isPhone = false;
                  //       return null;
                  //     },
                  //     controller: _viewModel.phoneNumberController,
                  //     keyboardType: TextInputType.phone,
                  //     maxLength: 10,
                  //     // enabled: _viewModel.emailController.text.isEmpty ? true : false,
                  //     decoration: const InputDecoration(
                  //       // suffixIcon: ref.watch(editProfileViewModel).usernameValidatorResponse!.message == "verified" || (ref.read(selfDataProvider).singleUserResponseModel.data?.userName.toString() == _viewModel.userNameController.text) ? const Icon(Icons.verified) : const Icon(Icons.error,color: Colors.red,),
                  //       hintText: "123 456 6677",
                  //       counterText: "",
                  //       contentPadding: EdgeInsets.only(
                  //         left: 10,
                  //       ),
                  //       border: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       errorBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       focusedErrorBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       disabledBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.transparent),
                  //       ),
                  //       hintStyle: TextStyle(
                  //         color: kGrey,
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //     onChanged: (value) {
                  //       isChanged = true;
                  //       setState(() {});
                  //     },
                  //   ),
                  // ),

                  const SizedBox(height: 21),

                  const Text(
                    'My Expertise',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  gapH10,
                  GestureDetector(
                    onTap: () async {
                      FilterListDialog.display<Interest>(
                        context,
                        listData:
                            _signUpviewModel.getInterestsResponseModel.data ??
                                [],
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
                            searchFieldTextStyle:
                                TextStyle(color: primaryColor),
                            searchFieldBorderRadius: 5,
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

                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.phoneNumberController,
                  //   keyboardType: TextInputType.phone,
                  //   maxlength: 12,
                  //   hintText: "123 456 6677",
                  //   onEditingComplete: (){
                  //     isChanged = true;
                  //     setState(() {

                  //     });
                  //   },
                  // ),
                  const SizedBox(height: 21),

                  //   const TextFieldTitle(
                  //   title: "Interests",
                  // ),
                  const Text(
                    'Interests',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  gapH10,
                  GestureDetector(
                    onTap: () async {
                      FilterListDialog.display<Interest>(
                        context,
                        listData:
                            _signUpviewModel.getInterestsResponseModel.data ??
                                [],
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
                            isChanged = true;
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
                            searchFieldTextStyle:
                                TextStyle(color: primaryColor),
                          ),
                          borderRadius: 5,
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16,),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [CustomBoxShadow()],
                      ),
                      child: interests.isEmpty
                          ? const Text("Select your interests")
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
                                            color: kWhite,),
                                      ),
                                      backgroundColor: primaryColor,
                                    ),
                                  ),
                              ],
                            ),
                    ),
                  ),
                  gapH16,

                  const Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.locationController,
                  //   hintText: "813 Howard Street Oswego NY 13126 USA",
                  //   suffixWidget: const Padding(
                  //     padding: EdgeInsets.all(16.0),
                  //     child: Icon(Icons.location_on_outlined, color: kGrey,),
                  //   ),
                  // ),
                  TypeAheadField<String>(
                    suggestionsCallback: (search) {
                      if (search.length > 3) {
                        isChanged = true;
                        return _viewModel.fetchLocationSuggestions(search);
                      }
                      return [];
                      // return _viewModel.fetchLocationSuggestions(search);
                    },
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
                          onTapOutside: (event) {},
                          focusNode: focusNode,
                          controller: controller,
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
                    },
                    hideOnEmpty: true,
                    itemBuilder: (context, data) {
                      return ListTile(
                        tileColor: kWhite,
                        title: Text(data),
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
                        ),),
                      );
                    },
                    onSelected: (city) {
                      locationController.text = city;
                      // _viewModel.setLocation(city);
                      // _viewModel.setLocationController(city);
                    },
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  DecoratedBox(
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
                      // validator: _viewModel.validateUserName,
                      controller: _viewModel.descriptionController,
                      // keyboardType: TextInputType.phone,
                      maxLines: 10,
                      maxLength: 500,
                      textCapitalization: TextCapitalization.sentences,
                      // enabled: _viewModel.emailController.text.isEmpty ? true : false,
                      decoration: const InputDecoration(
                        // suffixIcon: ref.watch(editProfileViewModel).usernameValidatorResponse!.message == "verified" || (ref.read(selfDataProvider).singleUserResponseModel.data?.userName.toString() == _viewModel.userNameController.text) ? const Icon(Icons.verified) : const Icon(Icons.error,color: Colors.red,),
                        hintText: "Enter the description here",
                        counterText: "",
                        contentPadding: EdgeInsets.only(
                          left: 10,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintStyle: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onChanged: (value) {
                        isChanged = true;
                        setState(() {});
                      },
                    ),
                  ),
                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.descriptionController,
                  //   maxLines: 10,
                  //   maxlength: 500,
                  //   hintText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  //   onEditingComplete: (){
                  //     isChanged = true;
                  //     setState(() {

                  //     });
                  //   },
                  // ),
                  gapH60,

                  gapH40,
                  // gapH40,
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 25.w,
            ),
            Visibility(
              visible: !widget.isSocialLogin,
              child: Expanded(
                child: SizedBox(
                  height: 45,
                  child: MaterialButton(
                    onPressed: () {
                      if (isChanged == true) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('You have unsaved changes.'),
                            content: const SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  // Text(''),
                                  Text(
                                      'Are you sure you want to cancel changes?',),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        );
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    color: kGrey,
                    child: const Text("Cancel"),
                  ),
                ),
              ),
            ),
            gapW10,
            Expanded(
              child: SizedBox(
                height: 45,
                child: CustomButton(
                  text: "Update",
                  color: _viewModel.coverPhotoLoading ||
                          _viewModel.profilePhotoLoading
                      ? Colors.grey
                      : primaryColor,
                  isBusy: _viewModel.loading,
                  onTap: () {
                    Logger.printSuccess(ref
                            .read(editProfileViewModel)
                            .usernameValidatorResponse!
                            .message ??
                        "",);

                    if (!_viewModel.coverPhotoLoading && !_viewModel.profilePhotoLoading || (ref.read(selfDataProvider).singleUserResponseModel.data?.userName.toString() !=_viewModel.userNameController.text)) {
                      if (isChanged && !widget.isSocialLogin) {
                        if (ref.read(editProfileViewModel).usernameValidatorResponse!.message?.contains("already taken") ??false) {
                          showSnackbar("Username already taken",  color: Colors.red,);
                        } else {
                          const CircularProgressIndicator();
                        }

                        if (_formKey.currentState!.validate()) {
                          if (_viewModel.userNameController.text
                              .isValidUserName()) {
                            final UpdateUserRequestModel
                                updateUserRequestModel = UpdateUserRequestModel(
                              firstName: _viewModel.firstNameController.text,
                              lastName: _viewModel.lastNameController.text,
                              phone: '${countryCode.substring(1)} $countryCodeName ${_viewModel.phoneNumberController.text}',
                              location: locationController.text,
                              coverPhoto: _viewModel.coverPhotoUrl,
                              email: _viewModel.emailController.text,
                              profilePhoto: _viewModel.profilePhotoUrl,
                              description: _viewModel.descriptionController.text,
                              userName: _viewModel.userNameController.text,
                              interests: interests,
                              expertise: expertise.isNotEmpty
                                  ? expertise.first.name ?? ''
                                  : null,
                            );
                            Logger.printSuccess(
                                updateUserRequestModel.toString(),);
                            _viewModel.editProfile(
                                context, updateUserRequestModel, widget.isSocialLogin);
                          } else {
                            showSnackbar(
                                "Username doesn't contain special character",
                                color: Colors.red,);
                          }
                        }
                      } else if(widget.isSocialLogin) {
                         if (ref.read(editProfileViewModel).usernameValidatorResponse!.message?.contains("already taken") ??false) {
                          showSnackbar("Username already taken",  color: Colors.red,);
                        } else {
                          const CircularProgressIndicator();
                        }

                        if (_formKey.currentState!.validate()) {
                          if (_viewModel.userNameController.text
                              .isValidUserName()) {
                            final UpdateUserRequestModel
                                updateUserRequestModel = UpdateUserRequestModel(
                              firstName: _viewModel.firstNameController.text,
                              lastName: _viewModel.lastNameController.text,
                              email: _viewModel.emailController.text,
                              phone: '${countryCode.substring(1)} $countryCodeName ${_viewModel.phoneNumberController.text}',
                              location: locationController.text,
                              coverPhoto: _viewModel.coverPhotoUrl,
                              profilePhoto: _viewModel.profilePhotoUrl,
                              description: _viewModel.descriptionController.text,
                              userName: _viewModel.userNameController.text,
                              interests: interests,
                              expertise: expertise.isNotEmpty
                                  ? expertise.first.name ?? ''
                                  : null,
                            );
                            Logger.printSuccess(
                                updateUserRequestModel.toString(),);
                            _viewModel.editProfile(
                                context, updateUserRequestModel, widget.isSocialLogin);
                          } else {
                            showSnackbar(
                                "Username doesn't contain special character",
                                color: Colors.red,);
                          }
                        }
                      }
                      else {
                        if(widget.isSocialLogin) {
                          context.pushReplacementNamed(AppRoute.navigationView.name);
                        } else {
                          context.pop();
                        }
                      }
                    }else{
                      Logger.printError('red');
                    }
                  },
                ),
              ),
            ),
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
}