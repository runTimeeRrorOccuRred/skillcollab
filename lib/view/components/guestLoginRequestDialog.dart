// ignore_for_file: file_names, eol_at_end_of_file

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/customButton.dart';

Future<void> guestLoginRequestDialog(BuildContext context, String text) async {
  return showDialog(
    context: context, 
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text("Locked", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primaryColor),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Sign in or sign up\n$text", style: TextStyle(color: Colors.grey[600]), textAlign: TextAlign.center,),
            gapH16,
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.3,
              child: GestureDetector(
                onTap: () {
                  context.pop();
                  context.pushReplacementNamed(AppRoute.onboarding.name);
                },
                child: const CustomButton(
                  text: "Sign in",
                ),
              ),
            ),
            gapH8,
            SizedBox(
              height: 50,
              child: GestureDetector(
                onTap: () {
                  context.pop();
                  context.pushReplacementNamed(AppRoute.onboarding.name);
                },
                child: const CustomButtonInverted(
                  text: "Sign up",
                ),
              ),
            ),
            // gapH16,
            // const Padding(
            //   padding: EdgeInsets.only(left: 8.0),
            //   child: Text(
            //     "or continue with",
            //     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            //   ),
            // ),
            // gapH16,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ...List.generate(
            //       AppConstants.socialIcons.length,
            //       (index) => Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           const SizedBox(
            //             width: AppSizes.p20,
            //           ),
            //           Image.asset(
            //             AppConstants.socialIcons[index],
            //             height: 35,
            //           ),
            //           if(index == 2) const SizedBox(
            //             width: AppSizes.p16,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      );
    },
  );
}