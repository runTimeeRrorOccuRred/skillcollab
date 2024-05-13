// ignore_for_file: file_names, must_be_immutable, eol_at_end_of_file, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/view/components/customButton.dart';

class GuestLoginRequestWidget extends ConsumerStatefulWidget {
  String? text;
  GuestLoginRequestWidget({super.key, required this.text});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GuestLoginRequestWidgetState();
}

class _GuestLoginRequestWidgetState extends ConsumerState<GuestLoginRequestWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Sign in or sign up\n${widget.text}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
        gapH16,
        Row(
          children: [
            gapW12,
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // GoRouter.of(context).pushReplacementNamed(AppRoute.signinView.name);
                  
                  context.pushReplacementNamed(AppRoute.onboarding.name);
                  
                  
                },
                child: const CustomButton(
                  text: "Sign in",
                ),
              ),
            ),
            gapW16,
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.pushReplacementNamed(AppRoute.onboarding.name);
                },
                child: const CustomButton(
                  text: "Sign up",
                ),
              ),
            ),
            gapW12,
          ],
        ),
        gapH16,
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
    );
  }
}