// ignore_for_file: unused_field, use_build_context_synchronously

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/notifications/models/chat_notifications_model.dart';
import 'package:skill_colab/data/remote/notifications/notifications_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/file_picker.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/chat/chatroomList/chatroom_list_view_model.dart';
import 'package:uuid/uuid.dart';


final chatViewModel = ChangeNotifierProvider((ref) => ChatViewModel(ref: ref));

class ChatViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ChatViewModel({required this.ref});

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  final NotificationsRepoImpl _notificationsRepoImpl = NotificationsRepoImpl();

  /// DATA MEMBERS
  String _chatRoomId = "";
  bool _pictureUploadLoading = false;
  bool _audioUploadLoading = false;
  bool _documentUploadLoading = false;
  int _position = -1;

  /// GETTERS
  int get position => _position;
  String get chatRoomId => _chatRoomId;
  bool get pictureUploadLoading => _pictureUploadLoading;

  /// SETTERS
  void positionControl(int p){
    _position = p;
    notifyListeners();
  }

  /// FUNCTIONS
  Future<void> getChatRoomId(String user1Id, String user2Id) async {
    toggleLoading();
    try {
      final collectionRef = firebaseFirestore.collection("messages");
      final doc1 = await collectionRef.doc("${user1Id}_$user2Id").get();
      final doc2 = await collectionRef.doc("${user2Id}_$user1Id").get();
      if(doc1.exists) {
        _chatRoomId = "${user1Id}_$user2Id";
        firebaseFirestore.collection("messages").doc(_chatRoomId).update({
          "${AppConstants.userId}_deleted": false,
        });
      } else if(doc2.exists) {
        _chatRoomId = "${user2Id}_$user1Id";
        firebaseFirestore.collection("messages").doc(_chatRoomId).update({
          "${AppConstants.userId}_deleted": false,
        });
      } else {
        firebaseFirestore.collection("messages").doc("${user1Id}_$user2Id").set({
          "lastMessage": "",
          "lastMessageBy": "",
          "lastMessageTimestamp": DateTime.now(),
          "${user1Id}Pin": false,
          "${user2Id}Pin": false,
          "${user1Id}_deleted": false,
          "${user2Id}_deleted": false,
          "${user1Id}_blocked": false,
          "${user2Id}_blocked": false,
          "users": [user1Id, user2Id],     
        });

        _chatRoomId = "${user1Id}_$user2Id";
      }
      Logger.printSuccess("CHAT ROOM ID =====> $_chatRoomId");
      notifyListeners();
    } catch(e) {
      Logger.printError(e.toString());
      throw e.toString();
    }
    toggleLoading();
  }



  Future<void> pinUnpinChatRoom(String chatroomId) async {
    final collectionRef = firebaseFirestore.collection("messages");
    final data = await collectionRef.doc(chatroomId).get();
    final bool isPin = data.get("${AppConstants.userId}Pin");
    Logger.printSuccess(isPin.toString());
    collectionRef.doc(chatroomId).update({
      "${AppConstants.userId}Pin": !isPin,
    });
    ref.read(chatroomListViewModel).getChatRooms();  
  }


  void deleteChat(String chatroomId) {
    firebaseFirestore.collection("messages").doc(chatroomId).update({
      "${AppConstants.userId}_deleted": true,
    });
    ref.read(chatroomListViewModel).getChatRooms();  
  }


  Stream<QuerySnapshot> getChatMessage(String chatroomId) {
    return firebaseFirestore
      .collection("messages")
      .doc(chatroomId)
      .collection("messages_list")
      .orderBy("timestamp")
      .snapshots();
  }

  Future<String?> sendChatMessage({String? content}) async {
    final Map<String, dynamic> message = {
      "message": content,
      "sentBy": AppConstants.userId,
      "timestamp": DateTime.now(),
    };

    firebaseFirestore
      .collection("messages")
      .doc(_chatRoomId)
      .update({
        "lastMessage": content ?? "",
        "lastMessageBy": AppConstants.userId,
        "lastMessageTimestamp": DateTime.now(),
      });

    final String docID = const Uuid().v4();
    firebaseFirestore
      .collection("messages")
      .doc(_chatRoomId)
      .collection("messages_list")
      .doc(docID)
      .set(message)
      .toString();
    
    return docID;
  }


  Future<void> sendImageMessage(BuildContext context, ImageSource imageSource) async {
    await pickImage(imageSource).then((image) async {
      if (image == null) {
        showCustomSnackBar(context, text: "No photo picked", color: Colors.blueGrey[800]!);
      } else {
        _pictureUploadLoading = true;
        final String? docId = await sendChatMessage(content: "protocol:upload:image");        

        final String filePath = 'pictures/${image.path.split('/').last}';
        try {
          final TaskSnapshot uploadTask = await FirebaseStorage.instance
            .ref(filePath)
            .putFile(image);
          final String imageUrl = await uploadTask.ref.getDownloadURL();

          // sendChatMessage(content: imageUrl);
          firebaseFirestore
            .collection("messages")
            .doc(_chatRoomId)
            .update({
              "lastMessage": imageUrl,
              "lastMessageBy": AppConstants.userId,
              "lastMessageTimestamp": DateTime.now(),
            });

           firebaseFirestore
            .collection("messages")
            .doc(_chatRoomId)
            .collection("messages_list")
            .doc(docId)
            .update({
              "message": imageUrl,
              "sentBy": AppConstants.userId,
              "timestamp": DateTime.now(),
            });

          _pictureUploadLoading = false;
        } on FirebaseException catch(e) {
          Logger.printError(e.toString());
          _pictureUploadLoading = false;
          showCustomSnackBar(context, text: e.toString(), color: Colors.red);
        }
      }
    });
  }








          //! For Audio
          Future<void> sendAudioMessage(BuildContext context, String audioFilePath) async {
            if (audioFilePath.isEmpty) {
              showCustomSnackBar(context, text: "No audio recorded", color: Colors.blueGrey[800]!);
              return;
            }



            _audioUploadLoading = true;
            final String? docId = await sendChatMessage(content: "protocol:upload:audio");

            final String filePath = 'audio/${audioFilePath.split('/').last}';
            try {
              final TaskSnapshot uploadTask = await FirebaseStorage.instance
                .ref(filePath)
                .putFile(File(audioFilePath),);
              final String audioUrl = await uploadTask.ref.getDownloadURL();

              // Update your Firestore database as needed
              firebaseFirestore.collection("messages").doc(_chatRoomId).update({
                "lastMessage": audioUrl,
                "lastMessageBy": AppConstants.userId,
                "lastMessageTimestamp": DateTime.now(),
              });

              firebaseFirestore.collection("messages").doc(_chatRoomId).collection("messages_list").doc(docId).update({
                "message": audioUrl,
                "sentBy": AppConstants.userId,
                "timestamp": DateTime.now(),
              });

              _audioUploadLoading = false;
            } on FirebaseException catch (e) {
              Logger.printError(e.toString());
              _audioUploadLoading = false;
              showCustomSnackBar(context, text: e.toString(), color: Colors.red);
            }
          }


  //! For Doc

  Future<void> sendDocumentMessage(BuildContext context) async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result == null) {
    showCustomSnackBar(context, text: "No document picked", color: Colors.blueGrey[800]!);
    return;
  }

  final File documentFile = File(result.files.single.path!);
  final String fileExtension = path.extension(documentFile.path);

  if (!['.pdf', '.doc', '.docx', '.xlsx','.png', '.jpeg','.mp4'].contains(fileExtension.toLowerCase())) {
    showCustomSnackBar(context, text: "Unsupported file format", color: Colors.red);
    return;
  }

  _documentUploadLoading = true;
  final String? docId = await sendChatMessage(content: "protocol:upload:document");

  final String filePath = 'documents/SkillcolabDoc_${path.basename(documentFile.path)}'; // Modify the filePath
  try {
    final TaskSnapshot uploadTask = await FirebaseStorage.instance
      .ref(filePath)
      .putFile(documentFile);
    final String documentUrl = await uploadTask.ref.getDownloadURL();

    // Update Firestore database as needed
    firebaseFirestore.collection("messages").doc(_chatRoomId).update({
      "lastMessage": documentUrl,
      "lastMessageBy": AppConstants.userId,
      "lastMessageTimestamp": DateTime.now(),
    });

    firebaseFirestore.collection("messages").doc(_chatRoomId).collection("messages_list").doc(docId).update({
      "message": documentUrl,
      "sentBy": AppConstants.userId,
      "timestamp": DateTime.now(),
    });

    _documentUploadLoading = false;
  } on FirebaseException catch (e) {
    Logger.printError(e.toString());
    _documentUploadLoading = false;
    showCustomSnackBar(context, text: e.toString(), color: Colors.red);
  }
  
  }


  String encryptText(String text) {
    final aesKey = encrypt.Key.fromUtf8(AppConstants.userId);
    final iv = encrypt.IV.fromUtf8(AppConstants.userId.substring(0, 16));
    final encrypter = encrypt.Encrypter(encrypt.AES(aesKey),);
    return encrypter.encrypt(text, iv: iv).base64;
  }

  String decryptText(String text) {
    final aesKey = encrypt.Key.fromUtf8(AppConstants.userId);
    final iv = encrypt.IV.fromUtf8(AppConstants.userId.substring(0, 16));
    final encrypter = encrypt.Encrypter(encrypt.AES(aesKey));
    return encrypter.decrypt(encrypt.Encrypted.from64(text), iv: iv);
  }


  Future<void> sendChatNotification(ChatNotificationRequestModel chatNotificationRequestModel) async {
    _notificationsRepoImpl.sendChatNotification(chatNotificationRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) => Logger.printSuccess(r.toString()),
      );
    });
  }
}
