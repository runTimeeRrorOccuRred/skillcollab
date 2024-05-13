// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';
// import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/questions/comments/add_comment/models/question_comment_model.dart';
import 'package:skill_colab/data/remote/questions/comments/add_comment/question_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/comments/comment_likedislike/models/question_comment_likedislike_model.dart';
import 'package:skill_colab/data/remote/questions/comments/comment_likedislike/question_comment_likedislike_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/comments/deleteComment/delete_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/comments/editComment/edit_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/comments/get_comment/get_question_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/comments/get_comment/models/get_question_comment_model.dart';
import 'package:skill_colab/data/remote/questions/likeDislike/like_dislike_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final questionDetailModel =
    ChangeNotifierProvider((ref) => QuestionDetailViewModel(ref: ref));

class QuestionDetailViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  QuestionDetailViewModel({required this.ref});

  final QuestionCommentRepoImpl _questionCommentRepoImpl =
      QuestionCommentRepoImpl();
  final GetQuestionCommentRepoImpl _getQuestionCommentRepoImpl =
      GetQuestionCommentRepoImpl();
  final LikeDislikeRepoImpl _likeDislikeRepoImpl = LikeDislikeRepoImpl();
  final QuestionCommentLikeDislikeRepoImpl _questionCommentLikeDislikeRepoImpl = QuestionCommentLikeDislikeRepoImpl();
  final DeleteCommentRepoImpl _deleteCommentRepoImpl = DeleteCommentRepoImpl();
  final UpdateCommentRepoImpl _updateCommentRepoImpl = UpdateCommentRepoImpl(ApiClient());
  

  //Data Members
  TextEditingController commentController = TextEditingController();
  
  GetQuestionCommentResponseModel _getQuestionCommentResponseModel =
      const GetQuestionCommentResponseModel();
  DeleteCommentResponseModel _deleteCommentResponseModel = const DeleteCommentResponseModel();
  EditCommentResponseModel _editCommentResponseModel = const EditCommentResponseModel();


  LikeDislikeResponseModel _likeDislikeResponseModel =
      const LikeDislikeResponseModel();
  bool _commentLoader = false;

  bool get commentLoader => _commentLoader;
  

  void toggleCommentLoader() {
    _commentLoader = !_commentLoader;
    notifyListeners();
  }

  GetQuestionCommentResponseModel get getQuestionCommentResponseModel =>
      _getQuestionCommentResponseModel;

  Future<void> createQuestionsComment(BuildContext context,
      AddQuestionCommentRequestModel addQuestionCommentRequestModel,) async {
    // toggleLoading();
    toggleCommentLoader();
    _questionCommentRepoImpl
        .addQuestionComment(addQuestionCommentRequestModel)
        .then((value) {
      // toggleLoading();
      toggleCommentLoader();
      return value.fold(
          (l) => Logger.printError(l.message),
          (r) {
        Logger.printSuccess(r.toString());
        getQuestionComment(context, r.data?.questionId ?? "");
        clearAllData();
        notifyListeners();
      });
    });
  }

  Future<void> getQuestionComment(BuildContext context, String questionId, {bool load = true}) async {
    if(load) toggleCommentLoader();
    _getQuestionCommentRepoImpl.getQuestionComment(questionId).then((value) {
      if(load) toggleCommentLoader();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getQuestionCommentResponseModel = r;
        Logger.printInfo(r.toString());
        notifyListeners();
      });
    });
  }

  Future<void> likeDislikeQuestion(
      BuildContext context, LikeDislikeRequestModel request,) async {
    // Logger.printError(loading.toString());
    // toggleLoading();
    // toggleCommentLoader();
    _likeDislikeRepoImpl.likeDislikeQuestion(request).then((value) {
      // Logger.printError(loading.toString());
      // toggleLoading();
      // toggleCommentLoader();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _likeDislikeResponseModel = r;
        Logger.printInfo(r.toString());
        notifyListeners();
      });
    });
  }



  Future<void> likeDislikeQuestionComment(BuildContext context, QuestionCommentLikeDislikeRequestModel questionCommentLikeDislikeRequestModel, String questionId) async {
    _questionCommentLikeDislikeRepoImpl.likeDislikeQuestionComment(questionCommentLikeDislikeRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess(r.toString());
          getQuestionComment(context, questionId, load: false);
          // Future.delayed(Duration(seconds: 2), () {
          // });
        }
      );
    });
  }

  Future<void> editComment(BuildContext context, EditCommentRequestModel editCommentRequestModel, String commentId) async {
    // toggleLoading();
    _updateCommentRepoImpl.updateComment(editCommentRequestModel, commentId).then((value) {
      // toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _editCommentResponseModel = r;
          Logger.printSuccess(_editCommentResponseModel.toString());
          getQuestionComment(context, r.data?.questionId ?? "");
          clearAllData();
          notifyListeners();
        }
      );
    });
  }

  Future<void> deleteComment(BuildContext context, DeleteCommentQuestionRequestModel deleteCommentQuestionRequestModel, String commentId) async {
    _deleteCommentRepoImpl.deleteCommentQuestion(deleteCommentQuestionRequestModel, commentId).then((value) {
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _deleteCommentResponseModel = r;
          Logger.printSuccess(_deleteCommentResponseModel.toString());
          getQuestionComment(context, r.data?.questionId ?? "");
          clearAllData();
          notifyListeners();
        }
      );
    });
  }


  void clearAllData() {
    commentController.clear();
    notifyListeners();
  }
}
