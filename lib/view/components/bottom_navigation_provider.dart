// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';

final bottomNavigationProvider = ChangeNotifierProvider((ref) => BottomNavigationProvider(ref: ref));

class BottomNavigationProvider extends BaseViewModel<BaseScreenView> {
  Ref ref;
  BottomNavigationProvider({required this.ref}) : super();

  /// DATA MEMBERS
  double _offset = 0.0; // Initial offset
  final double _containerHeight = 170; // Initial height of the container
  int _selectedIndex = 0;

  /// GETTERS
  double get offset => _offset;
  double get containerHeight => _containerHeight;
  int get selectedIndex => _selectedIndex;

  /// SETTERS
  void animateBottomNavigator(double direction) {    
    _offset += 10.0 * direction;
    if (_offset < 0) _offset = 0;
    if (_offset > _containerHeight) _offset = _containerHeight;
    // print(containerHeight);
    notifyListeners();
  }


  void changeSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }  
  /// OTHER METHODS
}
