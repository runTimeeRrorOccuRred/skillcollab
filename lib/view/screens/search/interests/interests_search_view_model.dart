import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';

final interestsSearchViewModel = ChangeNotifierProvider((ref) => InterestsSearchViewModel(ref: ref));

class InterestsSearchViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  InterestsSearchViewModel({required this.ref});

  /// DATA MEMBERS
  bool _showAllResults = false;
  

  /// GETTERS
  bool get showAllResults => _showAllResults;


  /// SETTERS
  void toggleShowAllResults() {
    _showAllResults = !_showAllResults;
    notifyListeners();
  }
  


  /// OTHER METHODS
  String formatGroupNumberText(int number) {
    String res = "";
    if(number > 100) {
      res = "(100)+ groups";
    } else if(number > 1 && number <= 100) {
      res = "($number) groups";
    } else if(number == 1) {
      res = "1 group";
    }
    return res;
  }
}
