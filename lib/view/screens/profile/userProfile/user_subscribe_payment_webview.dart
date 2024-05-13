// ignore_for_file: avoid_dynamic_calls, use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/userSubscription/subscribeUser/models/subscribe_user_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
// import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UserSubscribePaymentWebview extends ConsumerStatefulWidget {
  final String paymentUrl;
  const UserSubscribePaymentWebview({super.key, required this.paymentUrl});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSubscribePaymentWebviewState();
}

class _UserSubscribePaymentWebviewState extends ConsumerState<UserSubscribePaymentWebview> {

  late WebViewController controller;

  @override
  void initState() {
    // TODO: implement initState
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onUrlChange: (change) async {
            Logger.printError("URL =====> ${change.url}");
            if(change.url?.contains("payment/success") ?? false) {
              final Response response = await Dio().get(change.url ?? "");
              Logger.printSuccess(response.data.toString());
              Logger.printError("${ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? ''} ${ref.read(userProfileViewModel).singleUserResponseModel.data?.id}");
              final String subscriptionId = response.data['data']['subscription'].toString();
              Logger.printError(subscriptionId);
              ref.read(userProfileViewModel).getUserById(context, ref.read(selfDataProvider).singleUserResponseModel.data?.id ?? '');
              ref.read(userProfileViewModel).subscribeUser(
                context,
                SubscribeUserRequestModel(
                  subscriptionId: subscriptionId,
                  subscribeUserId: ref.read(userProfileViewModel).singleUserResponseModel.data?.id,
                ),
                ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? '',
              ).then((value) {
                Navigator.pop(context);
                showCustomSnackBar(
                  context, 
                  text: "You have subscribed to ${ref.read(userProfileViewModel).singleUserResponseModel.data?.firstName ?? ""} successfully", 
                  color: Colors.green,
                );
              });
            } else if(change.url?.contains("payment/failure") ?? true) {
              showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Oops!", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                    content: const Text("Your bank account was not added due to some technical error. Please try again", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                    actions: [
                      TextButton(
                        onPressed: () async {
                          await ref.read(selfDataProvider).getUserById(context, AppConstants.userId).then((value) {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          });
                        }, 
                        child: const Text("Ok", style: TextStyle(color: primaryColor),),
                      ),
                    ],
                  );
                },
              );
            }
            // print(change.url.toString());
            // if(change.url.toString().contains("account-success")) {
            //   showDialog(
            //     context: context, 
            //     builder: (context) {
            //       return AlertDialog(
            //         title: const Text("Success!", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
            //         content: const Text("Your bank account was added successfully", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
            //         actions: [
            //           TextButton(
            //             onPressed: () async {
            //               await ref.read(selfDataProvider).getUserById(context, AppConstants.userId).then((value) {
            //                 Navigator.pop(context);
            //                 Navigator.pop(context);
            //               });
            //             }, 
            //             child: const Text("Ok", style: TextStyle(color: primaryColor),)
            //           )
            //         ],
            //       );
            //     },
            //   );
            // } else if(change.url.toString().contains("account-failure")) {
              // showDialog(
              //   context: context, 
              //   builder: (context) {
              //     return AlertDialog(
              //       title: const Text("Oops!", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
              //       content: const Text("Your bank account was not added due to some technical error. Please try again", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
              //       actions: [
              //         TextButton(
              //           onPressed: () async {
              //             await ref.read(selfDataProvider).getUserById(context, AppConstants.userId).then((value) {
              //               Navigator.pop(context);
              //               Navigator.pop(context);
              //             });
              //           }, 
              //           child: const Text("Ok", style: TextStyle(color: primaryColor),)
              //         )
              //       ],
              //     );
              //   },
              // );
            // }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));
    // });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: WebViewWidget(controller: controller),
        ),
      ),
    );
  }
}