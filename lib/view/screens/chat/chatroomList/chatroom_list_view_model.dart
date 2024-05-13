import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final chatroomListViewModel = ChangeNotifierProvider((ref) => ChatroomListViewModel(ref: ref));

class ChatroomListViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ChatroomListViewModel({required this.ref});

  final UserRepoImpl _userRepoImpl = UserRepoImpl();

  /// GETTERS
  late List<QueryDocumentSnapshot<Map<String, dynamic>>> _userChatRoomIds;
  List<UserModel> _users = [];
  List<UserModel> _allusers = [];

  /// SETTERS
  List<QueryDocumentSnapshot<Map<String, dynamic>>> get userChatRoomIds => _userChatRoomIds;
  List<UserModel> get users => _users;
  List<UserModel> get allusers => _allusers;


  /// FUNCTIONS
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getChatRooms() async {
    final String selfUserId = AppConstants.userId;

    final chatrooms = await FirebaseFirestore.instance.collection("messages").orderBy('lastMessageTimestamp', descending: true).get();
    // Logger.printError(chatrooms.docs.toString());
    /// CHATROOMS OF USER
    final List<QueryDocumentSnapshot<Map<String, dynamic>>> chatroomsOfUsers = chatrooms.docs.where((element) => element.id.contains(selfUserId)).toList();
    print(chatroomsOfUsers);
    // _userChatRoomIds = chatroomsOfUsers;

    final List<QueryDocumentSnapshot<Map<String, dynamic>>> pinnedChats = [];
    final List<QueryDocumentSnapshot<Map<String, dynamic>>> unpinnedChats = [];
    for(int i = 0; i < chatroomsOfUsers.length; i++) {
      if(chatroomsOfUsers[i].data()['${AppConstants.userId}Pin'] == true && chatroomsOfUsers[i].data()['${AppConstants.userId}_deleted'] == false) {
        pinnedChats.add(chatroomsOfUsers[i]);
      } else if(chatroomsOfUsers[i].data()['${AppConstants.userId}Pin'] == false && chatroomsOfUsers[i].data()['${AppConstants.userId}_deleted'] == false) {
        unpinnedChats.add(chatroomsOfUsers[i]);
      }
    }

    _userChatRoomIds = [...pinnedChats, ...unpinnedChats];

    notifyListeners();
    return _userChatRoomIds;
  }


  Future<void> getUsers(BuildContext context) async {
    toggleLoading();
    _userRepoImpl.getUsers().then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _users = r;
          _allusers = users;
          Logger.printSuccess(r.toString());
          notifyListeners();

          // showCustomSnackBar(context, text: "Users fetched successfully", color: Colors.green);
        }
      );
    });
  }

  void filterList(List<UserModel> list) {
    _users = list;
    notifyListeners();
  }
}
