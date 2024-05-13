// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/transactions/transaction_view_model.dart';

class TransactionGroupView extends ConsumerStatefulWidget {
  const TransactionGroupView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TransactionGroupViewState();
}

class _TransactionGroupViewState extends ConsumerState<TransactionGroupView> {
  final ScrollController _scrollController = ScrollController();
  Map<String, dynamic> txnDetails = {
    "user": "User Subscription",
    "group": "Group Subscription",
    "userTip": "User Tip",
    "groupTip": "Group Tip",
    "": "",
  };

  Map<String, dynamic> statusDetails = {
    'trialing' : 'Trial',
    'canceled' : 'Canceled',
    'active' : 'Active',
    '': ''
  };

  @override
  Widget build(BuildContext context) {
    final _viewModel = ref.watch(transactionsViewModel);
    final groupSubsList = _viewModel.transactionAndTipsResponseModel.data?.where((element) => element.type == "group").toList();
    final groupTipsList = _viewModel.transactionAndTipsResponseModel.data?.where((element) => element.type == "groupTip").toList();
    Logger.printInfo(groupSubsList.toString());
    Logger.printInfo(_viewModel.transactionAndTipsResponseModel.data.toString());
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 0.5,
            color: kNevada,
          ),
          gapH20,
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Group Subscriptions',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: groupSubsList?.isEmpty ?? true 
            ? SizedBox(
              width: size.width,
              height: 100,
              child: const Center(child: Text("No Group subscriptions yet", style: TextStyle(color: primaryColor),),),
            )
            : ListView.separated(
              shrinkWrap: true,
              itemCount: groupSubsList?.length ?? 0,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey[400],);
              },
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  //!======Outer BIG box
                  // padding: const EdgeInsets.symmetric(
                  //   // vertical: 10,
                  //   horizontal: 8,
                  // ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: groupSubsList?[index].fromUser?.profilePhoto?.isEmpty ?? true ? const EdgeInsets.all(16) : EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(color: primaryColor, width: 4),
                              color: Colors.white,
                            ),
                            child: groupSubsList?[index].fromUser?.profilePhoto?.isEmpty ?? true 
                                ? Image.asset("assets/icons/user.png")
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.network( groupSubsList?[index].fromUser?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover,),
                                  ),
                          ),
                          const SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 7),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.7,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Text(
                                                "${groupSubsList?[index].fromUser?.firstName ?? ""} ${groupSubsList?[index].fromUser?.lastName ?? ""}",
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                '+\$${groupSubsList?[index].netAmount ?? 0}',
                                                style: const TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        gapH8,
                                        SizedBox(
                                          width: size.width * 0.7,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Text(
                                                DateFormat('d MMM, h:mm a').format(groupSubsList?[index].createdAt ?? DateTime.now()),
                                                style: const TextStyle(
                                                  color: kNevada,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                txnDetails[groupSubsList?[index].type ?? ""],
                                                style: const TextStyle(
                                                  color: kNevada,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.7,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                statusDetails[groupSubsList?[index].status ?? ''],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: groupSubsList?[index].status == 'canceled' 
                                                        ? Colors.red 
                                                        : groupSubsList?[index].status == 'successful' 
                                                        ? Colors.green
                                                        : primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    gapW10,
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Group Tips',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: groupTipsList?.isEmpty ?? true 
            ? SizedBox(
              width: size.width,
              height: 100,
              child: const Center(child: Text("No Group Tips yet", style: TextStyle(color: primaryColor),),),
            )
            : ListView.separated(
              shrinkWrap: true,
              itemCount: groupTipsList?.length ?? 0,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey[400],);
              },
              itemBuilder: (context, index) {
                print(groupTipsList?.map((e) => e.amount).toList());
                print(groupSubsList?.map((e) => e.amount).toList());
                return Container(
                  width: double.infinity,
                  //!======Outer BIG box
                  // padding: const EdgeInsets.symmetric(
                  //   // vertical: 10,
                  //   horizontal: 8,
                  // ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            width: 60,
                            height: 60,
                            padding: groupTipsList?[index].fromUser?.profilePhoto?.isEmpty ?? true ? const EdgeInsets.all(16) : EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(color: primaryColor, width: 4),
                              color: Colors.white,
                            ),
                            child: groupTipsList?[index].fromUser?.profilePhoto?.isEmpty ?? true 
                                ? Image.asset("assets/icons/user.png")
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.network(groupTipsList?[index].fromUser?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover,),
                                  ),
                          ),
                          const SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 7),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.7,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Text(
                                                "${groupTipsList?[index].fromUser?.firstName ?? ""} ${groupTipsList?[index].fromUser?.lastName ?? ""}",
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                '+\$${groupTipsList?[index].netAmount ?? 0}',
                                                style: const TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        gapH8,
                                        SizedBox(
                                          width: size.width * 0.7,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Text(
                                                DateFormat('d MMM, h:mm a').format(groupTipsList?[index].createdAt ?? DateTime.now()),
                                                style: const TextStyle(
                                                  color: kNevada,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                txnDetails[groupTipsList?[index].type ?? ""],
                                                style: const TextStyle(
                                                  color: kNevada,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.7,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                groupTipsList?[index].status ?? '',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: groupTipsList?[index].status == 'canceled' 
                                                        ? Colors.red 
                                                        : groupTipsList?[index].status == 'successful' 
                                                        ? Colors.green
                                                        : primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    gapW10,
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
