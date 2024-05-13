import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/settings/settings_view_model.dart';

class SettingsView extends ConsumerStatefulWidget {
  const SettingsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsViewState();
}

class _SettingsViewState extends ConsumerState<SettingsView> with BaseScreenView {

  List<Map<String, dynamic>> tileNames = [
    {
      "icon": "assets/icons/viewProfile.png",
      "title": "View Profile",
    },
    {
      "icon": "assets/icons/earnings.png",
      "title": "Earnings",
    },
    {
      "icon": "assets/icons/passwordSecurity.png",
      "title": "Password & Security",
    },
    {
      "icon": "assets/icons/notification.png",
      "title": "Notification Settings",
    },
    {
      "icon": "assets/icons/privacyPolicy.png",
      "title": "Privacy Policy",
    },
    {
      "icon": "assets/icons/terms.png",
      "title": "Terms of service",
    },
    {
      "icon": "assets/icons/logout.png",
      "title": "Logout",
    },
  ];



  late SettingsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(settingsViewModel);
    _viewModel.attachView(this);
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(settingsViewModel);
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
                left: 10,
                top: 10,
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
          'Settings',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView.builder(
          itemCount: tileNames.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  _viewModel.settingsTileOnTap(context, index);
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: index == 6 ? 20 : 16),
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
                  child: Row(
                    children: [
                      Image.asset(
                        tileNames[index]['icon'],
                        color: index == 6 ? Colors.grey : null,
                        height: index == 6 ? 19 : null,
                        width: index == 6 ? 19 : null,
                      ),
                      gapW12,
                      Text(tileNames[index]['title'], style: const TextStyle(color: kGrey, fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
  
  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }
  
  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
