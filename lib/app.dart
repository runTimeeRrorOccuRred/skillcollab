// import 'package:device_preview/device_preview.dart';
// ignore_for_file: use_named_constants, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_colab/domain/providers/router_provider.dart';
import 'package:skill_colab/utils/themes.dart';
import 'package:skill_colab/view/components/error_page.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final goRouter = ref.watch(routerProvider);
    // final themeManager = ref.watch(themeProvider);
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child)  {
        return MaterialApp.router(
          
          routeInformationParser: goRouter.routeInformationParser,
          routerDelegate: goRouter.routerDelegate,
          routeInformationProvider: goRouter.routeInformationProvider,
          theme: AppThemes.lightTheme,
          // useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
          builder: (context, child) {
            ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
              return CustomErrorPage(errorDetails: errorDetails);
            };

            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            );
            
          },
          // darkTheme: AppThemes.darkTheme,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
