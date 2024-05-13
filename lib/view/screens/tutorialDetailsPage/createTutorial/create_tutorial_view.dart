// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:quill_html_converter/quill_html_converter.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/tutorial/createTutorial/models/create_tutorial_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/createTutorial/color_picker_bottom_sheet.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/createTutorial/create_tutorial_view_model.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class CreateTutorialView extends ConsumerStatefulWidget {
  final String groupId;
  final String privacy;
  const CreateTutorialView(
      {super.key, required this.groupId, required this.privacy,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateTutorialViewState();
}

class _CreateTutorialViewState extends ConsumerState<CreateTutorialView>
    with BaseScreenView {
  late CreateTutorialViewModel _viewModel;
  final FocusNode _textFormFieldFocusNode = FocusNode();
  final FocusNode _quillEditorFocusNode = FocusNode();
  QuillController quillController = QuillController.basic();
  ScrollController scrollController = ScrollController();

  List<Map<String, dynamic>> mediaList = [
    {"icon": "assets/icons/photoVideo.png", "title": "Photo"},
    // {"icon": "assets/icons/video-camera.png", "title": "Video"},
    // {"icon": "assets/icons/feelingActivity.png", "title": "Feeling/activity"},
    // {"icon": "assets/icons/checkin.png", "title": "Check in"},
    // {"icon": "assets/icons/liveVideo.png", "title": "Live video"},
    {"icon": "assets/icons/bgColor.png", "title": "Background color"},
    // {"icon": "assets/icons/camera.png", "title": "Camera"},
    // {"icon": "assets/icons/gif.png", "title": "GIF"},
    // {"icon": "assets/icons/music.png", "title": "Music"},
  ];
  bool isBottomSheet = false;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(createTutorialViewModel);
    Logger.printError(
        "GROUP ID =====> ${widget.groupId} PRIVACY =====> ${widget.privacy}",);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textFormFieldFocusNode.dispose();
    _quillEditorFocusNode.dispose();
    quillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(createTutorialViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        } else {
          Future.delayed(Duration.zero, () {
            Navigator.pop(context);
          });
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                } else {
                  Navigator.of(context).pop();
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
          title: const Text(
            'Create Tutorial',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              child: MaterialButton(
                onPressed: () async {
                  // String data = await _viewModel.controller.getText();
                  final delta = quillController.document.toDelta().toJson();
                  Logger.printInfo(delta.toString());

                  final html = QuillDeltaToHtmlConverter(List.castFrom(delta));

                  // quillController.clear();
                  final String htmlConverted = html.convert();
                  Logger.printInfo(htmlConverted);

                  final CreateTutorialRequestModel createTutorialRequestModel =
                      CreateTutorialRequestModel(
                    groupId: widget.groupId,
                    tutorialImage: _viewModel.tutorialImageUrl,
                    bgColor: _viewModel.colorcode.isEmpty
                        ? ""
                        : _viewModel.colorcode,
                    privacy: widget.privacy,
                    data: Data(
                      title: _viewModel.titleController.text,
                      desc: html.convert(),
                    ),
                  );
                  Logger.printWarning(createTutorialRequestModel.toString());
                  _viewModel.createTutorials(
                      context, createTutorialRequestModel,);
                },
                color: primaryColor,
                child: _viewModel.loading
                    ? const Center(
                        child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: kWhite,
                            ),),
                      )
                    : const Text(
                        "Post",
                        style: TextStyle(color: kWhite),
                      ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              gapH32,
              Container(
                width: size.width,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [CustomBoxShadow()],
                ),
                child: Row(
                  children: [
                    gapW10,
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: ((ref
                                          .read(selfDataProvider)
                                          .singleUserResponseModel
                                          .data
                                          ?.profilePhoto ??
                                      "") ==
                                  "") ||
                              !(ref
                                      .read(selfDataProvider)
                                      .singleUserResponseModel
                                      .data
                                      ?.profilePhoto
                                      ?.contains("https://skillcollab") ??
                                  true)
                          ? SvgPicture.asset('assets/icons/account-pic.svg')
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,
                                fit: BoxFit.cover,
                              ),
                            ),
                      // CircleAvatar(backgroundImage: NetworkImage(ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,),),
                    ),
                    gapW10,
                    Text(
                      "${ref.read(selfDataProvider).singleUserResponseModel.data?.firstName ?? ""} ${ref.read(selfDataProvider).singleUserResponseModel.data?.lastName ?? ""}",
                      style: const TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w700,),
                    ),
                  ],
                ),
              ),
              gapH32,
              Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: _viewModel.colorcode.isEmpty
                      ? kWhite
                      : Color(int.parse(_viewModel.colorcode)),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [CustomBoxShadow()],
                ),
                child: Column(
                  children: [
                    TextFormField(
                      focusNode: _textFormFieldFocusNode,
                      controller: _viewModel.titleController,
                      cursorColor: primaryColor,
                      textCapitalization: TextCapitalization.sentences,
                      onTapOutside: (event) {
                        if (MediaQuery.of(context).viewInsets.bottom > 0) {
                          SystemChannels.textInput
                              .invokeMethod('TextInput.hide');
                        }
                      },
                      // keyboardType: TextInputType.text,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 18,
                          color: _viewModel.colorcode == '0xff54b3bf' ||
                                  _viewModel.colorcode == '0xff59cc66' ||
                                  _viewModel.colorcode == '0xffff6666'
                              ? kWhite
                              : kBlack,
                          fontWeight: FontWeight.w600,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Title",
                        hintStyle: TextStyle(
                            fontSize: 18,
                            color: _viewModel.colorcode == '0xff54b3bf' ||
                                    _viewModel.colorcode == '0xff59cc66' ||
                                    _viewModel.colorcode == '0xffff6666'
                                ? kWhite
                                : kGrey,
                            fontWeight: FontWeight.w600,),
                      ),
                    ),
                    Visibility(
                      visible: _viewModel.tutorialImage.path != "null",
                      child: SizedBox(
                        // height: 200,
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: _viewModel.tutorialImageLoading
                              ? Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      // height: 200,
                                      width: size.width,
                                      child: Image.file(
                                        _viewModel.tutorialImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // height: 200,
                                      width: size.width,
                                      color: Colors.black54,
                                    ),
                                    const CircularProgressIndicator(
                                      color: primaryColor,
                                    ),
                                  ],
                                )
                              : Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    SizedBox(
                                      // height: 200,
                                      width: size.width,
                                      child: Image.network(
                                        _viewModel.tutorialImageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          _viewModel.removeTutorialImage();
                                        },
                                        visualDensity: VisualDensity.compact,
                                        icon: const Icon(Icons.close_rounded,
                                            color: Colors.red, weight: 50,),
                                        highlightColor: kWhite,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              gapH32,
              Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: _viewModel.colorcode.isEmpty
                      ? kWhite
                      : Color(int.parse(_viewModel.colorcode)),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [CustomBoxShadow()],
                ),
                child: Column(
                  children: [
                    QuillProvider(
                      // Wrap your editor and toolbar with QuillProvider
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
                              dialogTheme: QuillDialogTheme(
                                  dialogBackgroundColor: primaryColor,),

                              // color: Colors.red,
                              // sectionDividerColor: Colors.amber
                              // buttonOptions: QuillToolbarButtonOptions(customButtons: QuillToolbarCustomButtonOptions(iconTheme: QuillIconTheme(iconSelectedColor: primaryColor,iconSelectedFillColor: primaryColor)))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: size.height / 2.2,
                              child: QuillEditor.basic(
                                  focusNode: _quillEditorFocusNode,
                                  // readOnly: false, // true for view only mode
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //     SizedBox(

                    //     height: 200,
                    //     width: size.width,
                    //     child: ListView(
                    //       children: [QuillHtmlEditor(

                    //       inputAction: InputAction.send,
                    //       autoFocus: true,
                    //       hintText: 'Enter Description',
                    //       controller: _viewModel.controller,
                    //       minHeight: 500,
                    //       textStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kBlack, fontWeight: FontWeight.w600),
                    //       hintTextStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kGrey, fontWeight: FontWeight.w600),
                    //       padding: const EdgeInsets.only(left: 5, top: 5),
                    //       // backgroundColor: _backgroundColor,
                    //       loadingBuilder: (context) {
                    //           return const Center(
                    //           child: CircularProgressIndicator(
                    //           strokeWidth: 0.4,
                    //           ));},
                    //                         ),
                    // ],),
                    //   ),
                  ],
                ),
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: mediaList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [CustomBoxShadow()],
                          ),
                          child: ListTile(
                            onTap: () async {
                              if (index == 0) {
                                await openPickImageModalSheet(context)
                                    .then((value) {
                                  if (value != null) {
                                    _viewModel.setTutorialImage(value);
                                    _viewModel.uploadImage(
                                        false, value.path, value.path,);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text("Error in selecting image"),),
                                    );
                                  }
                                });
                              } else if (index == -1) {
                                // await openPickVideoModalSheet(context);
                              } else if (index == 2) {
                                setState(() {
                                  isBottomSheet = true;
                                });
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  builder: (context) =>
                                      const TutorialColorPickerBottomSheet(),
                                );
                              }
                            },
                            leading: Image.asset(
                              mediaList[index]['icon'],
                              height: 30,
                              width: 30,
                            ),
                            title: Text(
                              mediaList[index]['title'],
                              style: const TextStyle(
                                  color: kGrey, fontWeight: FontWeight.w700,),
                            ),
                          ),
                        ),
                        gapH10,
                      ],
                    );
                  },
                ),
              ),
            ],
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
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
