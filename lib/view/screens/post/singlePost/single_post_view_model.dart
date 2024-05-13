// ignore_for_file: avoid_positional_boolean_parameters, avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/models/post_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/post_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/delete_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/edit_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/getComment/getPostComments/get_post_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/comments/getComment/getPostComments/model/get_post_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/likeDislikeComment/like_dislike_comment_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/comments/likeDislikeComment/models/like_dislike_comment_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/get_posts_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_single_post_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/like_dislike_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/utils.dart';

final singlePostViewModel =
    ChangeNotifierProvider((ref) => SinglePostViewModel(ref: ref));

class SinglePostViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SinglePostViewModel({required this.ref});

  final GetPostCommentRepoImpl _getPostCommentRepoImpl =
      GetPostCommentRepoImpl();
  final PostCommentRepoImpl _postCommentRepoImpl = PostCommentRepoImpl();
  final LikeDislikeRepoImpl _likeDislikeRepoImpl = LikeDislikeRepoImpl();
  final LikeDislikeCommentRepoImpl _likeDislikeCommentRepoImpl = LikeDislikeCommentRepoImpl();
  final GetPostsRepoImpl _getPostsRepoImpl = GetPostsRepoImpl();
  final UpdateCommentRepoImpl _updateCommentRepoImpl = UpdateCommentRepoImpl(ApiClient());
  final DeleteCommentRepoImpl _deleteCommentRepoImpl = DeleteCommentRepoImpl();

    double _lat = 0;
    double _long = 0;
    CameraPosition _groupLocation = const CameraPosition(target: LatLng(22.57456610758227, 88.43059525421059), zoom: 1,);

  /// DATA MEMBER
  List<Comment> _allComments = [];
  bool _addCommentLoader = false;
  bool _like = false;
  bool _dislike = false;  
  int _likeCounts = 0;
  int _dislikeCounts = 0;
  GetSinglePostResponseModel _getSinglePostResponseModel = const GetSinglePostResponseModel();
  EditCommentResponseModel _editCommentResponseModel = const EditCommentResponseModel();
  DeleteCommentResponseModel _deleteCommentResponseModel = const DeleteCommentResponseModel();

  /// GETTER
  double get lat => _lat;
  double get long => _long;
  CameraPosition get groupLocation => _groupLocation;
  List<Comment> get allComments => _allComments;
  bool get addCommentLoader => _addCommentLoader;
  bool get like => _like;
  bool get dislike => _dislike;
  int get likeCounts => _likeCounts;
  int get dislikeCounts => _dislikeCounts;
  GetSinglePostResponseModel get getSinglePostResponseModel => _getSinglePostResponseModel;
  EditCommentResponseModel get editCommentResponseModel => _editCommentResponseModel;
  DeleteCommentResponseModel get deleteCommentResponseModel => _deleteCommentResponseModel;

  /// SETTER
  void setLikeDislike(bool likeFlag, bool dislikeFlag) {
    _like = likeFlag;
    _dislike = dislikeFlag;
    notifyListeners();
  }

  void updateLikeDislikeCounts(int likes, int dislikes) {
    _likeCounts = likes;
    _dislikeCounts = dislikes;
    notifyListeners();
  }


  /// OTHER METHODS
  Future<void> getPostComments(BuildContext context, String postId,
      {bool? clear = false, bool? load = true,}) async {
    if (load!) {
      toggleLoading();
    }
    _getPostCommentRepoImpl.getPostComments(postId).then((value) {
      if (load) {
        toggleLoading();
      }

      value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        if (clear!) {
          clearComments();
        }

        Logger.printSuccess(r.toString());

        // _postCommentModel = r;
        final List<Comment> comments = [];
        for (int i = 0; i < r.data!.length; i++) {
          comments.add(r.data![i]);
        }
        _allComments = comments;
        _addCommentLoader = false;
        notifyListeners();

        // showCustomSnackBar(context, text: "Comments Fetched successfully", color: Colors.green);
      });
    });
  }

  Future<void> addPostComment(BuildContext context,
      PostCommentRequestModel postCommentRequestModel,) async {
    // toggleLoading();

    _addCommentLoader = true;
    notifyListeners();

    _postCommentRepoImpl.addPostComment(postCommentRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) async {
          getPostComments(context, postCommentRequestModel.postId ?? "", load: false);
          // ref.read(dashboardViewModel).getAllPeopleWithLogin(
          //   context, 
          //   const GetAllPeopleWithLoginRequestModel(searchKey: '', interests: '', timeFilter: 'allTime'),
          //   ref.watch(dashboardViewModel).allPeoplePageSize
          // );
          // toggleLoading();

          //showCustomSnackBar(context, text: "Comment added successfully", color: Colors.green);
        }
      );
    });
  }

  Future<void> getLatLong(String query) async {

    toggleLoading();
    notifyListeners();

    final String address = query.split(" ").join("%20");
    // address = address.split(',').join();

    Logger.printWarning(query);
    Logger.printWarning(address);

    try {
      final response = await ApiClient().get(
        "https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14",
      );
      Logger.printSuccess(
        response.data!['results'][0]['geometry']['location'].toString(),
      );
      // final response = await ApiClient().get("https://maps.googleapis.com/maps/api/geocode/json?address=24%20Sussex%20Drive%20Ottawa%20ON&key=AIzaSyAjdNnw06XH3bUkAB6VZBU3w7ynnvk1b5I");
      final Map<String, dynamic> coords = response.data!['results'][0]['geometry']['location']
          as Map<String, dynamic>;

      _lat = coords['lat'];
      _long = coords['lng'];
      _groupLocation = CameraPosition(
        target: LatLng(_lat, _long),
        zoom: 15,
      );
      Logger.printWarning("$_lat $_long");
      notifyListeners();
      toggleLoading();
    } catch (e) {
      Logger.printError(e.toString());
      toggleLoading();
    }
  }

  Future<int> getPostCommentLength(String postId) async {
    final Response response = await ApiClient()
        .get("${AppConstants.baseUrl}group/post/get-comments/$postId");
    return (response.data['data'] as List<dynamic>).length;
  }

  void clearComments() {
    _allComments = [];
    notifyListeners();
  }

  Future<void> likeDislikePost(BuildContext context,
      LikeDislikeRequestModel likeDislikeRequestModel,) async {
    // toggleLoading();
    _likeDislikeRepoImpl.likeDislikePost(likeDislikeRequestModel).then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        //showCustomSnackBar(context,text: "Post like dislike state updated successfully",color: Colors.green);
      });
    });
  }



  Future<void> likeDislikeComment(LikeDislikeCommentRequestModel likeDislikeCommentRequestModel) async {
    _likeDislikeCommentRepoImpl.likeDislikeComment(likeDislikeCommentRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess("Like dislike comment response =====> $r");
        }
      );
    });
  }


  Future<void> getSinglePostData(BuildContext context, String postId) async {
    toggleLoading();
    _getPostsRepoImpl.getSinglePostData(postId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getSinglePostResponseModel = r;
          notifyListeners();
          print(r.data?.likeCounts ?? 0);
          print(r.data?.dislikeCounts ?? 0);
          updateLikeDislikeCounts(r.data?.likeCounts ?? 0, r.data?.dislikeCounts ?? 0);
          Logger.printError(r.data.toString());

          getPostComments(context, r.data?.id ?? "", clear: true);
          setLikeDislike(r.data?.userLikeDislike?.isLike ?? false, r.data?.userLikeDislike?.isDislike ?? false);
          if(r.data?.checkIn != "" && r.data?.checkInImage != null){
            getLatLong(r.data?.checkIn ?? "");
          }
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
          notifyListeners();
        }
      );
    });
  }

  Future<void> deleteComment(BuildContext context, DeleteCommentRequestModel deleteCommentRequestModel, String commentId) async {
    _deleteCommentRepoImpl.deleteComment(deleteCommentRequestModel, commentId).then((value) {
      return value.fold(
        (l) => Logger.printError(l.toString()), 
        (r) {
          _deleteCommentResponseModel = r;
          Logger.printSuccess(_deleteCommentResponseModel.toString());
          notifyListeners();
        }
      );
    });
  }


  void clearAllData(){
    _lat = 0;
    _long = 0;
    _groupLocation = const CameraPosition(target: LatLng(22.57456610758227, 88.43059525421059), zoom: 1,);
    notifyListeners();
  }
}
