import 'package:flutter/material.dart';
import 'package:skill_colab/routes/app_routes.dart';

mixin BaseScreenView {
  void showSnackbar(String message, {Color? color});
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params});
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params});
}
