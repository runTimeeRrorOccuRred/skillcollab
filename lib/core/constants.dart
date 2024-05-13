// ignore_for_file: constant_identifier_names

class AppConstants {
  static const userIdPref = 'userId';
  static const isOnboardingViewed = 'onboardingViewed';
  static const authToken = 'authtoken';
  static const refreshToken = 'refreshtoken';
  static const usertypePref = 'usertype';

  static String userProfilePhoto = "";
  static String userId = "";
  static String token = "";
  /// USER TYPE ====> 0 -> GUEST | 1 -> MEMBER
  static int usertype = 0;
  static String fcmToken = "";
  static  bool isNotificationToggled =true;

  static bool isProduction = false;

  static const String baseUrl = "https://shark-app-ks7sj.ondigitalocean.app/v1/";
  // static const String webUrl = "https://www.app.skillcollab.com/home/feeds/skill-4d4e9ffb";
  // static const String baseUrl = "https://www.api.skillcollab.com/v1/";

  static const List<String> chipNames = ["Google", "Apple", "Facebook"];
  static const List<String> chipIcons = [
    "assets/icons/google.png",
    "assets/icons/apple.png",
    "assets/icons/facebook.png",
  ];
  //api end points

  static const List<String> socialIcons = [
    "assets/icons/google.webp",
    "assets/icons/fb.webp",
    "assets/icons/apple.webp",
  ];

  static const imageNotFoundLink = "https://cdn-icons-png.flaticon.com/512/1548/1548682.png";

  static String formatColor(String colorData) {
    String finalColor = "";
    if(colorData.contains("#")) {
      finalColor = "0xff${colorData.substring(1)}";
    } else {
      finalColor = colorData;
    }

    return finalColor;
  }
}
