// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/analytics/analytics_view_model.dart';

class AllRecentTransactionsView extends ConsumerStatefulWidget {
  const AllRecentTransactionsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AllRecentTransactionsViewState();
}

class _AllRecentTransactionsViewState extends ConsumerState<AllRecentTransactionsView> {
  Map<String, dynamic> txnDetails = {
    "user": "User Subscription",
    "group": "Group Subscription",
    "userTip": "User Tip",
    "groupTip": "Group Tip",
    "": "",
  };

  @override
  Widget build(BuildContext context) {
    final _viewModel = ref.watch(analyticsViewModelProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
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
            'All Recent Transactions',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: _viewModel.transactionAndTipsResponseModel.data?.length ?? 0,
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) {
            return Divider(color: Colors.grey[200],);
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
                        padding: _viewModel.transactionAndTipsResponseModel.data?[index].fromUser?.profilePhoto?.isEmpty ?? true ? const EdgeInsets.all(16) : EdgeInsets.zero,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(color: primaryColor, width: 4),
                          color: Colors.white,
                        ),
                        child: _viewModel.transactionAndTipsResponseModel.data?[index].fromUser?.profilePhoto?.isEmpty ?? true 
                            ? Image.asset("assets/icons/user.png")
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image(image: NetworkImage( _viewModel.transactionAndTipsResponseModel.data?[index].fromUser?.profilePhoto ?? AppConstants.imageNotFoundLink), fit: BoxFit.cover,),
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
                                            "${_viewModel.transactionAndTipsResponseModel.data?[index].fromUser?.firstName ?? ""} ${_viewModel.transactionAndTipsResponseModel.data?[index].fromUser?.lastName ?? ""}",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            '+\$${_viewModel.getAnalyticsResponse?.data?.values?[index].netAmount ?? 0}',
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
                                            DateFormat('d MMM, h:mm a').format(_viewModel.getAnalyticsResponse?.data?.values?[index].createdAt ?? DateTime.now()),
                                            style: const TextStyle(
                                              color: kNevada,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            txnDetails[_viewModel.getAnalyticsResponse?.data?.values?[index].type ?? ""],
                                            style: const TextStyle(
                                              color: kNevada,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
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
    );
  }
}