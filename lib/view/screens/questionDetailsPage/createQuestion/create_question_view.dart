import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/questions/createQuestions/models/create_question_model.dart';
import 'package:skill_colab/data/remote/questions/update_post/models/update_question_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
// import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/color_picker_bottom_sheet.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/create_question_view_model.dart';

class CreateQuestionView extends ConsumerStatefulWidget {
  final String groupId;
  final String privacy;
  final String questionId;
  final String answer;
  final String question;
  const CreateQuestionView({super.key, required this.groupId, required this.privacy, this.questionId = '', this.question = '', this.answer = ''});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateQuestionViewState();
}

class _CreateQuestionViewState extends ConsumerState<CreateQuestionView> with BaseScreenView {


  late CreateQuestionViewModel _viewModel;

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
    _viewModel = ref.read(createQuestionViewModel);
    _viewModel.answer(widget.answer);
    _viewModel.question(widget.question);
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(createQuestionViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{
            // context.pop();
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
          title: Text(
            widget.questionId == '' ? 'Update Question' : "Create Question",
            style: const TextStyle(
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
                  if(widget.questionId == ''){
                    final CreateQuestionRequestModel createQuestionRequestModel = CreateQuestionRequestModel(
                      groupId: widget.groupId,
                      questionImage: _viewModel.questionImageUrl,
                      bgColor: _viewModel.colorcode.isEmpty ? "" : _viewModel.colorcode,
                      privacy: widget.privacy,
                      data: Data(
                        answer: _viewModel.answerController.text,
                        question: _viewModel.questionController.text,
                      ),
                    );
      
                    Logger.printWarning(createQuestionRequestModel.toString());
                    _viewModel.createQuestions(context, createQuestionRequestModel);
                  } else{
                    final UpdateQuestionRequestModel updateQuestionRequestModel = UpdateQuestionRequestModel(
                      data: Data(
                        answer: _viewModel.answerController.text,
                        question: _viewModel.questionController.text,
                      ),
                    );
                    Logger.printSuccess(updateQuestionRequestModel.toString());
                    try {
                      await _viewModel.updateQuestion(context, updateQuestionRequestModel, widget.questionId).then((value) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              backgroundColor: kWhite,
                              title: const Text("Success", style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold),),
                              content: const Text("Post updated successfully ", style: TextStyle(color: primaryColor),),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                  }, 
                                  child: const Text("Ok", style: TextStyle(color: primaryColor),),
                                ),
                              ],
                            );
                          },
                        );
                      });
                    } catch(e) {
                      // Logger.printError(e.toString());
                      showCustomSnackBar(context, text: e.toString(), color: Colors.red);
                    }
                  }
                },
                color: primaryColor,
                child: _viewModel.loading
                  ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)),)
                  : const Text("Post", style: TextStyle(color: kWhite),),
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
                      child: ((ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? "") == "") || !(ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.contains("https://skillcollab") ?? true) 
                        ? SvgPicture.asset('assets/icons/account-pic.svg')
                        : CircleAvatar(backgroundImage: NetworkImage(ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink,),),
                    ),
                    gapW10,
                    Text(
                      "${ref.read(selfDataProvider).singleUserResponseModel.data?.firstName ?? ""} ${ref.read(selfDataProvider).singleUserResponseModel.data?.lastName ?? ""}", 
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
                      controller: _viewModel.questionController,
                      cursorColor: primaryColor,
                      textCapitalization: TextCapitalization.sentences,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus!.unfocus();
                      },
                      // keyboardType: TextInputType.text,
                      maxLines: 4,
                      style: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kBlack, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Ask a Question...",
                        hintStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kGrey, fontWeight: FontWeight.w600),
                      ),
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
                      controller: _viewModel.answerController,
                      cursorColor: primaryColor,
                      textCapitalization: TextCapitalization.sentences,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus!.unfocus();
                      },
                      // keyboardType: TextInputType.text,
                      maxLines: 4,
                      style: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kBlack, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Write Details...",
                        hintStyle: TextStyle(fontSize: 18, color: _viewModel.colorcode == '0xff54b3bf' || _viewModel.colorcode == '0xff59cc66' || _viewModel.colorcode == '0xffff6666' ? kWhite : kGrey, fontWeight: FontWeight.w600),
                      ),
                    ),
                     Visibility(
                      visible: _viewModel.questionImage.path != "null",
                      child: SizedBox(
                        // height: 200,
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: _viewModel.questionImageLoading
                              ? Stack(
                                alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      // height: 200,
                                      width: size.width,
                                      child: Image.file(_viewModel.questionImage, fit: BoxFit.cover,),
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
                                      child: Image.network( _viewModel.questionImageUrl, fit: BoxFit.cover,),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          _viewModel.removeQuestionImage();
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

              Visibility(
                visible: MediaQuery.of(context).viewInsets.bottom > 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          FocusManager.instance.primaryFocus!.unfocus();
                        }, 
                        child: const Text("Done", style: TextStyle(color: primaryColor),),
                      ),
                    ],
                  ),
                ),
              ),

              Visibility(
                visible: MediaQuery.of(context).viewInsets.bottom == 0,
                child: gapH32,
              ),
              
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
                                    _viewModel.setQuestionImage(value);
                                    _viewModel.uploadImage(false, value.path, value.path);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text("Error in selecting image")),
                                    );
                                  }
                                });
                              } else if(index == -1) {
                                // await openPickVideoModalSheet(context);
                              } else if(index == 1){
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
                                    builder: (context) => const QuestionColorPickerBottomSheet(),
                                    );
                                  } 
                            },
                            leading: Image.asset(mediaList[index]['icon'], height: 30, width: 30,),
                            title: Text(mediaList[index]['title'], style: const TextStyle(color: kGrey, fontWeight: FontWeight.w700),),
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
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
