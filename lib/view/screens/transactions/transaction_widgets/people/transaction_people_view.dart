// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/transactions/transaction_view_model.dart';

class TransactionPeopleView extends ConsumerStatefulWidget {
  const TransactionPeopleView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TransactionPeopleViewState();
}

class _TransactionPeopleViewState extends ConsumerState<TransactionPeopleView> {
  final ScrollController _scrollController = ScrollController();
  Map<String, dynamic> txnDetails = {
    "user": "User Subscription",
    "group": "Group Subscription",
    "userTip": "User Tip",
    "groupTip": "Group Tip",
    "": "",
  };

  // Map<String, dynamic> statusDetails = {
  //   'trialing' : 'Trial',
  //   'canceled' : 'Canceled',
  //   'active' : 'Active',
  //   '': ''
  // };

  @override
  Widget build(BuildContext context) {
    final _viewModel = ref.watch(transactionsViewModel);
    final userSubsList = _viewModel.transactionAndTipsResponseModel.data?.where((element) => element.type == "user").toList();
    final userTipsList = _viewModel.transactionAndTipsResponseModel.data?.where((element) => element.type == "userTip").toList();
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
              'User Subscriptions',
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
            child: userSubsList?.isEmpty ?? true 
            ? SizedBox(
              width: size.width,
              height: 100,
              child: const Center(child: Text("No User subscriptions yet", style: TextStyle(color: primaryColor),),),
            )
            : ListView.separated(
              shrinkWrap: true,
              itemCount: userSubsList?.length ?? 0,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey[400],);
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    context.pushNamed(AppRoute.profileView.name, extra: {
                      "userId": userSubsList?[index].fromUser?.id,
                      "isSelfProfile": userSubsList?[index].fromUser?.id == AppConstants.userId,
                      },
                    );
                  },
                  child: Container(
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
                              padding: userSubsList?[index].fromUser?.profilePhoto?.isEmpty ?? true ? const EdgeInsets.all(16) : EdgeInsets.zero,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(color: primaryColor, width: 4),
                                color: Colors.white,
                              ),
                              child: userSubsList?[index].fromUser?.profilePhoto?.isEmpty ?? true 
                                  ? Image.asset("assets/icons/user.png")
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.network( userSubsList?[index].fromUser?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover,),
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
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.7,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "${userSubsList?[index].fromUser?.firstName ?? ""} ${userSubsList?[index].fromUser?.lastName ?? ""}",
                                                  overflow: TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Text(
                                                  '+\$${userSubsList?[index].netAmount ?? 0}',
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
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  DateFormat('d MMM, h:mm a').format(userSubsList?[index].createdAt ?? DateTime.now()),
                                                  style: const TextStyle(
                                                    color: kNevada,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Text(
                                                  txnDetails[userSubsList?[index].type ?? ""],
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
                                                  // statusDetails[userSubsList?[index].status ?? ''],
                                                  userSubsList?[index].status ?? '',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: userSubsList?[index].status == 'canceled' 
                                                          ? Colors.red 
                                                          : userSubsList?[index].status == 'successful' 
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
              'User Tips',
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
            child: userTipsList?.isEmpty ?? true 
            ? SizedBox(
              width: size.width,
              height: 100,
              child: const Center(child: Text("No User Tips yet", style: TextStyle(color: primaryColor),),),
            )
            : ListView.separated(
              shrinkWrap: true,
              itemCount: userTipsList?.length ?? 0,
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
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            width: 60,
                            height: 60,
                            padding: userTipsList?[index].fromUser?.profilePhoto?.isEmpty ?? true ? const EdgeInsets.all(16) : EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(color: primaryColor, width: 4),
                              color: Colors.white,
                            ),
                            child: userTipsList?[index].fromUser?.profilePhoto?.isEmpty ?? true 
                                ? Image.asset("assets/icons/user.png")
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.network(userTipsList?[index].fromUser?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover,),
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
                                                "${userTipsList?[index].fromUser?.firstName ?? ""} ${userTipsList?[index].fromUser?.lastName ?? ""}",
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                '+\$${userTipsList?[index].netAmount ?? 0}',
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
                                                DateFormat('d MMM, h:mm a').format(userTipsList?[index].createdAt ?? DateTime.now()),
                                                style: const TextStyle(
                                                  color: kNevada,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                txnDetails[userTipsList?[index].type ?? ""],
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
                                                // statusDetails[userTipsList?[index].status ?? ''],
                                                userTipsList?[index].status ?? '',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: userTipsList?[index].status == 'canceled' 
                                                        ? Colors.red 
                                                        : userTipsList?[index].status == 'successful' 
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
