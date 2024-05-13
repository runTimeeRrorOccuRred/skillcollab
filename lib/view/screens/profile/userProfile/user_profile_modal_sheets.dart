// ignore_for_file: avoid_dynamic_calls, division_optimization, use_build_context_synchronously

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_colab/data/remote/customerSubscribe/models/customer_subscribe_model.dart';
import 'package:skill_colab/data/remote/payment/add_bank/models/customer_add_bank_model.dart';
import 'package:skill_colab/data/remote/userSubscription/createSubsscriptionPlan/models/create_user_plan_model.dart';
import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/models/edit_subscription_plan_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/createGroup/addBankDetails/stripe_user_account_webview.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_subscribe_payment_webview.dart';

// ignore_for_file: file_names, duplicate_ignore
class UserSubscriptionModalBottomSheet extends ConsumerStatefulWidget {
  final Map<String, dynamic> monthlyPrice;
  final Map<String, dynamic> sixMonthPrice;
  final Map<String, dynamic> twelveMonthPrice;
  final String subUserId;
  const UserSubscriptionModalBottomSheet({super.key, required this.monthlyPrice, required this.sixMonthPrice, required this.twelveMonthPrice, required this.subUserId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSubscriptionModalBottomSheetState();
}

class _UserSubscriptionModalBottomSheetState extends ConsumerState<UserSubscriptionModalBottomSheet> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      // height: MediaQuery.of(context).size.height / 1.4,
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
          // height: MediaQuery.of(context).size.height / 1.4,
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              // "Monthly Subscriptions",
                              widget.monthlyPrice['unit_amount'] != 0 ? 'Monthly Subscription' : widget.sixMonthPrice['unit_amount'] != 0 ? 'Quaterly Subscription' : 'Yearly Subscription',
                              style: const TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 15),
                      Container(height: 2, width: MediaQuery.of(context).size.width * 0.9, color: Colors.grey.shade200,),
                      Stack(
                        alignment: Alignment.center,
                        children: [ListTile(
                          onTap: int.parse(widget.monthlyPrice['unit_amount'].toString()) != 0 ? () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          } : (){},
                          dense: true,
                          leading: const Image(image: AssetImage("assets/icons/imp.png"),),
                          title: const Text("Monthly Subscription", style: TextStyle(fontWeight: FontWeight.w600),),
                          subtitle: Text("\$${int.parse(widget.monthlyPrice['unit_amount'].toString()) / 100}", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),),
                          trailing: SizedBox(
                            height: 25,
                            width: 25,
                            child: selectedIndex == 0 ? Container(
                              height: 20,
                              width: 20,
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
                        if (int.parse(widget.monthlyPrice['unit_amount'].toString()) == 0) ClipRRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                child: Container(
                                  height: 40,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ) ,
                        ],
                      ),
                       Stack(
                        alignment: Alignment.center,
                         children: [ListTile(
                          onTap: int.parse(widget.sixMonthPrice['unit_amount'].toString()) != 0 ? () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          } : (){},
                          dense: true,
                          leading: const Image(image: AssetImage("assets/icons/imp.png"),),
                          title: const Text("6 Months Subscription", style: TextStyle(fontWeight: FontWeight.w600),),
                          subtitle: Text("\$${int.parse(widget.sixMonthPrice['unit_amount'].toString()) / 100}", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),),
                          trailing: SizedBox(
                            height: 25,
                            width: 25,
                            child: selectedIndex == 1 ? Container(
                              height: 20,
                              width: 20,
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
                          if (int.parse(widget.sixMonthPrice['unit_amount'].toString()) == 0) ClipRRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                child: Container(
                                  height: 40,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                         ],
                       ),
                  
                      Stack(
                        alignment: Alignment.center,
                        children: [ListTile(
                          onTap: int.parse(widget.twelveMonthPrice['unit_amount'].toString()) != 0 ? () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          } : (){},
                          dense: true,
                          leading: const Image(image: AssetImage("assets/icons/imp.png"),),
                          title: const Text("12 Months Subscription", style: TextStyle(fontWeight: FontWeight.w600),),
                          subtitle: Text("\$${int.parse(widget.twelveMonthPrice['unit_amount'].toString()) / 100}", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),),
                          trailing: SizedBox(
                            height: 25,
                            width: 25,
                            child: selectedIndex == 2 ? Container(
                              height: 20,
                              width: 20,
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
                        if (int.parse(widget.twelveMonthPrice['unit_amount'].toString()) == 0) ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                            child: Container(
                              height: 40,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      ref.read(userProfileViewModel).getCustomerSubscribeStripeLink(
                        context, 
                        CustomerSubscribeRequestModel(
                          groupId: "",
                          subscribeUserId: ref.read(userProfileViewModel).singleUserResponseModel.data?.id ?? '',
                          planId: selectedIndex == 0 ? widget.monthlyPrice['id'] : selectedIndex == 1 ? widget.sixMonthPrice['id'] : widget.twelveMonthPrice['id'],
                        ), 
                        ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? "",
                      ).then((value) {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => UserSubscribePaymentWebview(
                            paymentUrl: ref.read(userProfileViewModel).customerSubscribeResponseModel.data?.sessionUrl ?? "",
                          ),
                        ),).then((value) {
                          Navigator.pop(context);
                        }); 
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
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
                      child: ref.watch(userProfileViewModel).getPaymentLinkLoader 
                      ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,),))
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
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 28, right: 16),
                  child: Icon(Icons.close),
                ),
              ),
            ],
          ),
        ),
    );
  }
}


class UserSelfSubscribeModelSheet extends ConsumerStatefulWidget {
  final String userId;
  final String productName;
  const UserSelfSubscribeModelSheet({super.key, required this.userId, required this.productName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSelfSubscribeModelSheetState();
}

class _UserSelfSubscribeModelSheetState extends ConsumerState<UserSelfSubscribeModelSheet> with BaseScreenView{

 

  TextEditingController amountController = TextEditingController();

  final List<String> monthsList = ["1 Month", "6 Months", "12 Months"];
  String monthValue = "1 Month";

  final List<String> intervalsList = ["29th Dec 2022 - 28th Jan 2023", "29th Jan 2022 - 28th Feb 2023"];
  String intervalValue = "29th Dec 2022 - 28th Jan 2023";

  final List<String> currencyList = ['US Dollar', 'Indian Rupees'];
  String currencyValue = "US Dollar";

  final List<String> paymentList = ['Credit Card'];
  String paymentValue = 'Credit Card';

  late TextEditingController oneMonthSubController = TextEditingController();
  late TextEditingController sixMonthSubController = TextEditingController();
  late TextEditingController twelveMonthSubController = TextEditingController();

  bool loadBankAccount = false;

  late UserProfileViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _viewModel = ref.read(userProfileViewModel);
      // if(_viewModel.getCustomerPlanResponseModel.data != null || (_viewModel.getCustomerPlanResponseModel.data?.data?.isNotEmpty ?? false)) {
      //   oneMonthSubController = TextEditingController(text: _viewModel.getCustomerPlanResponseModel.data?.data?[2].toString());
      //   sixMonthSubController = TextEditingController(text: _viewModel.getCustomerPlanResponseModel.data?.data?[1].toString());
      //   twelveMonthSubController = TextEditingController(text: _viewModel.getCustomerPlanResponseModel.data?.data?[0].toString()); 
      // } else {
        
      // }
    });    

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(userProfileViewModel);
    return Container(
            width: size.width,
            height:  ref.watch(userProfileViewModel).singleUserResponseModel.data?.isKyc == null || 
                        ref.watch(userProfileViewModel).singleUserResponseModel.data?.isKyc == false || 
                        ref.watch(userProfileViewModel).singleUserResponseModel.data?.accountId == null ? size.height / 2.7 : size.height / 2.2,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: ref.watch(userProfileViewModel).singleUserResponseModel.data?.isKyc == null || 
                        ref.watch(userProfileViewModel).singleUserResponseModel.data?.isKyc == false || 
                        ref.watch(userProfileViewModel).singleUserResponseModel.data?.accountId == null 
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, 
                            icon: const Icon(Icons.close_rounded, color: Colors.black,),
                          ),
                        ],
                      ),
                      gapH20,
                      const Text(
                        "You dont seem to have a bank account.\nWe need your bank account details for you to create a subscription plan", 
                        textAlign: TextAlign.center,
                        style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      gapH20,
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: MaterialButton(
                          onPressed: () async {
                            if(!_viewModel.loading && !loadBankAccount){
                              await _viewModel.addBank(
                                context, AddBankRequestModel(
                                  email: ref.watch(selfDataProvider).singleUserResponseModel.data?.email,
                                  name: "${ref.watch(selfDataProvider).singleUserResponseModel.data?.firstName} ${ref.watch(selfDataProvider).singleUserResponseModel.data?.lastName}",
                                ),
                              ).then((value){
                                loadBankAccount = true;
                                Future.delayed(const Duration(seconds: 7), () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const StripeUserAccountWebView())).then((value) {
                                    setState(() {
                                      loadBankAccount = false;
                                    });
                                  });
                                }).then((value) => loadBankAccount = false);
                              });
                            }
                          },
                          color: primaryColor,
                          child: _viewModel.loading || loadBankAccount
                            ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)))
                            : const Text("Add Your Bank Account", style: TextStyle(color: kWhite),),
                        ),
                      ),
                    ],
                  )
                : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          icon: const Icon(Icons.close_rounded, color: Colors.black,),
                        ),
                      ],
                    ),
                    gapH20,
                    const Text(
                      "Add Subscription Plan", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    gapH20,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '1 Month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CommonTextField(
                                  padding: EdgeInsets.zero,
                                  hintText: "Price(\$)",
                                  keyboardType: TextInputType.number,
                                  controller: oneMonthSubController,
                                  validator: (p0) {
                                    if(p0?.isEmpty ?? true) {
                                      showCustomSnackBar(context, text: "You have to add 1 month subscription amount", color: Colors.red);
                                    }
                                    return null;
                                  },
                              ),
                            ],
                          ),
                        ),
                        gapW16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '6 Month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CommonTextField(
                                  padding: EdgeInsets.zero,
                                  hintText: "Price(\$)",
                                  keyboardType: TextInputType.number,
                                  controller: sixMonthSubController,
                                  validator: (p0) {
                                    if(p0?.isEmpty ?? true) {
                                      showCustomSnackBar(context, text: "You have to add 6 months subscription amount", color: Colors.red);
                                    }
                                    return null;
                                  },
                              ),
                            ],
                          ),
                        ),
                        gapW16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '12 Month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CommonTextField(
                                  padding: EdgeInsets.zero,
                                  hintText: "Price(\$)",
                                  keyboardType: TextInputType.number,
                                  controller: twelveMonthSubController,
                                  validator: (p0) {
                                    if(p0?.isEmpty ?? true) {
                                      showCustomSnackBar(context, text: "You have to add 12 months subscription amount", color: Colors.red);
                                    }
                                    return null;
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    gapH20,
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        onPressed: () {
                          if(!_viewModel.createUserPlanLoader){
                            final CreateUserPlanRequestModel createUserPlanRequestModel = CreateUserPlanRequestModel(
                              userId: _viewModel.singleUserResponseModel.data?.id ?? "",
                              productName: "${_viewModel.singleUserResponseModel.data?.id} subscription plan",
                              monthlyPlanAmount: int.parse(oneMonthSubController.text),
                              quartPlanAmount: int.parse(sixMonthSubController.text),
                              yearlyPlanAmount: int.parse(twelveMonthSubController.text),
                            );
                  
                            Logger.printSuccess(createUserPlanRequestModel.toString());
                            _viewModel.createUserPlan(context, createUserPlanRequestModel);
                          }
                        },
                        color: primaryColor,
                        child: _viewModel.createUserPlanLoader
                        ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)))
                        : const Text("Add Subscription Settings", style: TextStyle(color: kWhite),),
                        // child: _viewModel.createUserPlanLoader 
                        //     // ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,),),)
                        //     : const Text("Add Subscription Settings", style: TextStyle(color: kWhite),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}


class EditUserSelfSubscribeModelSheet extends ConsumerStatefulWidget {
  final String userId;
  final String productName;
  final Map<String, dynamic> monthlyPrice;
  final Map<String, dynamic> sixMonthPrice;
  final Map<String, dynamic> twelveMonthPrice;
  const EditUserSelfSubscribeModelSheet({super.key, required this.userId, required this.productName, required this.monthlyPrice, required this.sixMonthPrice, required this.twelveMonthPrice});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditUserSelfSubscribeModelSheetState();
}

class _EditUserSelfSubscribeModelSheetState extends ConsumerState<EditUserSelfSubscribeModelSheet> with BaseScreenView{

 

  TextEditingController amountController = TextEditingController();
  bool showButton = true;

  final List<String> monthsList = ["1 Month", "6 Months", "12 Months"];
  String monthValue = "1 Month";

  final List<String> intervalsList = ["29th Dec 2022 - 28th Jan 2023", "29th Jan 2022 - 28th Feb 2023"];
  String intervalValue = "29th Dec 2022 - 28th Jan 2023";

  final List<String> currencyList = ['US Dollar', 'Indian Rupees'];
  String currencyValue = "US Dollar";

  final List<String> paymentList = ['Credit Card'];
  String paymentValue = 'Credit Card';

  late TextEditingController oneMonthSubController = TextEditingController();
  late TextEditingController sixMonthSubController = TextEditingController();
  late TextEditingController twelveMonthSubController = TextEditingController();

  late UserProfileViewModel _viewModel;

  bool loader = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _viewModel = ref.read(userProfileViewModel);
      oneMonthSubController = TextEditingController(text: ((_viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Monthly") ?? false).toList()[0].unitAmount?.toDouble() ?? 0) / 100).toInt().toString());
      sixMonthSubController = TextEditingController(text: ((_viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Quarterly") ?? false).toList()[0].unitAmount?.toDouble() ?? 0) / 100).toInt().toString());
      twelveMonthSubController = TextEditingController(text: ((_viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Annual") ?? false).toList()[0].unitAmount?.toDouble() ?? 0) / 100).toInt().toString()); 
      setState(() {});
    });    

  }

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     _viewModel = ref.watch(userProfileViewModel);
    return Container(
            width: size.width,
            height: size.height / 2.2,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          icon: const Icon(Icons.close_rounded, color: Colors.black,),
                        ),
                      ],
                    ),
                    gapH20,
                    const Text(
                      "Update Subscription Settings", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    gapH20,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '1 Month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CommonTextField(
                                  padding: EdgeInsets.zero,
                                  hintText: "Price(\$)",
                                  keyboardType: TextInputType.number,
                                  controller: oneMonthSubController,
                                  validator: (p0) {
                                    if(p0?.isEmpty ?? true) {
                                      showCustomSnackBar(context, text: "You have to add 1 month subscription amount", color: Colors.red);
                                    }
                                    return null;
                                  },
                              ),
                            ],
                          ),
                        ),
                        gapW16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '6 Month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CommonTextField(
                                  padding: EdgeInsets.zero,
                                  hintText: "Price(\$)",
                                  keyboardType: TextInputType.number,
                                  controller: sixMonthSubController,
                                  validator: (p0) {
                                    if(p0?.isEmpty ?? true) {
                                      showCustomSnackBar(context, text: "You have to add 6 months subscription amount", color: Colors.red);
                                    }
                                    return null;
                                  },
                              ),
                            ],
                          ),
                        ),
                        gapW16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '12 Month',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CommonTextField(
                                  padding: EdgeInsets.zero,
                                  hintText: "Price(\$)",
                                  keyboardType: TextInputType.number,
                                  controller: twelveMonthSubController,
                                  validator: (p0) {
                                    if(p0?.isEmpty ?? true) {
                                      showCustomSnackBar(context, text: "You have to add 12 months subscription amount", color: Colors.red);
                                    }
                                    return null;
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    gapH20,
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        onPressed: () async {
                          setState(() {
                            loader = true;
                          });

                          // //! One month update
                          final EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModel0 = EditUserSubscriptionPlanRequestModel(
                            userId: _viewModel.singleUserResponseModel.data?.id ?? "",
                            productId: _viewModel.singleUserResponseModel.data?.productId ?? "",
                            planAmount: int.parse(oneMonthSubController.text),
                            planId: _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Monthly") ?? false).toList()[0].id,
                          );
                          // Logger.printInfo(editUserSubscriptionPlanRequestModel0.toString());
                          await _viewModel.updateCustomerPlan(context, editUserSubscriptionPlanRequestModel0);

                          // //! Six month update
                          final EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModel1 = EditUserSubscriptionPlanRequestModel(
                            userId: _viewModel.singleUserResponseModel.data?.id ?? "",
                            productId: _viewModel.singleUserResponseModel.data?.productId ?? "",
                            planAmount: int.parse(sixMonthSubController.text),
                            planId: _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Quarterly") ?? false).toList()[0].id,
                          );
                          await _viewModel.updateCustomerPlan(context, editUserSubscriptionPlanRequestModel1);

                          // //! Annual month update
                          final EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModel2 = EditUserSubscriptionPlanRequestModel(
                            userId: _viewModel.singleUserResponseModel.data?.id ?? "",
                            productId: _viewModel.singleUserResponseModel.data?.productId ?? "",
                            planAmount: int.parse(twelveMonthSubController.text),
                            planId: _viewModel.getCustomerPlanResponseModel.data?.data?.where((element) => element.nickname?.contains("Annual") ?? false).toList()[0].id,
                          );
                          await _viewModel.updateCustomerPlan(context, editUserSubscriptionPlanRequestModel2);                                                    


                          Future.delayed(const Duration(seconds: 10), () {
                            setState(() {
                              loader = false;
                            });
                            _viewModel.customerPlan(context, _viewModel.singleUserResponseModel.data?.productId ?? "");
                            Navigator.pop(context);
                          });

                          // Logger.printWarning(_viewModel.singleUserResponseModel.data?.productId ?? "");
                          // Logger.printWarning(editUserSubscriptionPlanRequestModel0.toString());
                          // Logger.printWarning(editUserSubscriptionPlanRequestModel1.toString());
                          // Logger.printWarning(editUserSubscriptionPlanRequestModel2.toString());
                          
                        },
                        color: primaryColor,
                        child: loader 
                          ? const Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)))
                          : const Text("Update Subscription Settings", style: TextStyle(color: kWhite),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}

// Future<void> showSelfUserSubscribeModalSheet(BuildContext context, String userId) async {
//   final size = MediaQuery.of(context).size;

//   TextEditingController amountController = TextEditingController();

//   final List<String> monthsList = ["1 Month", "6 Months", "12 Months"];
//   const String monthValue = "1 Month";

//   final List<String> intervalsList = ["29th Dec 2022 - 28th Jan 2023", "29th Jan 2022 - 28th Feb 2023"];
//   const String intervalValue = "29th Dec 2022 - 28th Jan 2023";

//   final List<String> currencyList = ['US Dollar', 'Indian Rupees'];
//   const String currencyValue = "US Dollar";

//   final List<String> paymentList = ['Credit Card'];
//   const String paymentValue = 'Credit Card';

//   return 
// }

Widget subscriptionTerms(String text) {
  return Row(
    children: [
      SvgPicture.asset("assets/icons/done.svg"),
      gapW6,
      Flexible(
        child: Text(text, maxLines: 2, style: TextStyle(color: Colors.grey[700]),),
      ),
    ],
  );
}

typedef OnValueChanged = void Function(String newValue);

Widget dropDownTextWidget({required String title, required String value, required List<String> valuesList, required OnValueChanged onValueChanged,}) {
  return StatefulBuilder(
    builder: (context, sheetSetState) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH8,
            Text(title, style: const TextStyle(color: kBlack, fontSize: 16, fontWeight: FontWeight.w500),),
            gapH8,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.3,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: InputDecorator(
                decoration: const InputDecoration(
                    // labelStyle: textStyle,
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  isEmpty: true,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: value,
                      isDense: true,
                      icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                      borderRadius: BorderRadius.circular(10),
                      onChanged: (String? newValue) {
                        sheetSetState(() {
                          onValueChanged(newValue ?? "");
                        });                              
                      },
                      items: valuesList.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
            ),
        ],
      );
    },
  );
}
