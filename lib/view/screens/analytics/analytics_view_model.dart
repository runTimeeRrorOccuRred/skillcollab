import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/data/remote/analytics/analytics_repo_impl.dart';
import 'package:skill_colab/data/remote/analytics/model/analytics_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/my_groups_repo_impl.dart';
import 'package:skill_colab/data/remote/transactions/models/get_earning_group_model.dart';
import 'package:skill_colab/data/remote/transactions/models/get_total_transactions_model.dart';
import 'package:skill_colab/data/remote/transactions/models/transactions_and_tips_model.dart';
import 'package:skill_colab/data/remote/transactions/transactions_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final analyticsViewModelProvider = ChangeNotifierProvider( (ref) => AnalyticsViewModel(ref: ref, //ref.read(authRepositoryProvider)
 ),
);
class AnalyticsViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;  
  AnalyticsViewModel({required this.ref});

  final AnalyticsRepoImpl _analyticsRepoImpl = AnalyticsRepoImpl(ApiClient());
  final TransactionsRepoImpl _transactionsRepoImpl = TransactionsRepoImpl();
  final MyGroupsRepoImpl _myGroupsRepoImpl = MyGroupsRepoImpl();

  AnalyticsResponseModel? _analyticsResponseModel;
  GetTotalTransactionResponseModel _getTotalTransactionResponseModel = const GetTotalTransactionResponseModel();
  TransactionAndTipsResponseModel _transactionAndTipsResponseModel = const TransactionAndTipsResponseModel();
  List<String> _myGroupName = ["All"];
  MyGroupsResponseModel _myGroups = const MyGroupsResponseModel();
  GetEarningGroupResponseModel _getEarningGroupResponseModel = const GetEarningGroupResponseModel();
  bool _earningLoader = false;


  AnalyticsResponseModel? get getAnalyticsResponse => _analyticsResponseModel;
  GetTotalTransactionResponseModel get getTotalTransactionResponseModel => _getTotalTransactionResponseModel;
  TransactionAndTipsResponseModel get transactionAndTipsResponseModel => _transactionAndTipsResponseModel;
  MyGroupsResponseModel get myGroups => _myGroups;
  List<String> get myGroupName => _myGroupName;
  GetEarningGroupResponseModel get getEarningGroupResponseModel => _getEarningGroupResponseModel;
  bool get earningLoader => _earningLoader;



  void toggleEarningLoader() {
    _earningLoader = !_earningLoader;
    notifyListeners();
  }



  //==getDataForAnalytics
    Future<void> getDataForAnalytics(BuildContext context, AnalyticsRequestModel analyticsRequestModel) async {
      // toggleLoading();
      await _analyticsRepoImpl.getDataForAnalytics(analyticsRequestModel).then((value) {
        // toggleLoading();
        return value.fold((l) {
            Logger.printError(l.message);
          }, (r) async{
            Logger.printSuccess(r.toString());
            _analyticsResponseModel = r;
            notifyListeners();
        });
    });
  }

  Future<void> getTotalTransactions() async {
    // toggleLoading();
    await _transactionsRepoImpl.getTotalTransactions().then((value) {
      // toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getTotalTransactionResponseModel = r;
          notifyListeners();
          Logger.printSuccess(r.toString());
        }
      );
    });
  }

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


  Future<void> getMyGroups() async {
    toggleLoading();
    _myGroups = const MyGroupsResponseModel();
    _myGroupName = [];

    _myGroupsRepoImpl.getMyGroups().then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _myGroups = r;
          for(int i = 0; i < (r.data?.length ?? 0); i++) {
            _myGroupName.add("${r.data?[i].name ?? ""}|${r.data?[i].id ?? ""}");
          }
          notifyListeners();          
          Logger.printSuccess(r.toString());
          Logger.printSuccess(_myGroupName.toString());
        }
      );
    });
  }


  void clearGroupList() {
    _myGroupName = ["All"];
    notifyListeners();
  }


  Future<void> getEarningBasedOnGroup(GetEarningGroupRequestModel getEarningGroupRequestModel) async {
    // toggleLoading();
    toggleEarningLoader();
    await _transactionsRepoImpl.getEarningBasedOnGroup(getEarningGroupRequestModel).then((value) {
      // toggleLoading();
      toggleEarningLoader();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getEarningGroupResponseModel = r;
          notifyListeners();
          Logger.printSuccess(r.toString());
        }
      );
    });
  }
  
}
