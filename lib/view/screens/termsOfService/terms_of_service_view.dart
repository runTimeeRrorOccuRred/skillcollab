import 'package:flutter/material.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsOfService extends StatefulWidget {
  const TermsOfService({super.key});

  @override
  State<TermsOfService> createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {

  late WebViewController controller;

  @override
  void initState() {
    super.initState();
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
        ),
      )
      ..loadRequest(Uri.parse('https://sea-lion-app-acw82.ondigitalocean.app/terms'));
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
            'Terms of service',
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
