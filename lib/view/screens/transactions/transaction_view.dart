import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/transactions/models/transactions_and_tips_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/analytics/analytics_view.dart';
import 'package:skill_colab/view/screens/analytics/analytics_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/transactions/transaction_view_model.dart';
import 'package:skill_colab/view/screens/transactions/transaction_widgets/group/transaction_group_view.dart';
import 'package:skill_colab/view/screens/transactions/transaction_widgets/people/transaction_people_view.dart';

class TransactionView extends ConsumerStatefulWidget {
  const TransactionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TransactionViewState();
}

class _TransactionViewState extends ConsumerState<TransactionView> {

  late TransactionsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(transactionsViewModel);
      _viewModel.getTransactionAndTipsList(const TransactionAndTipsRequestModel(type: ""));
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                ref.read(analyticsViewModelProvider).clearGroupList();
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 7,
                  top: 8,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F5F6),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                  size: 20,
                ),
              ),
            ),
          ),
          title: const Text(
            'Transactions',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                // context.pushNamed(AppRoute.profileView.name, extra: {
                //   "userId": ref.read(selfDataProvider).singleUserResponseModel.data?.id ?? "",
                //   "isSelfProfile": true,
                //   },
                // );
              },
              child: Container(
                height: 50,
                width: 50,
                padding: ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.isEmpty ?? true ? const EdgeInsets.all(4) : EdgeInsets.zero,
                decoration: BoxDecoration(                  
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto?.isEmpty ?? true
                    ? Image.asset("assets/icons/user.png", fit: BoxFit.cover,)
                    : Image.network( ref.read(selfDataProvider).singleUserResponseModel.data?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover,),
                ),
              ),
            ),
            gapW10,
          ],
          bottom: const TabBar(
              indicatorColor: primaryColor,
              labelColor: primaryColor,
              unselectedLabelColor: kGrey,
              indicator: HalfCircleTabIndicator(
                color: primaryColor, // Change this to the desired indicator color
              ),
              tabs: [
                Tab(
                  text: "Earnings",
                ),
                Tab(
                  text: "Groups",
                ),
                Tab(
                  text: "Profile",
                ),
              ],
            ),
        ),
        body: const TabBarView(
            children: [
              AnalyticsView(),
              TransactionGroupView(),
              TransactionPeopleView(),
            ],
          ),
      ),
    );
  }
}
