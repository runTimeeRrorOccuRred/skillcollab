import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/transactions/models/transactions_and_tips_model.dart';
import 'package:skill_colab/data/remote/transactions/transactions_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final transactionsViewModel = ChangeNotifierProvider((ref) => TransactionsViewModel(ref: ref));

class TransactionsViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  TransactionsViewModel({required this.ref}) : super();

  final TransactionsRepoImpl _transactionsRepoImpl = TransactionsRepoImpl();

  /// DATA MEMBERS
  TransactionAndTipsResponseModel _transactionAndTipsResponseModel = const TransactionAndTipsResponseModel();


  /// GETTERS
  TransactionAndTipsResponseModel get transactionAndTipsResponseModel => _transactionAndTipsResponseModel;


  /// SETTERS


  /// OTHER METHODS
  Future<void> getTransactionAndTipsList(TransactionAndTipsRequestModel transactionAndTipsRequestModel) async {
    toggleLoading();
    await _transactionsRepoImpl.getTransactionsAndTips(transactionAndTipsRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _transactionAndTipsResponseModel = r;
          notifyListeners();
          Logger.printSuccess(r.toString());
        }
      );
    });
  }
}