import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quill_html_editor/quill_html_editor.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/tutorial/updateTutorial/models/update_tutorial_model.dart';
import 'package:skill_colab/data/remote/tutorial/updateTutorial/update_tutorial_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final updateTutorialViewModel = ChangeNotifierProvider((ref) => UpdateTutorialViewModel(ref: ref));

class UpdateTutorialViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  UpdateTutorialViewModel({required this.ref}) : super();

  final UpdateTutorialRepoImpl _updateTutorialRepoImpl = UpdateTutorialRepoImpl();

  //* DATA MEMBER
  TextEditingController titleController = TextEditingController();
  final QuillEditorController controller = QuillEditorController();
  File _tutorialImage = File("null");
  String _tutorialImageUrl = "";
  bool _tutorialImageLoading = false;  

  String _colorcode = ""; 

  UpdateTutorialResponseModel _updateTutorialResponseModel = const UpdateTutorialResponseModel();

  //* GETTERS
  File get tutorialImage => _tutorialImage;
  String get tutorialImageUrl => _tutorialImageUrl;
  bool get tutorialImageLoading => _tutorialImageLoading;  

  String get colorcode => _colorcode;

  UpdateTutorialResponseModel get updateTutorialResponseModel => _updateTutorialResponseModel;

  /// //* SETTERS
  void setTutorialImage(File image) {
    _tutorialImage = image;
    notifyListeners();
  }

  void setTutorialImageUrl(String url) {
    _tutorialImageUrl = url;
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


  void clearAllData(){
    titleController.clear();
    
    _tutorialImage = File("null");
    _tutorialImageUrl = "";
    _colorcode = "";
    notifyListeners();
  }


  //* OTHER METHODS


  Future<void> updateTutorial(BuildContext context, UpdateTutorialRequestModel updateTutorialRequestModel, String tutorialId) async {
    toggleLoading();
    await _updateTutorialRepoImpl.updateTutorial(updateTutorialRequestModel, tutorialId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _updateTutorialResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_updateTutorialRepoImpl.toString());
          Navigator.pop(context);
          Navigator.pop(context);
        }
      );
    });
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