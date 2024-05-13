// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:skill_colab/utils/app_sizes.dart';

class CustomErrorPage extends ConsumerStatefulWidget {
  final FlutterErrorDetails errorDetails;
  const CustomErrorPage({super.key, required this.errorDetails});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => Custom_ErrorPageState();
}

class Custom_ErrorPageState extends ConsumerState<CustomErrorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/animations/error.json"),
          gapH16,
          // Text("Something went wrong...\n${StackTrace.current}", style: const TextStyle(fontWeight: FontWeight.bold),),
          const Text("Something went wrong...", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
