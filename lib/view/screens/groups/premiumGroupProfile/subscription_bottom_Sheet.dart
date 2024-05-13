// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_colab/data/remote/customerSubscribe/models/customer_subscribe_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
// import 'package:skill_colab/data/remote/payment/group/models/group_subscribe_model.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';

class SubscriptionModalBottomSheet extends ConsumerStatefulWidget {
  final Map<String, dynamic> monthlyPrice;
  final Map<String, dynamic> sixMonthPrice;
  final Map<String, dynamic> twelveMonthPrice;
  final String groupId;
  const SubscriptionModalBottomSheet({super.key, required this.monthlyPrice, required this.sixMonthPrice, required this.twelveMonthPrice, required this.groupId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SubscriptionModalBottomSheetState();
}

class _SubscriptionModalBottomSheetState extends ConsumerState<SubscriptionModalBottomSheet> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      // width: MediaQuery.of(context).size.width,
      // height: 2000,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Container(
          // height: 2000,
          // height: MediaQuery.of(context).size.height / 1.5,
          padding: EdgeInsets.all(16.h),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 14.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Monthly Subscriptions",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "\$${int.parse(widget.monthlyPrice['unit_amount'].toString()) / 100} / Month",
                              style: const TextStyle(
                                color: primaryColor,
                                fontSize: 30,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Select your subscription plan", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 15.h),
                      Container(height: 2.h, width: MediaQuery.of(context).size.width * 0.9, color: Colors.grey.shade200,),
                      ListTile(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        dense: true,
                        leading: const Image(image: AssetImage("assets/icons/imp.png"),),
                        title: const Text("Monthly Subscription", style: TextStyle(fontWeight: FontWeight.w600),),
                        subtitle: Text("\$${int.parse(widget.monthlyPrice['unit_amount'].toString()) / 100}", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),),
                        trailing: SizedBox(
                          height: 25.h,
                          width: 25.w,
                          child: selectedIndex == 0 ? Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: primaryColor,
                            ),
                            child: const Center(
                              child: Icon(Icons.done_rounded, color: Colors.white, size: 10,),
                            ),
                          ) : Container(),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        dense: true,
                        leading: const Image(image: AssetImage("assets/icons/imp.png"),),
                        title: const Text("6 Months Subscription", style: TextStyle(fontWeight: FontWeight.w600),),
                        subtitle: Text("\$${int.parse(widget.sixMonthPrice['unit_amount'].toString()) / 100}", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),),
                        trailing: SizedBox(
                          height: 25.h,
                          width: 25.w,
                          child: selectedIndex == 1 ? Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: primaryColor,
                            ),
                            child: const Center(
                              child: Icon(Icons.done_rounded, color: Colors.white, size: 10,),
                            ),
                          ) : Container(),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        dense: true,
                        leading: const Image(image: AssetImage("assets/icons/imp.png"),),
                        title: const Text("12 Months Subscription", style: TextStyle(fontWeight: FontWeight.w600),),
                        subtitle: Text("\$${int.parse(widget.twelveMonthPrice['unit_amount'].toString()) / 100}", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),),
                        trailing: SizedBox(
                          height: 25.h,
                          width: 25.h,
                          child: selectedIndex == 2 ? Container(
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: primaryColor,
                            ),
                            child: const Center(
                              child: Icon(Icons.done_rounded, color: Colors.white, size: 10,),
                            ),
                          ) : Container(),
                        ),
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                  InkWell(
                    onTap: () async {
                      await ref.read(premiumGroupProfileViewModel).getCustomerSubscribeStripeLink(
                        context, 
                        CustomerSubscribeRequestModel(
                          groupId: widget.groupId,
                          planId: selectedIndex == 0 ? widget.monthlyPrice['id'] : selectedIndex == 1 ? widget.sixMonthPrice['id'] : widget.twelveMonthPrice['id'],
                          subscribeUserId: "",
                        ), 
                        ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? "",
                      );
                      Future.delayed(const Duration(seconds: 4), () {
                        setState(() {});
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: selectedIndex == -1 ? Colors.grey : primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F1B9AAA),
                            blurRadius: 18,
                            offset: Offset(0, 8),
                          ),
                          BoxShadow(
                            color: Color(0x0A141414),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: ref.watch(premiumGroupProfileViewModel).getPaymentLinkLoader 
                        ? const Center(child: CircularProgressIndicator(color: kWhite,),)
                        : Text(
                            'Buy Now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: selectedIndex == -1 ? Colors.grey[800] : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                  ),
                  // SizedBox(height: 32.h,),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 28.h, right: 16.w),
                  child: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
