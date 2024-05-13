import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/payment/get_card/models/get_card_model.dart';
import 'package:skill_colab/data/remote/user/models/single_user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final selfDataProvider  = ChangeNotifierProvider((ref) => SelfDataProvider(ref: ref));

class SelfDataProvider extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SelfDataProvider({required this.ref}) : super();

  final UserRepoImpl _userRepoImpl = UserRepoImpl();
  // final GetCardRepoImpl _getCardRepoImpl = GetCardRepoImpl();

  /// DATA MEMBERS
  SingleUserResponseModel _singleUserResponseModel = const SingleUserResponseModel();
  final GetCardListModel _getCardListModel = const GetCardListModel();

  /// GETTERS
  SingleUserResponseModel get singleUserResponseModel => _singleUserResponseModel;
  GetCardListModel get getCardListModel => _getCardListModel;

  /// SETTERS


  /// OTHER METHODS
  Future<void> getUserById(BuildContext context, String userId) async {
    toggleLoading();
    await _userRepoImpl.getSingleUser(userId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message),
        (r) {
          _singleUserResponseModel = r;
          Logger.printSuccess(r.toString());
          notifyListeners();
      });
    });
  }

  // Future<void> getCardList(BuildContext context, String customerId) async {
  //   await _getCardRepoImpl.getCard(customerId).then((value) {
  //     return value.fold(
  //       (l) => showCustomSnackBar(context, text: l.message, color: redColor),
  //       (r) {
  //         Logger.printSuccess(r.toString());
  //         _getCardListModel = r;
  //         notifyListeners();
  //       }
  //     );
  //   });
  // }
}
