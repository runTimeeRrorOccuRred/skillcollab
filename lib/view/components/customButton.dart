// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final void Function()? onTap;
  final bool? isBusy;
  final Color? color;
  final Color? textColor;
  final bool? showShadow;

  const CustomButton(
      {super.key,
      required this.text,
      this.onTap,
      this.isBusy = false,
      this.color = primaryColor,
      this.showShadow = true,
      this.textColor = Colors.white,});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: !(widget.showShadow ?? true)
              ? []
              : [
                  const BoxShadow(
                    color: Color(0x3F1B9AAA),
                    blurRadius: 18,
                    offset: Offset(0, 8),
                  ),
                  const BoxShadow(
                    color: Color(0x0A141414),
                    blurRadius: 1,
                  ),
                ],
          color: widget.color,
          borderRadius: BorderRadius.circular(AppSizes.p4 + 1),
        ),
        child: Center(
          child: widget.isBusy ?? false
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }
}




class CustomButtonInverted extends StatefulWidget {
  final String text;
  final void Function()? onTap;
  final bool? isBusy;
  final Color? color;
  final Color? textColor;
  final bool? showShadow;

  const CustomButtonInverted(
      {super.key,
      required this.text,
      this.onTap,
      this.isBusy = false,
      this.color = primaryColor,
      this.showShadow = true,
      this.textColor = primaryColor,});

  @override
  State<CustomButtonInverted> createState() => _CustomButtonInvertedState();
}

class _CustomButtonInvertedState extends State<CustomButtonInverted> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: !(widget.showShadow ?? true)
              ? []
              : [
                  const BoxShadow(
                    color: Color(0x3F1B9AAA),
                    blurRadius: 18,
                    offset: Offset(0, 8),
                  ),
                  const BoxShadow(
                    color: Color(0x0A141414),
                    blurRadius: 1,
                  ),
                ],
          color: kWhite,
          borderRadius: BorderRadius.circular(AppSizes.p4 + 1),
        ),
        child: Center(
          child: widget.isBusy ?? false
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                )
              : Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }
}
