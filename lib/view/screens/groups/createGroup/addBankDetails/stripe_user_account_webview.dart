import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StripeUserAccountWebView extends ConsumerStatefulWidget {
  const StripeUserAccountWebView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StripeUserAccountWebViewState();
}

class _StripeUserAccountWebViewState extends ConsumerState<StripeUserAccountWebView> {

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
          onUrlChange: (change) {
            Logger.printError(change.url.toString());
            if(change.url.toString().contains("account-success")) {
              Navigator.pop(context);
              Navigator.pop(context);
              // showDialog(
              //   context: context, 
              //   builder: (context) {
              //     return AlertDialog(
              //       title: const Text("Success!", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
              //       content: const Text("Your bank account was added successfully", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
              //       actions: [
              //         TextButton(
              //           onPressed: () async {
              //             await ref.read(selfDataProvider).getUserById(context, AppConstants.userId).then((value) {
              //               Navigator.pop(context);
              //               Navigator.pop(context);
              //             });
              //           }, 
              //           child: const Text("Ok", style: TextStyle(color: primaryColor),),
              //         ),
              //       ],
              //     );
              //   },
              // );
            } else if(change.url.toString().contains("account-failure")) {
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
          },
        ),
      )
      ..loadRequest(Uri.parse(ref.read(userProfileViewModel).addBankResponseModel.data?.accountLink ?? ''));
    // });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            'Add Bank Account',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      body: WebViewWidget(controller: controller),
    );
  }
}