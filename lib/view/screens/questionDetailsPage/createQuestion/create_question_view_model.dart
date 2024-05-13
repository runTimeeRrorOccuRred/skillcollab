// ignore_for_file: avoid_positional_boolean_parameters, avoid_dynamic_calls

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/questions/createQuestions/create_question_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/createQuestions/models/create_question_model.dart';
import 'package:skill_colab/data/remote/questions/deleteQuestion/delete_question_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/deleteQuestion/models/delete_question_model.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/data/remote/questions/update_post/models/update_question_model.dart';
import 'package:skill_colab/data/remote/questions/update_post/update_question_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';
// import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

final createQuestionViewModel = ChangeNotifierProvider((ref) => CreateQuestionViewModel(ref: ref));

class CreateQuestionViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  CreateQuestionViewModel({required this.ref});
  final UpdateQuestionRepoImpl _updateQuestionRepoImpl = UpdateQuestionRepoImpl(ApiClient());
  final CreateQuestionRepoImpl _createQuestionRepoImpl = CreateQuestionRepoImpl();
  final DeleteQuestionRepoImpl _deleteQuestionRepoImpl = DeleteQuestionRepoImpl();


  //* DATA MEMBERS
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  UpdateQuestionResponseModel _updateQuestionResponseModel = const UpdateQuestionResponseModel();
  DeleteQuestionResponseModel _deleteQuestionResponseModel = const DeleteQuestionResponseModel();
  File _questionImage = File("null");
  String _questionImageUrl = "";
  bool _questionImageLoading = false;  

  String _colorcode = ""; 

  //* GETTERS
  File get questionImage => _questionImage;
  String get questionImageUrl => _questionImageUrl;
  bool get questionImageLoading => _questionImageLoading;  

  String get colorcode => _colorcode; 
  UpdateQuestionResponseModel get updateQuestionResponseModel => _updateQuestionResponseModel;
  DeleteQuestionResponseModel get deleteQuestionResponseModel => _deleteQuestionResponseModel;


  //* SETTERS
  void setQuestionImage(File image) {
    _questionImage = image;
    notifyListeners();
  }

  void answer(String answer){
    answerController.text = answer;
    notifyListeners();
  }

  void question(String question){
    questionController.text = question;
    notifyListeners();
  }
  

  void removeQuestionImage() {
    _questionImage = File("null");
    _questionImageUrl = "";
    notifyListeners();
  }

  void setColorCode(String color){
    _colorcode = color;
    notifyListeners();
  }



  //* OTHER METHODS
  Future<void> createQuestions(BuildContext context, CreateQuestionRequestModel createQuestionRequestModel) async{
    
    toggleLoading();
    _createQuestionRepoImpl.createQuestion(createQuestionRequestModel).then((value){
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          Logger.printSuccess(r.toString());
          ref.watch(publicGroupProfileViewModel).getQuestionByGroup(context, r.data?.groupId ?? "", const GetQuestionByGroupRequestModel(searchKey: "", filter: ""));
          context.pop();
        }
       );
    });
  }

  void clearAllData(){
    questionController.clear();
    answerController.clear();
    _questionImageUrl = "";
    _questionImage = File("null");
    _colorcode = "";
    notifyListeners();
  }


  Future<void> uploadImage(bool isCoverPhoto, String imagePath, String imageName) async {
    _questionImageLoading = true;
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

      _questionImageLoading = false;
      _questionImageUrl = response.data['data'];
      notifyListeners();

    } catch(e) {
      Logger.printError(e.toString());
    }
  }

  Future<void> updateQuestion( BuildContext context, UpdateQuestionRequestModel updateQuestionRequestModel, String questionId) async {
     toggleLoading();
    //  notifyListeners();
    await _updateQuestionRepoImpl.updateQuestion(updateQuestionRequestModel, questionId).then((value) {
      toggleLoading();
      return value.fold(
      (l) {
        // view?.showSnackbar(l.message);
        Logger.printError(l.message);
      }, (r) async {
        _updateQuestionResponseModel = r;
        Logger.printSuccess(r.message.toString());
        showCustomSnackBar( context, text: _updateQuestionResponseModel.message.toString(), color: Colors.green);
        notifyListeners();
      });
    });
  }

  Future<void> deleteQuestion(BuildContext context, String questionId) async{
    Logger.printInfo(questionId);
    toggleLoading();
    notifyListeners();
    await _deleteQuestionRepoImpl.deleteQuestion(questionId).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          Logger.printError(l.message);
        }, 
        (r) {
          _deleteQuestionResponseModel = r;
          Logger.printSuccess(r.message.toString());
        // getPostsByUserId(context, getPostsByUserIdRequestModel, userId)
      });

    });
  }

}
