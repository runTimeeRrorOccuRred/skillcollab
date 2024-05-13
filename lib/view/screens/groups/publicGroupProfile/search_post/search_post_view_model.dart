import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/get_posts_by_group_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final searchPostViewModel =
    ChangeNotifierProvider((ref) => SearchPostViewModel(ref: ref));

class SearchPostViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SearchPostViewModel({required this.ref});

  final GetPostsByGroupRepoImpl _getPostsByGroupRepoImpl =
      GetPostsByGroupRepoImpl();

  GetPostsByGroupModel _postsByGroupSearch = const GetPostsByGroupModel();

  GetPostsByGroupModel get postsByGroupSearch => _postsByGroupSearch;
  set postsByGroupSearch(GetPostsByGroupModel value) {
    _postsByGroupSearch = value;
    notifyListeners();
  }

  Future<void> getPostsByGroup(BuildContext context,
      GetPostsByGroupRequestModel request, String groupId,) async {
    toggleLoading();
    _getPostsByGroupRepoImpl.getPostsByGroup(request, groupId).then((value) {
      toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _postsByGroupSearch = r;
        notifyListeners();
      });
    });
  }
}
