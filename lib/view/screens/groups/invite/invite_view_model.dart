import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/user/models/get_followers_by_user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/utils.dart';

final inviteViewModel = ChangeNotifierProvider((ref) => InviteViewModel(ref: ref));

class InviteViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  InviteViewModel({required this.ref}) : super();

  final UserRepoImpl _userRepoImpl = UserRepoImpl();

  /// DATA MEMBERS
  GetFollowersByUserResponseModel _getFollowersByUserResponseModel = const GetFollowersByUserResponseModel();

  /// GETTERS
  GetFollowersByUserResponseModel get getFollowersByUserResponseModel => _getFollowersByUserResponseModel;


  /// SETTERS


  /// OTHER METHODS
  Future<void> getSelfFollowers(String userId) async {
    toggleLoading();
    await _userRepoImpl.getFollowersByUserModel(userId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getFollowersByUserResponseModel = r;
          Logger.printSuccess(r.toString());
          notifyListeners();
        }
      );
    });
  }  
}
