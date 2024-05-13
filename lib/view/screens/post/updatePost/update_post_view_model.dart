
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/data/remote/posts/updatePost/modles/update_post_model.dart';
import 'package:skill_colab/data/remote/posts/updatePost/update_post_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final updatePostViewModelProvider = ChangeNotifierProvider( (ref) => UpdatePostViewModel(ref: ref),
);
class UpdatePostViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;  
  UpdatePostViewModel({required this.ref});
  EditPostResponse _editPostResponse = const EditPostResponse();
  EditPostResponse get editPostResponse => _editPostResponse;

  final UpdatePostRepoImpl _updatePostRepoImplImpl = UpdatePostRepoImpl(ApiClient());


 

  Future<void> updatePost( BuildContext context, EditPostResquest editPostResquest, String postId) async {
     toggleLoading();
     notifyListeners();
    await _updatePostRepoImplImpl.updatePost(editPostResquest,postId).then((value) {
      toggleLoading();
      return value.fold(
      (l) {
        Logger.printError(l.message);
      }, (r) async {
        _editPostResponse = r;
        Logger.printSuccess(r.message.toString());
        notifyListeners();
      });
    });
  }
}
