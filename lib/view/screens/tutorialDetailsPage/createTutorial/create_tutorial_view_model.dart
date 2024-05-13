// ignore_for_file: avoid_positional_boolean_parameters, avoid_dynamic_calls

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quill_html_editor/quill_html_editor.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/tutorial/createTutorial/crete_tutorial_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/createTutorial/models/create_tutorial_model.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

final createTutorialViewModel = ChangeNotifierProvider((ref) => CreateTutorialViewModel(ref: ref));

class CreateTutorialViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  CreateTutorialViewModel({required this.ref});

  final CreateTutorialRepoImpl _createTutorialRepoImpl = CreateTutorialRepoImpl();

  //Data Members
  TextEditingController titleController = TextEditingController();
  final QuillEditorController controller = QuillEditorController();

  File _tutorialImage = File("null");
  String _tutorialImageUrl = "";
  bool _tutorialImageLoading = false;  

  String _colorcode = ""; 

  //* GETTERS
  File get tutorialImage => _tutorialImage;
  String get tutorialImageUrl => _tutorialImageUrl;
  bool get tutorialImageLoading => _tutorialImageLoading;  

  String get colorcode => _colorcode; 



  //* SETTERS
  void setTutorialImage(File image) {
    _tutorialImage = image;
    notifyListeners();
  }

  void removeTutorialImage() {
    _tutorialImage = File("null");
    _tutorialImageUrl = "";
    notifyListeners();
  }

  void setColorCode(String color){
    _colorcode = color;
    notifyListeners();
  }



  Future<void> createTutorials(BuildContext context, CreateTutorialRequestModel createTutorialRequestModel) async{
    toggleLoading();
    _createTutorialRepoImpl.createTutorial(createTutorialRequestModel).then((value){
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          Logger.printSuccess(r.toString());
          ref.watch(publicGroupProfileViewModel).getTutorialByGroup(context, r.data?.groupId ?? "", const GetTutorialRequestModel(searchKey: "", filter: ""));
          context.pop();
        }
       );
    });
  }

  void clearAllData(){
    titleController.clear();
    
    _tutorialImage = File("null");
    _tutorialImageUrl = "";
    _colorcode = "";
    notifyListeners();
  }

  Future<void> uploadImage(bool isCoverPhoto, String imagePath, String imageName) async {
    _tutorialImageLoading = true;
    notifyListeners();

    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        imagePath,
        filename: imageName,
      ),
    });

    try {
      final Response response = await Dio().post(
        '${AppConstants.baseUrl}group/upload',
        data: formData,
      );
      Logger.printSuccess(response.data.toString());

      _tutorialImageLoading = false;
      _tutorialImageUrl = response.data['data'];
      notifyListeners();

    } catch(e) {
      Logger.printError(e.toString());
    }
  }
}
