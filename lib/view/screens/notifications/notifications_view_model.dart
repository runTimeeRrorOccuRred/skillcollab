import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/follow_status_action_model.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/user_follow_status_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/getSingleQuestion/get_single_question_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/getSingleQuestion/models/get_single_question_model.dart';
import 'package:skill_colab/data/remote/tutorial/getSingleTutorial/get_single_tutorial_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/getSingleTutorial/models/get_single_tutorial_model.dart';
import 'package:skill_colab/data/remote/user/models/single_user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/utils.dart';

final notificationsViewModel = ChangeNotifierProvider((ref) => NotificationsViewModel(ref: ref));

class NotificationsViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  NotificationsViewModel({required this.ref}) : super();

  final GetSingleQuestionRepoImpl _getSingleQuestionRepoImpl = GetSingleQuestionRepoImpl();
  final GetSingleTutorialRepoImpl _getSingleTutorialRepoImpl = GetSingleTutorialRepoImpl();
  final UserFollowStatusRepoImpl _userFollowStatusRepoImpl = UserFollowStatusRepoImpl();
  final UserRepoImpl _userRepoImpl = UserRepoImpl();

  /// DATA MEMBERS
  GetSingleQuestionResponseModel _getSingleQuestionResponseModel = const GetSingleQuestionResponseModel();
  GetSingleTutorialResponseModel _getSingleTutorialResponseModel = const GetSingleTutorialResponseModel();
  FollowStatusActionResponseModel _followStatusActionResponseModel = const FollowStatusActionResponseModel();
  SingleUserResponseModel _singleUserResponseModel = const SingleUserResponseModel();

  /// GETTERS
  GetSingleQuestionResponseModel get getSingleQuestionResponseModel => _getSingleQuestionResponseModel;
  GetSingleTutorialResponseModel get getSingleTutorialResponseModel => _getSingleTutorialResponseModel;
  FollowStatusActionResponseModel get followStatusActionResponseModel => _followStatusActionResponseModel;
  SingleUserResponseModel get singleUserResponseModel => _singleUserResponseModel;


  /// SETTERS


  /// OTHER METHODS
  
  Future<void> getSingleQuestionData(String questionId) async {
    toggleLoading();
    _getSingleQuestionRepoImpl.getSingleQuestionData(questionId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getSingleQuestionResponseModel = r;
          Logger.printSuccess(_getSingleQuestionResponseModel.toString());
          notifyListeners();

          Logger.printInfo(_getSingleQuestionResponseModel.data?[0].toJson().toString() ?? "");
        }
      );
    });
  }


  Future<void> getSingleTutorialData(String tutorialId) async {
    toggleLoading();
    _getSingleTutorialRepoImpl.getSingleTutorialData(tutorialId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getSingleTutorialResponseModel = r;
          Logger.printSuccess(_getSingleTutorialResponseModel.toString());
          notifyListeners();

          Logger.printInfo(_getSingleTutorialResponseModel.data?[0].toJson().toString() ?? "");
        }
      );
    });
  }


  Future<void> followGroupAction(FollowStatusActionRequestModel followStatusActionRequestModel, String groupId) async {
    // toggleLoading();
    await _userFollowStatusRepoImpl.followStatusAction(followStatusActionRequestModel, groupId).then((value) {
      // toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _followStatusActionResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_followStatusActionResponseModel.toString());
        }
      );
    });
  }


  Future<void> getUserById(BuildContext context, String userId) async {
    toggleLoading();
    await _userRepoImpl.getSingleUser(userId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message),
        (r) {
          _singleUserResponseModel = r;
          notifyListeners();
      });
    });
  }


  String formatDateTime(DateTime inputDateTime) {
    final DateTime now = DateTime.now();
    final Duration difference = now.difference(inputDateTime);

    if (difference.inHours < 24) {
      // Less than 24 hours, show in hours
      return '${difference.inHours} hours ago';
    } else {
      // More than 24 hours, show "month day at hh:mm"
      return '${getMonthName(inputDateTime.month)} ${inputDateTime.day} at ${inputDateTime.hour.toString().padLeft(2, '0')}:${inputDateTime.minute.toString().padLeft(2, '0')}';
    }
  }

  String getMonthName(int month) {
    const monthNames = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun",
      "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
    ];
    return monthNames[month - 1];
  }


  Text styleSentence(String sentence) {
    // Split the sentence into words
    final List<String> words = sentence.split(' ');

    // Handling sentences with less than three words
    if (words.length < 3) {
      return Text.rich(
        TextSpan(
          children: words.map((word) => TextSpan(text: '$word ', style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w600))).toList(),
        ),
      );
    }

    // Create TextSpans for the first two, middle, and last words
    final TextSpan firstTwoWords = TextSpan(
      text: '${words.sublist(0, 2).join(' ')} ',
      style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
    );

    final TextSpan middleWords = TextSpan(
      text: '${words.sublist(2, words.length - 1).join(' ')} ',
      style: const TextStyle(color: Colors.grey),
    );

    final TextSpan lastWord = TextSpan(
      text: words.last,
      style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
    );

    // Combining the TextSpans into a Text.rich widget
    return Text.rich(
      TextSpan(
        children: [firstTwoWords, middleWords, lastWord],
      ),
    );
  }
}
