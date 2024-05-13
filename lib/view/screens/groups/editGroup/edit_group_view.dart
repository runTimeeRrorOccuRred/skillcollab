// ignore_for_file: division_optimization, unused_local_variable

import 'package:filter_list/filter_list.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:html/dom.dart' as htmlDom;
import 'package:html/parser.dart' as htmlparse;
import 'package:quill_html_editor/quill_html_editor.dart';
import 'package:skill_colab/data/remote/groups/editGroup/models/edit_group_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/edit_group_plan_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/editGroup/edit_group_view_model.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';


class EditGroupView extends ConsumerStatefulWidget {
  final GroupDatum groupDetails;
  const EditGroupView({super.key, required this.groupDetails});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditGroupViewState();
}

class _EditGroupViewState extends ConsumerState<EditGroupView> with BaseScreenView {

  late QuillController quillController;

  late TextEditingController oneMonthSubController;
  late TextEditingController sixMonthSubController;
  late TextEditingController twelveMonthSubController;
  late TextEditingController promoCodeController;
  late TextEditingController discountController;
  final FocusNode _quillEditorFocusNode = FocusNode();
  final QuillEditorController controller = QuillEditorController();


  late EditGroupViewModel _viewModel;
  List<Interest> interests = [];
  bool _editSubSettings = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(editGroupViewModel);
      _viewModel.attachView(this);
      _viewModel.getInterests(context);
      _viewModel.setGroupData(widget.groupDetails);
      _viewModel.setPrivacyIndex(widget.groupDetails.privacy == 'public' ? 0 : widget.groupDetails.privacy == 'private' ? 1 : 2);
      setState(() {
        interests = widget.groupDetails.interests ?? [];
      });

      oneMonthSubController = TextEditingController(text: ((ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[2].unitAmount ?? 0) / 100).toInt().toString());
      sixMonthSubController = TextEditingController(text: ((ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[1].unitAmount ?? 0) / 100).toInt().toString());
      twelveMonthSubController = TextEditingController(text: ((ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[0].unitAmount ?? 0) / 100).toInt().toString());
    });
    final delta = HtmlToDeltaConverter.htmlToDelta((widget.groupDetails.rules ?? "").replaceAll('&lt;', '<'));

    Logger.printError(delta.toString());
    Logger.printError((widget.groupDetails.rules ?? "").replaceAll('&lt;', '<'));

    quillController = QuillController(
      document: Document.fromDelta(delta),
      selection: const TextSelection.collapsed(offset: 0),
    );
    Logger.printInfo(widget.groupDetails.toString());    
    // promoCodeController = TextEditingController(text: )
    Future.delayed(const Duration(seconds: 1), () async {
      await controller.setText((widget.groupDetails.rules ?? "").replaceAll("&lt;", "<"));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(editGroupViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{
            context.pop();
          }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          centerTitle: false,
          title: const Text("Edit profile", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600),),
          elevation: 0,
          leading: InkWell(
            onTap: () {
              if (MediaQuery.of(context).viewInsets.bottom > 0) {
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }else{
                Navigator.of(context).pop();
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
        body: SingleChildScrollView(
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
                      onLongPress: () {
                        Logger.printInfo(_viewModel.coverPhotoUrl);
                      },
                      onTap: () async {
                        // final File? file = 
                        await openPickImageModalSheet(context).then((value) {
                          if(value != null) {
                            _viewModel.setCoverImage(value);
                            _viewModel.uploadImage(true, value.path, value.path);
                          } else {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Error in selecting image")),
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
                                image: NetworkImage(_viewModel.coverPhotoUrl),
                                fit: BoxFit.cover,
                              ),
                            ),  
                          )
                        : _viewModel.coverImage!.path == "null" || _viewModel.coverImage == null
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
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Error in selecting image")),
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
                                image: NetworkImage(_viewModel.profilePhotoUrl),
                                fit: BoxFit.cover,
                              ),
                            ),  
                          )
                        : _viewModel.profilePhoto!.path == "null" || _viewModel.profilePhoto == null
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
                  hintText: "Group name",
                ),
                gapH10,
                const Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                CommonTextField(
                  padding: EdgeInsets.zero,
                  controller: _viewModel.descriptionController,
                  hintText: "group description",
                ),
                gapH10,
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
                          _viewModel.setLocationController("");
                        },
                        onTapOutside: (event) {                        
                        },
                        focusNode: focusNode,
                        controller: controller,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: const InputDecoration(
                          counterText: "",
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          hintText: "Group Location",
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
                      child: const Center(child: CircularProgressIndicator(color: primaryColor,)),
                    );
                  },
                  onSelected: (city) {
                    // _viewModel.locationController.text = city;
                    _viewModel.setLocation(city);
                    _viewModel.setLocationController(city);
                  },
                ),
                const SizedBox(height: 10),
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
                gapH20,
                Visibility(
                  visible: widget.groupDetails.rules != null,
                  child: const Text(
                      'Group Rules',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
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
                                showBackgroundColorButton: false,
                                showColorButton: false,
                                showLink: false,
                                showSearchButton: false,
                                showFontFamily: false,
                                showListCheck: false,
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
                                  focusNode: _quillEditorFocusNode,
                                  
                                  // readOnly: false, // true for view only mode
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                ),
      
                gapH20,
                const Text("Group Privacy"),
                gapH10,
      
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Colors.white,
                              title: const Text("Warning!", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text(
                                    "Are you sure you want to change your group privacy to public? If your group is Premium, you can't change it back to default if you change the privacy!",
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  gapH10,
                                  SizedBox(
                                    height: 40,
                                    child: MaterialButton(
                                      onPressed: () {
                                        _viewModel.setPrivacyIndex(0);
                                        Navigator.pop(context);
                                      },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      color: Colors.redAccent,
                                      child: const Text("Yes", style: TextStyle(color: kWhite),),
                                    ),
                                  ),
                                  gapH10,
                                  SizedBox(
                                    height: 40,
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      color: primaryColor,
                                      child: const Text("No", style: TextStyle(color: kWhite),),
                                    ),
                                  ),
                                  gapH10,
                                ],
                              ),
                            );
                          },
                        );
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
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Colors.white,
                              title: const Text("Warning!", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text(
                                    "Are you sure you want to change your group privacy to private? If your group is Premium, you can't change it back to default if you change the privacy!",
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  gapH10,
                                  SizedBox(
                                    height: 40,
                                    child: MaterialButton(
                                      onPressed: () {
                                        _viewModel.setPrivacyIndex(1);
                                        Navigator.pop(context);
                                      },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      color: Colors.redAccent,
                                      child: const Text("Yes", style: TextStyle(color: kWhite),),
                                    ),
                                  ),
                                  gapH10,
                                  SizedBox(
                                    height: 40,
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      color: primaryColor,
                                      child: const Text("No", style: TextStyle(color: kWhite),),
                                    ),
                                  ),
                                  gapH10,
                                ],
                              ),
                            );
                          },
                        );
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
                    Visibility(
                      visible: _viewModel.privacyIndex == 2,
                      child: InkWell(
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
                    ),
                  ],
                ),
      
                gapH20,
                Visibility(
                  visible: !_editSubSettings && widget.groupDetails.privacy == "premium",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context, 
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: kWhite,
                                title: const Text("Warning!", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w700),),
                                content: const Text("Are you sure you want to edit the subscription settings"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }, 
                                    child: const Text("No", style: TextStyle(color: Colors.redAccent),),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _editSubSettings = true;
                                      });
                                      Navigator.pop(context);
                                    }, 
                                    child: const Text("Yes", style: TextStyle(color: primaryColor),),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Text("Edit Subscription Settings", style: TextStyle(color: primaryColor),),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: widget.groupDetails.privacy == "premium" && _editSubSettings,
                  // visible: true,
                  child: Column(
                    children: [
                      gapH20,
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
                                    controller: oneMonthSubController,
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
                                    controller: sixMonthSubController,
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
                                    controller: twelveMonthSubController,
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
                      Visibility(
                        visible: _editSubSettings,
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: MaterialButton(
                            onPressed: () {
                              final EditGroupPlanRequestModel editGroupPlanRequestModel = EditGroupPlanRequestModel(
                                groupId: widget.groupDetails.id ?? "",
                                monthlyPlanAmount: int.parse(oneMonthSubController.text),
                                monthlyPlanId: ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[2].id ?? "",
                                quartPlanAmount: int.parse(sixMonthSubController.text),
                                quartPlanId: ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[1].id ?? "",
                                yearlyPlanAmount: int.parse(twelveMonthSubController.text),
                                yearlyPlanId: ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[0].id ?? "",
                                productId: ref.watch(premiumGroupProfileViewModel).getCustomerPlanResponseModel.data?.data?[0].product ?? "",
                              );
                              print(editGroupPlanRequestModel);
                              _viewModel.editGroupPlan(context, editGroupPlanRequestModel);
                            },
                            color: primaryColor,
                            child: _viewModel.editGroupPlanLoader 
                              ? const Center(child: SizedBox(height: 30, width: 30, child: CircularProgressIndicator(color: Colors.white,),),)
                              : const Text("Update Subscription Settings", style: TextStyle(color: kWhite),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                gapH60,
                
                gapH40,
              ],
            ),
          ),
        ),
      
        floatingActionButton: Row(
          children: [
            SizedBox(width: 25.w,),
            Expanded(
              child: SizedBox(
                height: 45,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: kGrey,
                  child: const Text("Cancel"),
                ),
              ),
            ),
            gapW10,
            Expanded(
              child: SizedBox(
                height: 45,
                child: CustomButton(
                  text: "Update",
                  color: _viewModel.coverPhotoLoading || _viewModel.profilePhotoLoading ? Colors.grey : primaryColor,
                  isBusy: _viewModel.loading,
                  onTap: () {
                    final delta = quillController.document.toDelta().toJson();
                    Logger.printError(delta.toString());
      
      
                    final html = QuillDeltaToHtmlConverter(List.castFrom(delta));
      
                    // quillController.clear();
                    Logger.printInfo(html.convert());
                    if(!_viewModel.coverPhotoLoading && !_viewModel.profilePhotoLoading) {
                      final EditGroupRequestModel editGroupRequestModel = EditGroupRequestModel(
                        coverPhoto: _viewModel.coverPhotoUrl,
                        groupPhoto: _viewModel.profilePhotoUrl,
                        description: _viewModel.descriptionController.text,
                        name: _viewModel.nameController.text,
                        location: _viewModel.locationController.text,
                        interests: interests,
                        privacy: _viewModel.privacyIndex == 0 ? 'public' : 'private',
                        discount: 0,
                        rules: html.convert(),
                        oneMonthSubscriptionPrice: "0",
                        sixMonthSubscriptionPrice: "0",
                        twelveMonthSubscriptionPrice: "0",
                        promoCode: "",
                      );
                      Logger.printWarning(editGroupRequestModel.toString());
                      _viewModel.editGroup(
                        context, 
                        editGroupRequestModel, 
                        widget.groupDetails.id ?? "",
                        _viewModel.privacyIndex == 0 ? 'privacy' : _viewModel.privacyIndex == 1 ? 'private' : 'premium',
                      );
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
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}


class HtmlToDeltaConverter {
  static const _COLOR_PATTERN = r'color: rgb\((\d+), (\d+), (\d+)\);';

  static Delta _parseInlineStyles(htmlDom.Element element) {
    var delta = Delta();

    for (final node in element.nodes) {
      final attributes = _parseElementStyles(element);

      if (element.localName == 'h1') {
        // Special handling for <h1>
        delta..insert(element.text, {'header': 1})..insert('\n', {}); // Correctly apply block-level attribute
      } else {
        // Handle other elements (inline styles, images, etc.)
        for (final node in element.nodes) {
          if (node is htmlDom.Text) {
            delta.insert(node.text, attributes);
          } else if (node is htmlDom.Element && node.localName == 'br') {
            delta.insert('\n');
          } else if (node is htmlDom.Element && node.localName == 'img') {
            final src = node.attributes['src'];
            if (src != null) {
              delta.insert({'image': src});
            }
          } else if (node is htmlDom.Element) {
            // Recursive call for nested elements
            delta = delta.concat(_parseInlineStyles(node));
          }
        }
      }

    return delta;

    }
    return delta;
  }

  static Delta _parseInline2Styles(htmlDom.Element element,) {
    var delta = Delta();

    for (final node in element.nodes) {
      final attributes = _parseElementStyles(element);

      if (element.localName == 'h1') {
        // Insert the text content of the <h1> element
        delta.insert(element.text);
        // Properly end the block with a newline and apply the header attribute
        delta.insert('\n', {'header': 1});
      }else if(element.localName == 'h2'){
        // Insert the text content of the <h1> element
        delta.insert(element.text);
        // Properly end the block with a newline and apply the header attribute
        delta.insert('\n', {'header': 2});
      } else if(element.localName == 'h3'){
        // Insert the text content of the <h1> element
        delta.insert(element.text);
        // Properly end the block with a newline and apply the header attribute
        delta.insert('\n', {'header': 3});
      }  else if(node is htmlDom.Element){
        delta = delta.concat(_parseInlineStyles(node));
      }
    }

    return delta;
  }
  static Delta _parseInline3Styles(htmlDom.Element element,) {
    var delta = Delta();

    for (final node in element.nodes) {
      // final attributes = _parseElementStyles(element);

      if (node is htmlDom.Element && node.localName == 'li') {
        final attributes = _parseListElementStyles(node);
        delta.insert(node.text);
        delta.insert('\n', attributes);
      } else if(node is htmlDom.Element){
        delta = delta.concat(_parseInlineStyles(node));
      }

    }

    return delta;
  }

  static Delta _parseInline4Styles(htmlDom.Element element,) {
    var delta = Delta();

    for (final node in element.nodes) {
      // final attributes = _parseElementStyles(element);

      if (node is htmlDom.Element && node.localName == 'li') {
        delta = delta.concat(_parseListItem(node));
      }

    }

    return delta;
  }

  static Map<String, dynamic> _parseListElementStyles(htmlDom.Element element) {
    final Map<String, dynamic> attributes = {};

    // Existing style parsing logic...
    
    // Check for list tags and apply list attributes
    if (element.localName == 'li') {
      final parent = element.parent;
      if (parent != null && parent.localName == 'ul') {
        attributes['list'] = 'bullet';
      } else if (parent != null && parent.localName == 'ol') {
        attributes['list'] = 'ordered';
      } 
      final checkbox = element.querySelector('input[type="checkbox"]');
      if (checkbox != null) {
          // If a checkbox is found, determine if it's checked
          final bool isChecked = checkbox.attributes.containsKey('checked');
          attributes['checked'] = isChecked; // Add 'checked' attribute to the list item
      }
    }

    return attributes;
  }

  static Delta _parseListItem(htmlDom.Element element) {
    final delta = Delta();
    bool isChecked = false;

    // Check if the list item contains an input element of type checkbox
    final inputElement = element.querySelector('input[type="checkbox"]');
    if (inputElement != null) {
      isChecked = inputElement.attributes.containsKey('checked');
    }

    // Now handle the text of the list item, assuming it follows the input checkbox
    final textContent = element.text.trim(); // .trim() to remove leading/trailing whitespaces
    // The attributes map could include other styling attributes as well, if needed
    final attributes = <String, dynamic>{};
    if (isChecked) {
      attributes['checked'] = true; // Custom attribute to represent checked state
    }
    // Assuming list items are always part of an unordered list in this example
    attributes['list'] = 'bullet';

    delta..insert(textContent)..insert('\n', attributes);

    return delta;
  }

  static Map<String, dynamic> _parseElementStyles(htmlDom.Element element) {
    final Map<String, dynamic> attributes = {};

    if (element.localName == 'strong') attributes['bold'] = true;
    if (element.localName == 'em') attributes['italic'] = true;
    if (element.localName == 'u') attributes['underline'] = true;
    if (element.localName == 'del') attributes['strike'] = true;
    if(element.localName == 'header') attributes['header'] = true;

    final style = element.attributes['style'];
    if (style != null) {
      final colorValue = _parseColorFromStyle(style);
      if (colorValue != null) attributes['color'] = colorValue;

      final bgColorValue = _parseBackgroundColorFromStyle(style);
      if (bgColorValue != null) attributes['background'] = bgColorValue;
    }

    return attributes;
  }

  static String? _parseColorFromStyle(String style) {
    if (RegExp(r'(^|\s)color:(\s|$)').hasMatch(style)) {
      return _parseRgbColorFromMatch(RegExp(_COLOR_PATTERN).firstMatch(style));
    }
    return null;
  }

  static String? _parseBackgroundColorFromStyle(String style) {
    if (RegExp(r'(^|\s)background-color:(\s|$)').hasMatch(style)) {
      return _parseRgbColorFromMatch(RegExp(_COLOR_PATTERN).firstMatch(style));
    }
    return null;
  }

  static String? _parseRgbColorFromMatch(RegExpMatch? colorMatch) {
    if (colorMatch != null) {
      try {
        final red = int.parse(colorMatch.group(1)!);
        final green = int.parse(colorMatch.group(2)!);
        final blue = int.parse(colorMatch.group(3)!);
        return '#${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}';
      } catch (e) {
        debugPrintStack(label: e.toString());
      }
    }
    return null;
  }
  static Delta htmlToDelta(String html) {
    final document = htmlparse.parse(html);
    var delta = Delta();

    for (final node in document.body?.nodes ?? []) {
      if (node is htmlDom.Element) {
        switch (node.localName) {
          case 'p':
            delta = delta.concat(_parseInlineStyles(node))..insert('\n');
            break;
          case 'br':
            delta.insert('\n');
            break;
          case 'h1':
            delta = delta.concat(_parseInline2Styles(node));
            // delta.insert('\n');
            break;
          case 'h2':
            delta = delta.concat(_parseInline2Styles(node));
            // delta.insert('\n');
            break;
          case 'h3':
            delta = delta.concat(_parseInline2Styles(node));
            break;
          case 'ol':
            delta = delta.concat(_parseInline3Styles(node));
            break;
          case 'ul':
            delta = delta.concat(_parseInline3Styles(node));
            break;
        }
      }
    }

    return html.isNotEmpty ? delta : Delta()..insert('\n');
  }
}