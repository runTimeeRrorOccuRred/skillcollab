// ignore_for_file: use_build_context_synchronously, unused_local_variable, library_prefixes, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:html/dom.dart' as htmlDom;
import 'package:html/parser.dart' as htmlparse;
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/data/remote/tutorial/updateTutorial/models/update_tutorial_model.dart' as ut;
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/createTutorial/color_picker_bottom_sheet.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/updateTutorial/update_tutorial_view_model.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class UpdateTutorialView extends ConsumerStatefulWidget {
  final TutorialData tutorialData;
  const UpdateTutorialView({super.key, required this.tutorialData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UpdateTutorialViewState();
}

class _UpdateTutorialViewState extends ConsumerState<UpdateTutorialView> with BaseScreenView {

  late UpdateTutorialViewModel _viewModel;
  late QuillController quillController;

  List<Map<String, dynamic>> mediaList = [
    {"icon": "assets/icons/photoVideo.png", "title": "Photo"},
    {"icon": "assets/icons/video-camera.png", "title": "Video"},
    {"icon": "assets/icons/checkin.png", "title": "Check in"},
    {"icon": "assets/icons/bgColor.png", "title": "Background color"},
    {"icon": "assets/icons/gif.png", "title": "GIF"},
  ];
  bool isBottomSheet = false;
  String groupid = "";

  final FocusNode _textFormFieldFocusNode = FocusNode();
  final FocusNode _quillEditorFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _viewModel = ref.read(updateTutorialViewModel);
      _viewModel.titleController.text = widget.tutorialData.data?.title ?? "";
      _viewModel.setTutorialImageUrl(widget.tutorialData.tutorialImage ?? "");
      
      Future.delayed(const Duration(milliseconds: 500), () async {
        await _viewModel.controller.setText((widget.tutorialData.data?.desc ?? "").replaceAll('&lt;', '<'));
      });
    });

    final delta = HtmlToDeltaConverter.htmlToDelta((widget.tutorialData.data?.desc ?? "").replaceAll('&lt;', '<'));

    Logger.printError(delta.toString());
    Logger.printError((widget.tutorialData.data?.desc ?? "").replaceAll('&lt;', '<'));

    quillController = QuillController(
      document: Document.fromDelta(delta),
      selection: const TextSelection.collapsed(offset: 0),
    );
    Logger.printInfo(widget.tutorialData.toString());
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(updateTutorialViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop)  {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        }else{
          WidgetsBinding.instance.addPostFrameCallback((_) {
  Navigator.of(context).pop();
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
                }else{
                  WidgetsBinding.instance.addPostFrameCallback((_) {
  Navigator.of(context).pop();
});
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
            'Update Tutorial',
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
                  // Logger.printSuccess(htmlToDelta(widget.tutorialData.data?.desc ?? '').toString());
                  // String data = await _viewModel.controller.getText();
                  final delta = quillController.document.toDelta().toJson();
      
      
                  final html = QuillDeltaToHtmlConverter(List.castFrom(delta));
                  // Logger.printInfo(data);
                  final ut.UpdateTutorialRequestModel updateTutorialRequestModel = ut.UpdateTutorialRequestModel(
                    data: ut.Data(title: _viewModel.titleController.text, desc: html.convert()),
                    tutorialImage: _viewModel.tutorialImageUrl,
                  );
                  Logger.printSuccess(updateTutorialRequestModel.toString());
      
                  _viewModel.updateTutorial(context, updateTutorialRequestModel, widget.tutorialData.id ?? "");
                },
                color: primaryColor,
                child: _viewModel.loading
                ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)),)
                : const Text("Update", style: TextStyle(color: kWhite),),
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
                    Container(
                      child: ((ref.read(userProfileViewModel).singleUserResponseModel.data?.profilePhoto ?? "") == "") || !(ref.read(userProfileViewModel).singleUserResponseModel.data?.profilePhoto?.contains("https://skillcollab") ?? true) 
                        ? SvgPicture.asset('assets/icons/account-pic.svg')
                        : CircleAvatar(backgroundImage: NetworkImage(ref.read(userProfileViewModel).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,),),
                    ),
                    gapW10,
                    Text(
                      "${ref.read(userProfileViewModel).singleUserResponseModel.data?.firstName ?? ""} ${ref.read(userProfileViewModel).singleUserResponseModel.data?.lastName ?? ""}", 
                      style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
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
                  color: _viewModel.colorcode.isEmpty ? kWhite : Color(int.parse(_viewModel.colorcode)),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [CustomBoxShadow()],
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _viewModel.titleController,
                      cursorColor: primaryColor,
                      // onTapOutside: (event) {
                      //   FocusNode().unfocus();
                      // },
                      // keyboardType: TextInputType.text,
                      focusNode: _textFormFieldFocusNode, 
                      maxLines: 2,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kBlack, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Title",
                        hintStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kGrey, fontWeight: FontWeight.w600),
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
                                      child: Image.file(_viewModel.tutorialImage, fit: BoxFit.cover,),
                                    ),
                                    Container(
                                      // height: 200,
                                      width: size.width,
                                      color: Colors.black54,
                                    ),
                                    const CircularProgressIndicator(color: primaryColor,),
                                  ],
                                )
                              : Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    SizedBox(
                                      // height: 200,
                                      width: size.width,
                                      child: Image.network(_viewModel.tutorialImageUrl, fit: BoxFit.cover,),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          _viewModel.removeTutorialImage();
                                        },
                                        visualDensity: VisualDensity.compact,
                                        icon: const Icon(Icons.close_rounded, color: Colors.red, weight: 50),
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
                  color: _viewModel.colorcode.isEmpty ? kWhite : Color(int.parse(_viewModel.colorcode)),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [CustomBoxShadow()],
                ),
                child: Column(
                  children: [
                      QuillProvider( // Wrap your editor and toolbar with QuillProvider
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
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: size.height / 3,
                                child: QuillEditor.basic(
                                  focusNode: _quillEditorFocusNode,
                                  
                                  // readOnly: false, // true for view only mode
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              // Container(
              //   width: size.width,
              //   margin: const EdgeInsets.symmetric(horizontal: 16),
              //   padding: const EdgeInsets.symmetric(vertical: 10),
              //   decoration: BoxDecoration(
              //     color: _viewModel.colorcode.isEmpty ? kWhite : Color(int.parse(_viewModel.colorcode)),
              //     borderRadius: BorderRadius.circular(12),
              //     boxShadow: [CustomBoxShadow()],
              //   ),
              //   child: Column(
              //     children: [
      
              //         ToolBar.scroll(
              //           activeIconColor: Colors.black38,
              //           toolBarColor: primaryColor,
              //           iconColor: Colors.white,
              //           //padding: const EdgeInsets.all(8),
              //           iconSize: 20,
              //           controller: _viewModel.controller,
              //         ),
                      
              //         SizedBox(
                      
              //         height: 200,
              //         width: size.width,
              //         child: ListView(
              //           children: [QuillHtmlEditor(
              //           inputAction: InputAction.send,
              //           autoFocus: true,
              //           hintText: 'Enter Description',
              //           controller: _viewModel.controller,
              //           // text: widget.tutorialData.data?.desc ?? "",
              //           minHeight: 500,
              //           textStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kBlack, fontWeight: FontWeight.w600),
              //           hintTextStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kGrey, fontWeight: FontWeight.w600),
              //           padding: const EdgeInsets.only(left: 5, top: 5),
              //           // backgroundColor: _backgroundColor,
              //           loadingBuilder: (context) {
              //               return const Center(
              //               child: CircularProgressIndicator(
              //               strokeWidth: 0.4,
              //               ));},
              //                             ),
              //     ],),
              //       ),
              //     ],
              //   ),
              // ),
              
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
                              if(index == 0) {
                                await openPickImageModalSheet(context).then((value) {
                                  if(value != null) {
                                    _viewModel.setTutorialImage(value);
                                    _viewModel.uploadImage(false, value.path, value.path);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text("Error in selecting image")),
                                    );
                                  }
                                });
                              } else if(index == 1) {
                                await openPickVideoModalSheet(context);
                              } else if(index == 3){
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
                                    builder: (context) => const TutorialColorPickerBottomSheet(),
                                    );
                                  } 
                            },
                            leading: Image.asset(mediaList[index]['icon'], height: 30, width: 30,),
                            title: Text(mediaList[index]['title'], style: const TextStyle(color: kGrey, fontWeight: FontWeight.w700),),
                          ),
                        ),
                        gapH4,
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