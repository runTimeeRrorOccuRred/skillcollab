

// ignore_for_file: use_build_context_synchronously

import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/groups/create_group/models/create_group_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/payment/add_bank/models/customer_add_bank_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
// import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/createGroup/addBankDetails/add_bank_details_view.dart';
import 'package:skill_colab/view/screens/groups/createGroup/addBankDetails/stripe_account_webview.dart';
import 'package:skill_colab/view/screens/groups/createGroup/create_group_view_model.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';


class CreateGroupView extends ConsumerStatefulWidget {
  const CreateGroupView({super.key});

  @override
  ConsumerState<CreateGroupView> createState() => _CreateGroupViewState();
}

class _CreateGroupViewState extends ConsumerState<CreateGroupView> with BaseScreenView {  

  late CreateGroupViewModel _viewModel;
  bool isCardAdded = false; 
  // final TextfieldTagsController _tagsController = TextfieldTagsController();
  List<Interest> interests = [];
  final QuillController quillController = QuillController.basic();
  final _formKey = GlobalKey<FormState>();
  

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(createGroupViewModel);
    _viewModel.attachView(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel.getInterests(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(createGroupViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{
            _viewModel.clearAllData();
            context.pop();
          }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                if (MediaQuery.of(context).viewInsets.bottom > 0) {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                }else {
                  Navigator.of(context).pop();
                  _viewModel.clearAllData();
                }
                
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
          title: GestureDetector(
            onTap: () {
              // print(ref.read(selfDataProvider).getCardListModel.toString());
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddBankDetailsView()));
            },
            child: const Text(
              'Create Group',
              style: TextStyle(
                color: primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
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
                            if(value != null) {
                              _viewModel.setCoverImage(value);
                              _viewModel.uploadImage(true, value.path, value.path);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Error in selecting image")),
                              );
                            }
                          });
                        },
                        child: _viewModel.coverImage!.path == "null" || _viewModel.coverImage == null
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
                                image: FileImage(_viewModel.coverImage!),
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
                              : SizedBox(height: 25, width: 25, child: SvgPicture.asset("assets/icons/correct.svg")),
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
                            if(value != null) {
                              _viewModel.setProfileImage(value);
                              _viewModel.uploadImage(false, value.path, value.path);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Error in selecting image")),
                              );
                            }
                          });
                        },
                        child: _viewModel.profilePhoto!.path == "null" || _viewModel.profilePhoto == null
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
                                image: FileImage(_viewModel.profilePhoto!),
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
                              : SizedBox(height: 25, width: 25, child: SvgPicture.asset("assets/icons/correct.svg")),
                          )
                          : Container(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CommonTextField(
                    padding: EdgeInsets.zero,
                    controller: _viewModel.nameController,
                    hintText: "Enter your group name",
                    validator: (p0) {
                      if(p0?.isEmpty ?? false) {
                        showCustomSnackBar(context, text: "Group name cannot be empty", color: Colors.red);
                        return "Group name cannot be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CommonTextField(
                    maxLines: 10,
                    maxlength: 500,
                    padding: EdgeInsets.zero,
                    controller: _viewModel.descriptionController,
                    hintText: "Write Description....",
                    validator: (p0) {
                      if(p0?.isEmpty ?? false) {
                        showCustomSnackBar(context, text: "Group description cannot be empty", color: Colors.red);
                        return "Group description cannot be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'Group Rules',
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
                    child: QuillProvider( // Wrap your editor and toolbar with QuillProvider
                          configurations: QuillConfigurations(
                            controller: quillController,
                          ),
                          child: Column(
                            children: [
                              const QuillToolbar(
                                
                                configurations: QuillToolbarConfigurations(
                                  dialogTheme: QuillDialogTheme(dialogBackgroundColor: primaryColor),
                                  
                                  // color: Colors.red,
                                  // sectionDividerColor: Colors.amber
                                  //buttonOptions: QuillToolbarButtonOptions(customButtons: QuillToolbarCustomButtonOptions(iconTheme: QuillIconTheme(iconSelectedColor: primaryColor,iconSelectedFillColor: primaryColor)))
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: MediaQuery.sizeOf(context).height / 3,
                                  child: QuillEditor.basic(
                                    
                                    // readOnly: false, // true for view only mode
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  ),
                  // DecoratedBox(
                  //   decoration: BoxDecoration(
                  //     color: kWhite,
                  //     borderRadius: BorderRadius.circular(5),
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
                  //   child: Column(
                  //     children: [
                  //       ClipRRect(
                  //         borderRadius: const BorderRadius.only(
                  //           topLeft: Radius.circular(5),
                  //           topRight: Radius.circular(5),
                  //         ),
                  //         child: ToolBar(
                  //           toolBarColor: primaryColor,
                  //           activeIconColor: Colors.green,
                  //           padding: const EdgeInsets.all(8),
                  //           iconSize: 20,
                  //           controller: controller,
                  //           toolBarConfig: const [
                  //             ToolBarStyle.bold,
                  //             ToolBarStyle.italic,
                  //             ToolBarStyle.underline,
                  //             ToolBarStyle.headerOne,
                  //             ToolBarStyle.headerTwo,
                  //             ToolBarStyle.align,
                  //             ToolBarStyle.listBullet,
                  //             ToolBarStyle.listOrdered,
                  //           ],
                  //           iconColor: Colors.white,
                  //         ),
                  //       ),
                  //       ClipRRect(
                  //         borderRadius: const BorderRadius.only(
                  //           bottomLeft: Radius.circular(5),
                  //           bottomRight: Radius.circular(5),
                  //         ),
                  //         child: QuillHtmlEditor(
                  //           // text: "<h1>Hello</h1>This is a quill html editor example 😊",
                  //           hintText: 'Group Rules',
                  //           controller: controller,
                  //           minHeight: 250,
                  //           padding: const EdgeInsets.only(left: 10, top: 5),
                  //           // onFocusChanged: (hasFocus) => debugPrint('has focus $hasFocus'),
                  //           // onTextChanged: (text) => debugPrint('widget text change $text'),
                  //           // onEditorCreated: () => debugPrint('Editor has been loaded'),
                  //           // onEditingComplete: (s) => debugPrint('Editing completed $s'),
                  //           loadingBuilder: (context) {
                  //               return const Center(
                  //               child: CircularProgressIndicator(
                  //               strokeWidth: 0.4,
                  //               ),);},
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(height: 21),
                  const Text(
                    'Group Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TypeAheadField<String>(
                    suggestionsCallback: (search) {
                      if(search.length > 3) {
                        return _viewModel.fetchLocationSuggestions(search);  
                      }
                      return [];
                      // return _viewModel.fetchLocationSuggestions(search);
                    },
                    controller: _viewModel.locationController,
                    builder: (context, controller, focusNode) {
                      return CommonTextField(
                        padding: EdgeInsets.zero,
                        controller: controller,
                        focusNode: focusNode,
                        hintText: "Enter group location",
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
                        child: const Center(child: CircularProgressIndicator(color: primaryColor,)),
                      );
                    },
                    onSelected: (city) {
                      // _viewModel.locationController.text = city;
                      _viewModel.setLocation(city);
                      _viewModel.setLocationController(city);
                    },
                  ),
                  const SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Group Interests',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Visibility(
                        visible: interests.isNotEmpty,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              interests.clear();
                            });
                          }, 
                          child: const Text("Clear"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // CommonTextField(
                  //   padding: EdgeInsets.zero,
                  //   controller: _viewModel.interestsController,
                  //   hintText: "Enter group type",
                  // ),
                  GestureDetector(
                    onTap: () async {
                      FilterListDialog.display<Interest>(
                        context,
                        listData: _viewModel.getInterestsResponseModel.data ?? [],
                        selectedListData: interests,
                        choiceChipLabel: (p0) => p0?.name ?? "",
                        validateSelectedItem: (list, item) => list!.contains(item),
                        onItemSearch: (item, query) {
                          return (item.name ?? "").toLowerCase().contains(query.toLowerCase());
                        },                  
                        onApplyButtonClick: (list) {
                          setState(() {
                            interests = list ?? [];
                          });
                          Navigator.pop(context);
                        },
                        headerCloseIcon: const Padding(
                          padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
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
                              primaryButtonTextStyle: TextStyle(color: primaryColor),
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
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [CustomBoxShadow()],
                      ),
                      child: interests.isEmpty
                        ? const Text("Select your group interests")
                        : Wrap(
                            children: [
                              for(int i = 0; i < interests.length; i++) 
                                Container(
                                  margin: const EdgeInsets.only(right: 4),
                                  child: Chip(
                                    label: Text(interests[i].name ?? "", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: kWhite),),
                                    backgroundColor: primaryColor,
                                  ),
                                ),
                            ],
                          ),
                    ),
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    'Privacy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _viewModel.setPrivacyIndex(0);
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: _viewModel.privacyIndex == 0
                                    ? primaryColor
                                    : Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _viewModel.privacyIndex == 0
                                      ? primaryColor
                                      : Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              'Public',
                              style: TextStyle(
                                color: Color(0xFF5D5D5D),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          _viewModel.setPrivacyIndex(1);
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: _viewModel.privacyIndex == 1
                                    ? primaryColor
                                    : Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _viewModel.privacyIndex == 1
                                      ? primaryColor
                                      : Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              'Private',
                              style: TextStyle(
                                color: Color(0xFF5D5D5D),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          _viewModel.setPrivacyIndex(2);
                          Logger.printError("index ----> ${_viewModel.privacyIndex}");
                          Logger.printError(ref.read(selfDataProvider).singleUserResponseModel.data?.accountId ?? '');
                          setState(() {
                            // isCardAdded = true;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: _viewModel.privacyIndex == 2
                                    ? primaryColor
                                    : Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _viewModel.privacyIndex == 2
                                      ? primaryColor
                                      : Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              'Premium',
                              style: TextStyle(
                                color: Color(0xFF5D5D5D),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: _viewModel.privacyIndex == 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Subscription',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '1 Month',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  CommonTextField(
                                      padding: EdgeInsets.zero,
                                      hintText: "Price(\$)",
                                      keyboardType: TextInputType.number,
                                      controller: _viewModel.oneMonthSubController,
                                      validator: (p0) {
                                        if(p0?.isEmpty ?? true) {
                                          showCustomSnackBar(context, text: "You have to add 1 month subscription amount", color: Colors.red);
                                        }
                                        return null;
                                      },
                                  ),
                                ],
                              ),
                            ),
                            gapW16,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '6 Month',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  CommonTextField(
                                      padding: EdgeInsets.zero,
                                      hintText: "Price(\$)",
                                      keyboardType: TextInputType.number,
                                      controller: _viewModel.sixMonthSubController,
                                      validator: (p0) {
                                        if(p0?.isEmpty ?? true) {
                                          showCustomSnackBar(context, text: "You have to add 6 months subscription amount", color: Colors.red);
                                        }
                                        return null;
                                      },
                                  ),
                                ],
                              ),
                            ),
                            gapW16,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '12 Month',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  CommonTextField(
                                      padding: EdgeInsets.zero,
                                      hintText: "Price(\$)",
                                      keyboardType: TextInputType.number,
                                      controller: _viewModel.twelveMonthSubController,
                                      validator: (p0) {
                                        if(p0?.isEmpty ?? true) {
                                          showCustomSnackBar(context, text: "You have to add 12 months subscription amount", color: Colors.red);
                                        }
                                        return null;
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        gapH20,
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           const Text(
                        //             'Promo Code',
                        //             style: TextStyle(
                        //               color: Colors.black,
                        //               fontSize: 14,
                        //               fontWeight: FontWeight.w400,
                        //             ),
                        //           ),
                        //           const SizedBox(height: 10),
                        //           CommonTextField(
                        //               padding: EdgeInsets.zero,
                        //               hintText: "Enter promo code",
                        //               isCapital: true,
                        //               controller: _viewModel.promoCodeController,
                        //               validator: (p0) {
                        //                 if(p0?.isEmpty ?? true) {
                        //                   showCustomSnackBar(context, text: "You have to add atleast one promo code", color: Colors.red);
                        //                 }
                        //                 return null;
                        //               },
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     gapW16,
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           const Text(
                        //             'Discount (%)',
                        //             style: TextStyle(
                        //               color: Colors.black,
                        //               fontSize: 14,
                        //               fontWeight: FontWeight.w400,
                        //             ),
                        //           ),
                        //           const SizedBox(height: 10),
                        //           CommonTextField(
                        //               padding: EdgeInsets.zero,
                        //               hintText: "Enter Discount",
                        //               keyboardType: TextInputType.number,
                        //               controller: _viewModel.discountController,
                        //               validator: (p0) {
                        //                 if(p0?.isEmpty ?? true) {
                        //                   showCustomSnackBar(context, text: "Discount cannot be empty", color: Colors.red);
                        //                 }
                        //                 return null;
                        //               },
                        //             ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "Cancel",
                          onTap: () {
                            context.pop();
                          },
                          showShadow: false,
                          textColor: const Color(0xFF5D5D5D),
                          color: const Color(0xFFC4C4C4),
                        ),
                      ),
                      gapW16,
                      Expanded(
                        child: CustomButton(
                          text:  _viewModel.privacyIndex < 2 
                              ? "Create" 
                              : (ref.watch(selfDataProvider).singleUserResponseModel.data?.accountId == null || ref.watch(selfDataProvider).singleUserResponseModel.data?.accountId == '')  
                                || (ref.watch(selfDataProvider).singleUserResponseModel.data?.isKyc == null || ref.watch(selfDataProvider).singleUserResponseModel.data?.isKyc == false)
                                  ? "Add Bank Account" 
                                  : "Create",
                          isBusy: _viewModel.loading,
                          onTap: () async {
              
                            // String rulesText = await controller.getText();
                            final delta = quillController.document.toDelta().toJson();
      
      
                            final html = QuillDeltaToHtmlConverter(List.castFrom(delta));
      
                            // quillController.clear();
                            Logger.printInfo(html.convert());
              
                            if(_formKey.currentState!.validate()) {
                              // Logger.printError(ref.watch(selfDataProvider).getCardListModel.data?.data?.length.toString() ?? '');
                              if( _viewModel.privacyIndex != 2){
                                if(!_viewModel.profilePhotoLoading && !_viewModel.coverPhotoLoading) {
                                  // print(interests.toList());
                                  final CreateGroupRequestModel createGroupRequestModel = CreateGroupRequestModel(
                                    // groupPhoto: _viewModel.profilePhoto!.path, 
                                    groupPhoto: _viewModel.profilePhotoUrl,
                                    // coverPhoto: _viewModel.coverImage!.path, 
                                    coverPhoto: _viewModel.coverPhotoUrl,
                                    name: _viewModel.nameController.text, 
                                    description: _viewModel.descriptionController.text, 
                                    location: _viewModel.locationController.text, 
                                    interests: interests, 
                                    privacy: _viewModel.privacy[_viewModel.privacyIndex],
                                    rules: html.convert(),
                                    followers: [
                                      Follower(userId: AppConstants.userId, status: "accepted"),
                                    ],
                                  );
                
                                  Logger.printSuccess(createGroupRequestModel.toString());
                                  _viewModel.createGroup(context, createGroupRequestModel);
                                }
                              } else {
                                if((ref.watch(selfDataProvider).singleUserResponseModel.data?.accountId == null || ref.watch(selfDataProvider).singleUserResponseModel.data?.accountId == '' ) 
                                || (ref.watch(selfDataProvider).singleUserResponseModel.data?.isKyc == null || ref.watch(selfDataProvider).singleUserResponseModel.data?.isKyc == false)) {
                                  // print(interests.toList());
                                  if(_viewModel.oneMonthSubController.text.isEmpty || _viewModel.sixMonthSubController.text.isEmpty || _viewModel.twelveMonthSubController.text.isEmpty) {
                                    showCustomSnackBar(context, text: "Please add your subscription amounts for all the plans", color: Colors.red);
                                  } else {
                                    await _viewModel.addBank(
                                      context, AddBankRequestModel(
                                        email: ref.watch(selfDataProvider).singleUserResponseModel.data?.email,
                                        name: "${ref.watch(selfDataProvider).singleUserResponseModel.data?.firstName} ${ref.watch(selfDataProvider).singleUserResponseModel.data?.lastName}",
                                      ),
                                    ).then((value){
                                      Future.delayed(const Duration(seconds: 7), () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const StripeAccountWebView()));
                                      });
        
                                    });
                                  }
                                  
                                } else {
                                  if (!_viewModel.profilePhotoLoading && !_viewModel.coverPhotoLoading) {
                                    final CreatePremiumGroupRequestModel createPremiumGroupRequestModel = CreatePremiumGroupRequestModel(
                                    // groupPhoto: _viewModel.profilePhoto!.path, 
                                      groupPhoto: _viewModel.profilePhotoUrl,
                                      // coverPhoto: _viewModel.coverImage!.path, 
                                      coverPhoto: _viewModel.coverPhotoUrl,
                                      name: _viewModel.nameController.text, 
                                      description: _viewModel.descriptionController.text, 
                                      location: _viewModel.locationController.text, 
                                      interests: interests, 
                                      privacy: _viewModel.privacy[_viewModel.privacyIndex],
                                      rules: html.convert(),
                                      followers: [
                                        Follower(userId: AppConstants.userId, status: "accepted"),
                                      ],
                                      // discount: int.parse(_viewModel.discountController.text),
                                      one_month_subscription_price: int.parse(_viewModel.oneMonthSubController.text),
                                      six_month_subscription_price: int.parse(_viewModel.sixMonthSubController.text),
                                      twelve_month_subscription_price: int.parse(_viewModel.twelveMonthSubController.text),
                                      // promoCode: _viewModel.promoCodeController.text,
                                    );
                  
                                    Logger.printSuccess(createPremiumGroupRequestModel.toString());
                                    await _viewModel.createPremiumGroup(context, createPremiumGroupRequestModel).then((value) {
                                      // _viewModel.createGroupPlan(
                                      //   PlanCreationRequestModel(
                                      //     groupId: _viewModel.createGroupResponseModel.data?.id ?? "",
                                      //     monthlyPlanAmount: int.parse(_viewModel.oneMonthSubController.text),
                                      //     quartPlanAmount: int.parse(_viewModel.sixMonthSubController.text),
                                      //     yearlyPlanAmount: int.parse(_viewModel.twelveMonthSubController.text),
                                      //     productName: "${_viewModel.nameController.text} group plan creation",
                                      //   ),
                                      // );
                                    });
                                  }
                                  
                                  
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCardDetailsView()));
                                }
                              } 
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  gapH40,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
