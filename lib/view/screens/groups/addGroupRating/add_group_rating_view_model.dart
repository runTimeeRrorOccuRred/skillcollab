import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/groups/addRating/add_rating_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/addRating/models/add_group_rating_request_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

final addGroupRatingViewModel = ChangeNotifierProvider((ref) => AddGroupRatingViewModel(ref: ref));

class AddGroupRatingViewModel extends BaseViewModel<BaseScreenView>{
  Ref ref;
  AddGroupRatingViewModel({required this.ref});

  final AddGroupRatingRepoImpl _addGroupRatingRepoImpl = AddGroupRatingRepoImpl();
  

  //DATA MEMBERS
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController reviewController = TextEditingController();
  double _rating = 1;

  //GETTER
  double get rating => _rating;

  //SETTER
  void addRatingValue(double ratings){
    _rating = ratings;
    notifyListeners();
  }

  Future<void> addGroupRating(BuildContext context, AddGroupRatingRequestModel addGroupRatingRequestModel, String groupId)async{
    toggleLoading();
    _addGroupRatingRepoImpl.addGroupRating(addGroupRatingRequestModel, groupId).then((value){
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          Logger.printSuccess(r.toString());
          ref.read(publicGroupProfileViewModel).getGroupRating(context, groupId);
          context.pop();
          clearAllData();
        }
       );
    });
  }

  void clearAllData() {
    usernameController.clear();
    emailController.clear();
    titleController.clear();
    reviewController.clear();
    _rating = 1;
    notifyListeners();
  }
}
