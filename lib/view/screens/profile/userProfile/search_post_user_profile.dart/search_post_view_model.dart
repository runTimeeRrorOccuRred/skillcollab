

// ignore_for_file: avoid_setters_without_getters

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/posts/getPosts/get_posts_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final searchUserPostViewModel = ChangeNotifierProvider((ref) => SearchUserPostViewModel(ref: ref));

class SearchUserPostViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SearchUserPostViewModel({required this.ref});

  final GetPostsRepoImpl _getPostsRepoImpl = GetPostsRepoImpl();

  GetPostsByUserIdResponseModel _getPostsByUserIdResponseModel = const GetPostsByUserIdResponseModel();

  GetPostsByUserIdResponseModel get getPostsByUserIdResponseModel => _getPostsByUserIdResponseModel;

  set getPostsByUserSearch(GetPostsByUserIdResponseModel value){
    _getPostsByUserIdResponseModel = value;
    notifyListeners();
  }

  Future<void> getPostsByUserId(BuildContext context,GetPostsByUserIdRequestModel getPostsByUserIdRequestModel, String userId) async {
    toggleLoading();
    _getPostsRepoImpl.getPostsByUserId(getPostsByUserIdRequestModel, userId).then((value) {
      toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getPostsByUserIdResponseModel = r;
        Logger.printSuccess(r.toString());
        notifyListeners();
      });
    });
  }

}
