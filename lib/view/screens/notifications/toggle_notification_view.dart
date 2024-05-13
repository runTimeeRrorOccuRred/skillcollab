// ignore_for_file: always_declare_return_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';

class ToggleNotificationView extends StatefulWidget {
  const ToggleNotificationView({super.key});

  @override
  State<ToggleNotificationView> createState() => _ToggleNotificationViewState();
}

class _ToggleNotificationViewState extends State<ToggleNotificationView> {



   @override
  void initState() {
    super.initState();
    _loadNotificationStatus();
  }

   _loadNotificationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      AppConstants.isNotificationToggled = prefs.getBool('isNotification') ?? true;
    });
  }

   _saveNotificationStatus(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isNotification', value);
  }
  @override
  Widget build(BuildContext context) {
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
                  left: 7,
                  top: 8,
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
            'Notification Settings',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Container(
                  padding: const EdgeInsets.all(20),
                 // decoration: boxDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Allow notification",
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [CustomBoxShadow()],
                        ),
                        child: FlutterSwitch(
                          height: 25.h,
                          width: 48.w,
                          toggleSize: 18.0.h,
                          inactiveToggleColor: primaryColor,
                          activeColor: primaryColor,
                          inactiveColor:Colors.white.withOpacity(
                          0.3,
                        ),
                          value:AppConstants.isNotificationToggled,
                          onToggle: (value) {
                            setState(() {
                              AppConstants.isNotificationToggled = value;
                              _saveNotificationStatus(value);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
