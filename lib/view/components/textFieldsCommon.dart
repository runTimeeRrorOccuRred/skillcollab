// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final int? maxlength;
  final EdgeInsets padding;
  final int? maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final bool? obsecureText;
  final bool? enabled;
  final bool? isCapital;
  final FocusNode? focusNode;
  final bool? isValidating;
  final Function()? onEditingComplete;
  final Function(String)? onChange;
  const CommonTextField({
    this.onEditingComplete,
    this.maxlength = 100,
    required this.hintText,
    this.enabled = true,
    this.isCapital = false,
    required this.controller,
    this.isValidating = false,
    Key? key,
    this.validator,
    this.padding = const EdgeInsets.only(
      left: AppSizes.p14,
      right: AppSizes.p14,
    ),
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.focusNode,
    this.suffixWidget,
    this.prefixWidget,
    this.obsecureText = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: maxLines! > 1 ? const EdgeInsets.symmetric(vertical: 16, horizontal: 4) : const EdgeInsets.symmetric(horizontal: 4),
            // padding: !(isValidating ?? true) ? const EdgeInsets.only(bottom: 16) : EdgeInsets.zero,
            // padding: EdgeInsets.only(bottom: 16),
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
            child: TextFormField(
              autocorrect: false,
              maxLines: maxLines,
              focusNode: focusNode,
              maxLength: maxlength,
              validator: validator,
              enabled: enabled,
              keyboardType: keyboardType,
              textCapitalization: TextCapitalization.sentences,
              obscureText: obsecureText!,
              onTapOutside: (PointerDownEvent event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onFieldSubmitted: (value) {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              onEditingComplete: () {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              onChanged: onChange,
              controller: controller,
              style: const TextStyle(color: kBlack),
              decoration: InputDecoration(
                counterText: "",
                contentPadding: const EdgeInsets.only(
                  left: 10,
                ),
                border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: kGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: suffixWidget,
                prefixIcon: prefixWidget,
              ),
            ),
          ),
          gapH10,
          if (isValidating ?? true) Text(validator?.call("").toString() ?? "") else Container(),
        ],
      ),
    );
  }
}


  InputDecoration textFormDecoration = const InputDecoration(
    counterText: "",
    contentPadding: EdgeInsets.only(
      left: 10,
    ),
    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    hintStyle: TextStyle(
      color: kGrey,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
