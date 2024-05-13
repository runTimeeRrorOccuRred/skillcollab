// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final groupDescriptionViewModel = ChangeNotifierProvider((ref) => GroupDescriptionViewModel(ref: ref));

class GroupDescriptionViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  GroupDescriptionViewModel({required this.ref}) : super();

  /// DATA MEMBERS
  double _lat = 0;
  double _long = 0;
  CameraPosition _groupLocation = const CameraPosition(target: LatLng(22.57456610758227, 88.43059525421059), zoom: 1,);


  /// GETTERS
  double get lat => _lat;
  double get long => _long;
  CameraPosition get groupLocation => _groupLocation;


  /// SETTERS


  /// OTHER METHODS
  Future<void> getLatLong(String query) async {

    toggleLoading();

    final String address = query.split(" ").join("%20");
    // address = address.split(',').join();

    Logger.printWarning(query);
    Logger.printWarning(address);

    try {
      final response = await ApiClient().get(
        "https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14",
      );
      Logger.printSuccess(
        response.data!['results'][0]['geometry']['location'].toString(),
      );
      // final response = await ApiClient().get("https://maps.googleapis.com/maps/api/geocode/json?address=24%20Sussex%20Drive%20Ottawa%20ON&key=AIzaSyAjdNnw06XH3bUkAB6VZBU3w7ynnvk1b5I");
      final Map<String, dynamic> coords = response.data!['results'][0]['geometry']['location']
          as Map<String, dynamic>;

      _lat = coords['lat'];
      _long = coords['lng'];
      _groupLocation = CameraPosition(
        target: LatLng(_lat, _long),
        zoom: 15,
      );
      notifyListeners();
      toggleLoading();
    } catch (e) {
      Logger.printError(e.toString());
      toggleLoading();
    }
  }
}
