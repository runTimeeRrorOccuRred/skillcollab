// import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: constant_identifier_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/app.dart';
import 'package:skill_colab/helpers/locator.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/utils.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment extends ConsumerWidget {
  Environment() {
    _init();    
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    // await FirebaseMessagingProvider.init();
    await SharedPreferenceService.init();

    try {
      setupServiceLocator();
    } catch (e) {
      Logger.printWarning(e.toString());
    }    

    runApp(
      const ProviderScope(
          child: MyApp(),
        ),
    );
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is stack_trace.Trace) return stack.vmTrace;
      if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
      return stack;
    };
  }
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
