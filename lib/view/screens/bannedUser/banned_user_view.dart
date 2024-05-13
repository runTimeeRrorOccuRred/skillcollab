import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/app_sizes.dart';


class BannedUserPage extends ConsumerStatefulWidget {
  const BannedUserPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BannedUserPageState();
}

class _BannedUserPageState extends ConsumerState<BannedUserPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Action Blocked',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            gapH32,
            const Text('This action was blocked. Please try again later. We restrict certain content and action to protect our community. Tell us if you think we made a mistake'),
            gapH40,
            const Divider(
              thickness: 0.1,
            ),
            gapH12,
            Text(
              'Tell Us',
              style: TextStyle(
                color: Colors.blue[400],
                fontWeight: FontWeight.w800,
              ),
            ),
            gapH12,
            const Divider(
              thickness: 0.1,
            ),
            gapH12,
            GestureDetector(
              onTap: (){
                SharedPreferenceService.clearAll();
                GoogleSignIn().disconnect().then(
                  (value) => FirebaseAuth.instance.signOut(),
                );
                //showCustomSnackBar(context, text: "Logged out successfully", color: Colors.green);
                // context.pop();
                // context.pop();
                context.pushReplacementNamed(AppRoute.onboarding.name);
              },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}