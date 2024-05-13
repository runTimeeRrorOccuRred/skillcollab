import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/models/tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/tutorial_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/comments/comment_likedislike/models/tutorial_comment_likedislike_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/comment_likedislike/tutorial_comment_like_dislike_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/comments/deleteComment/delete_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/comments/editComment/edit_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/get_tutorial_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/models/get_tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/likeDislike/likeDislike_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final tutorialDetailModel =
    ChangeNotifierProvider((ref) => TutorialDetailViewModel(ref: ref));

class TutorialDetailViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  TutorialDetailViewModel({required this.ref});

  final TutorialCommentRepoImpl _tutorialCommentRepoImpl =
      TutorialCommentRepoImpl();
  final GetTutorialCommentRepoImpl _getTutorialCommentRepoImpl =
      GetTutorialCommentRepoImpl();
  final TutorialLikeDislikeRepoImpl _tutorialLikeDislikeRepoImpl =
      TutorialLikeDislikeRepoImpl();
  final TutorialCommentLikeDislikeRepoImpl _tutorialCommentLikeDislikeRepoImpl = TutorialCommentLikeDislikeRepoImpl();
  final UpdateCommentRepoImpl _updateCommentRepoImpl = UpdateCommentRepoImpl(ApiClient());
  final DeleteCommentRepoImpl _deleteCommentRepoImpl = DeleteCommentRepoImpl();

  //Data Members
  TextEditingController commentController = TextEditingController();
  bool _commentLoader = false;
  TutorialGetCommentResponseModel _tutorialGetCommentResponseModel =
      const TutorialGetCommentResponseModel();
  DeleteCommentResponseModel _deleteCommentResponseModel = const DeleteCommentResponseModel();
  EditCommentResponseModel _editCommentResponseModel = const EditCommentResponseModel();

  //GETTER
  TutorialGetCommentResponseModel get tutorialGetCommentResponseModel =>
      _tutorialGetCommentResponseModel;
  bool get commentLoader => _commentLoader;
  DeleteCommentResponseModel get deleteCommentResponseModel => _deleteCommentResponseModel;
  EditCommentResponseModel get editCommentResponseModel => _editCommentResponseModel;

  //SETTER
  void toggleCommentLoader() {
    _commentLoader = !_commentLoader;
    notifyListeners();
  }

  Future<void> createTutorialsComment(BuildContext context,
      TutorialAddCommentRequestModel tutorialAddCommentRequestModel,) async {
    // toggleLoading();
    toggleCommentLoader();
    _tutorialCommentRepoImpl
        .addTutorialComment(tutorialAddCommentRequestModel)
        .then((value) {
      // toggleLoading();
      toggleCommentLoader();
      return value.fold(
          (l) => Logger.printError(l.message),
          (r) {
        Logger.printSuccess(r.toString());
        getTutorialComment(context, r.data?.tutorialId ?? "");
        clearAllData();
        notifyListeners();
      });
    });
  }

  Future<void> getTutorialComment(
      BuildContext context, String tutorialId, {bool load = true,}) async {
    // Logger.printError(loading.toString());
    // toggleLoading();
    if(load) toggleCommentLoader();
    _getTutorialCommentRepoImpl.getTutorialComment(tutorialId).then((value) {
      // Logger.printError(loading.toString());
      // toggleLoading();
      if(load) toggleCommentLoader();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _tutorialGetCommentResponseModel = r;
        Logger.printInfo(r.toString());
        notifyListeners();
      });
    });
  }

  Future<void> likeDislikeTutorial(BuildContext context,
      LikeDislikeTutorialRequestModel tutorialLikeDislikeRequestModel,) async {
    // toggleLoading();
    // toggleCommentLoader();
    _tutorialLikeDislikeRepoImpl
        .likeDislikeTutorial(tutorialLikeDislikeRequestModel)
        .then((value) {
      // toggleLoading();
      // toggleCommentLoader();
      return value.fold(
          (l) => Logger.printError(l.message),
          (r) {
        Logger.printSuccess(r.toString());
        notifyListeners();
      });
    });
  }

  void clearAllData() {
    commentController.clear();
    notifyListeners();
  }

  Future<void> tutorialCommentLikeDislike(BuildContext context, TutorialCommentLikeDislikeRequestModel tutorialCommentLikeDislikeRequestModel, String tutorialId) async {
    _tutorialCommentLikeDislikeRepoImpl.likeDislikeTutorialComment(tutorialCommentLikeDislikeRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess(r.toString());
          getTutorialComment(context, tutorialId, load: false);
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
          getTutorialComment(context, r.data?.tutorialId ?? "");
          clearAllData();
          notifyListeners();
        }
      );
    });
  }

  Future<void> deleteComment(BuildContext context, DeleteCommentTutorialRequestModel deleteCommentTutorialRequestModel , String commentId) async {
    _deleteCommentRepoImpl.deleteComment(deleteCommentTutorialRequestModel, commentId).then((value) {
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _deleteCommentResponseModel = r;
          Logger.printSuccess(_deleteCommentResponseModel.toString());
          getTutorialComment(context, r.data?.tutorialId ?? "");
          clearAllData();
          notifyListeners();
        }
      );
    });
  }
}
