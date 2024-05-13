// ignore_for_file: avoid_dynamic_calls, deprecated_member_use, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/components/shimmer.dart';
import 'package:skill_colab/view/screens/chat/chatroom/chat_view_model.dart';
import 'package:skill_colab/view/screens/chat/chatroomList/chatroom_list_view_model.dart';

class ChatroomListView extends ConsumerStatefulWidget {
  const ChatroomListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatroomListViewState();
}

class _ChatroomListViewState extends ConsumerState<ChatroomListView> {  
  late ChatroomListViewModel _viewModel;
  List<String> pinnedItems = []; 

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(chatroomListViewModel);
      _viewModel.getUsers(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(chatroomListViewModel);
    return PopScope(
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{
            context.pop();
          }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Chat',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: InkWell(
            onTap: () {
              context.pushNamed(AppRoute.settings.name);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 10,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.settings_outlined,
                  color: primaryColor,
                  size: 20,
                ),
              ),
            ),
          ),
          actions: [
            // Visibility(
            //   visible: AppConstants.usertype == 1,
            //   child: InkWell(
            //     onTap: () {
            //       context.pushNamed(AppRoute.blockedChatUsers.name);
            //     },
            //     child: Container(
            //       margin: const EdgeInsets.only(right: 8),
            //       height: 35,
            //       width: 35,
            //       decoration: const BoxDecoration(
            //         color: Color(0xFFF3F5F6),
            //         shape: BoxShape.circle,
            //       ),
            //       child: Center(
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: SvgPicture.asset("assets/icons/block-user.svg", color: primaryColor,),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () {
                if(AppConstants.usertype == 1) {
                  context.pushNamed(AppRoute.chatRoomSearch.name);
                } else {
                  guestLoginRequestDialog(context, "to chat with other users");
                }
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 10,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F5F6),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset("assets/icons/edit.svg"),
                ),
              ),
            ),
            gapW4,
          ],
        ),
      
        body: AppConstants.usertype == 1
          ? SingleChildScrollView(
              child: Container(
                height: size.height,
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: !_viewModel.loading 
                  ? Column(
                    children: [
                      GestureDetector(
                        onTap: () => context.pushNamed(AppRoute.chatRoomSearch.name),
                        child: Container(
                          height: 42,
                          padding: const EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xffF3F5F6),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            style: const TextStyle(fontSize: 12, color: kGrey, fontWeight: FontWeight.w600),
                            enabled: false,
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Search",
                              hintStyle: const TextStyle(fontSize: 12, color: kGrey, fontWeight: FontWeight.w600),
                              suffixIcon: Image.asset("assets/icons/search_bar_icon.png",),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FutureBuilder(
                          future: _viewModel.getChatRooms(),
                          builder: (context, snapshot) {
                            if(!snapshot.hasData) {
                              // return const Center(child: CircularProgressIndicator(color: primaryColor,),);
                              return ShimmerWidgets.chatShimmerWidget(context);
                            } else {
      
                              if(snapshot.data?.isEmpty ?? false) {
                                return const Center(child: Text("No Chats ;-;", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 18),),);
                              }                            
      
                              return ListView.separated(
                                itemCount: snapshot.data?.length ?? 0,
                                separatorBuilder: (context, index) {
                                  return const Divider(color: Colors.grey,);
                                },
                                itemBuilder: (context, index) {                                
      
                                  final String peerId = (snapshot.data?[index]['users'][0] ?? "") == AppConstants.userId 
                                      ? (snapshot.data?[index].data()['users'][1] ?? "")
                                      : (snapshot.data?[index].data()['users'][0] ?? "");
      
                                  final UserModel peerUserModel = _viewModel.users.where((element) => element.id == peerId).toList()[0];
                                  
      
                                  return GestureDetector(
                                    onTap: () {
                                      context.pushNamed(AppRoute.chatRoom.name, extra: peerUserModel).then((value) {
                                        _viewModel.getChatRooms();
                                        setState(() {});
                                      });
                                      Logger.printInfo(peerUserModel.toString());
                                    },
      
                                    onLongPress: () {
                                      showModalBottomSheet(
                                        context: context, 
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                        ),
                                        builder: (context) {
                                          return Container(
                                            height: 280,
                                            width: size.width,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30),
                                              ),
                                            ),
                                            padding: const EdgeInsets.all(16),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      padding: peerUserModel.profilePhoto == null || !(peerUserModel.profilePhoto?.contains("https://skill") ?? true)
                                                          ? const EdgeInsets.all(8) : EdgeInsets.zero,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                      ),
                                                      child: peerUserModel.profilePhoto == null || !(peerUserModel.profilePhoto?.contains("https://skill") ?? true)
                                                        ? Image.asset("assets/icons/user.png")
                                                        : ClipRRect(
                                                          borderRadius: BorderRadius.circular(50),
                                                            child: Image(image: NetworkImage(peerUserModel.profilePhoto ?? AppConstants.imageNotFoundLink, ), fit: BoxFit.cover,)
                                                          ),
                                                    ),
                                                    gapW10,
                                                    Text(
                                                      "${peerUserModel.firstName ?? ""} ${peerUserModel.lastName ?? ""}", 
                                                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor),
                                                    ),
                                                    const Spacer(),
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      }, 
                                                      icon: const Icon(Icons.close),
                                                    ),
                                                  ],
                                                ),
                                                gapH32,
                                                ListTile(
                                                  leading: snapshot.data?[index].data()['${AppConstants.userId}Pin'] ? const Icon(Icons.push_pin) : const Icon(Icons.push_pin_outlined),
                                                  title: snapshot.data?[index].data()['${AppConstants.userId}Pin'] ? const Text("Unpin") : const Text("Pin"),
                                                  onTap: () {
                                                    ref.read(chatViewModel).pinUnpinChatRoom(snapshot.data?[index].id ?? "");
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                Container(
                                                  width: size.width,
                                                  height: 1,
                                                  color: Colors.grey[300],
                                                  padding: const EdgeInsets.all(10),
                                                  // margin: const EdgeInsets.symmetric(vertical: 10),
                                                ),
                                                ListTile(
                                                  leading: const Icon(Icons.delete_outline_rounded),
                                                  title: const Text("Delete"),
                                                  onTap: () {
                                                    ref.read(chatViewModel).deleteChat(snapshot.data?[index].id ?? "");
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                // Container(
                                                //   width: size.width,
                                                //   height: 1,
                                                //   color: Colors.grey[300],
                                                //   padding: const EdgeInsets.all(10),
                                                // ),
                                                // ListTile(
                                                //   onTap: () async {
                                                //     showDialog(
                                                //       context: context,
                                                //       builder: (context) {
                                                //         return AlertDialog(
                                                //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                //           backgroundColor: kWhite,
                                                //           title: Text("Block ${peerUserModel.firstName}", style: const TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                                //           content: Text("Are you sure you want to block ${peerUserModel.firstName}", style: const TextStyle(color: primaryColor),),
                                                //           actions: [
                                                //             TextButton(
                                                //               onPressed: () {
                                                //                 Navigator.pop(context);
                                                //               }, 
                                                //               child: const Text("No", style: TextStyle(color: Colors.red),),
                                                //             ),
                                                //             TextButton(
                                                //               onPressed: () async {
                                                //                 final docsnapshot = await FirebaseFirestore.instance.collection("blocked_users").doc(AppConstants.userId).get();
                                                //                 print(docsnapshot.exists);
                                                //                 if(!docsnapshot.exists) {
                                                //                   FirebaseFirestore.instance.collection("blocked_users").doc(AppConstants.userId).set({
                                                //                     "blocks": [peerId],
                                                //                   });
                                                //                   FirebaseFirestore.instance.collection("messages").doc(snapshot.data?[index].id ?? "").set({
                                                //                     "${peerId}_blocked": true,
                                                //                     "users": [AppConstants.userId, peerId],
                                                //                   });
                                                //                 } else {
                                                //                   FirebaseFirestore.instance.collection("blocked_users").doc(AppConstants.userId).update({
                                                //                     "blocks": FieldValue.arrayUnion([peerId]),
                                                //                   });
                                                //                   FirebaseFirestore.instance.collection("messages").doc(snapshot.data?[index].id ?? "").set({
                                                //                     "${peerId}_blocked": true,
                                                //                     "users": [AppConstants.userId, peerId],
                                                //                   });
                                                //                 }
      
                                                //                 Navigator.pop(context);
                                                //               }, 
                                                //               child: const Text("Yes", style: TextStyle(color: primaryColor),),
                                                //             ),
                                                //           ],
                                                //         );
                                                //       },
                                                //     );
                                                //   },
                                                //   leading: const Icon(Icons.block),
                                                //   title: const Text("Block"),
                                                // ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
      
      
                                    child: Slidable(
                                      key: const ValueKey(0),
                                      startActionPane: ActionPane(
                                        // A motion is a widget used to control how the pane animates.
                                        motion: const DrawerMotion(),
      
                                        // A pane can dismiss the Slidable.
                                        // dismissible: DismissiblePane(onDismissed: () {}),
      
                                        // All actions are defined in the children parameter.
                                        children: [
                                          // A SlidableAction can have an icon and/or a label.
                                          SlidableAction(
                                            onPressed: (context) {
                                              ref.read(chatViewModel).deleteChat(snapshot.data?[index].id ?? "");
                                            },
                                            backgroundColor: const Color(0xFFFE4A49),
                                            foregroundColor: Colors.white,
                                            icon: Icons.delete,
                                            label: 'Delete',
                                          ),
                                          SlidableAction(
                                            onPressed: (context) {
                                              ref.read(chatViewModel).pinUnpinChatRoom(snapshot.data?[index].id ?? "");
                                              // print(snapshot.data?[index].id ?? "");
                                            },
                                            backgroundColor: const Color(0xFF21B7CA),
                                            foregroundColor: Colors.white,
                                            icon: snapshot.data?[index].data()['${AppConstants.userId}Pin'] ? Icons.location_off_rounded : Icons.location_on_rounded,
                                            label: snapshot.data?[index].data()['${AppConstants.userId}Pin'] ? "Unpin" : "Pin",
                                          ),
                                        ],
                                      ),
                                      
                                      child: Container(
                                        height: 60,
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                          top: index == 0 ? 20 : 0,
                                        ),
                                        child: Row(
                                          children: [
                                            // const CircleAvatar(
                                            //   backgroundImage:  AssetImage("assets/icons/peoplePic.png"),
                                            //   backgroundColor: kWhite,
                                            //   radius: 26,
                                            // ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              padding: peerUserModel.profilePhoto == null || !(peerUserModel.profilePhoto?.contains("https://skill") ?? true)
                                                  ? const EdgeInsets.all(8) : EdgeInsets.zero,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                              ),
                                              child: peerUserModel.profilePhoto == null || !(peerUserModel.profilePhoto?.contains("https://skill") ?? true)
                                                ? Image.asset("assets/icons/user.png")
                                                : ClipRRect(
                                                  borderRadius: BorderRadius.circular(50),
                                                    child: Image(image: NetworkImage(peerUserModel.profilePhoto ?? AppConstants.imageNotFoundLink, ),)
                                                  ),
                                            ),
                                            gapW10,
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${peerUserModel.firstName ?? ""} ${peerUserModel.lastName ?? ""}", 
                                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor),
                                                ),
                                                gapH4,
                                                Row(
                                                  children: [
                                                    Text(
                                                      (snapshot.data?[index].data()['lastMessageBy'] ?? "") == AppConstants.userId
                                                          ? "You: " : "${peerUserModel.userName}: ",
                                                      style: const TextStyle(color: Colors.grey),
                                                    ),
                                                    Text(
                                                      (snapshot.data?[index].data()['lastMessage'] ?? "").toString().contains("o/pictures") //o/audio
                                                        ? "📷 Image"
                                                        : (snapshot.data?[index].data()['lastMessage'] ?? "").toString().contains("o/audio") 
                                                          ?"▶︎ •၊၊||၊|။||||။"
                                                          : (snapshot.data?[index].data()['lastMessage'] ?? "").toString().length > 20
                                                            ? "${(snapshot.data?[index].data()['lastMessage'] ?? "").toString().substring(0, 20).split('\n').first}..." 
                                                            : (snapshot.data?[index].data()['lastMessage'] ?? "").toString().split('\n').first,
                                                      style: const TextStyle(color: Colors.grey),
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              child: snapshot.data?[index].data()['${AppConstants.userId}Pin'] 
                                                ? const Icon(Icons.push_pin, color: primaryColor,)
                                                : const SizedBox.shrink(), 
                                            ),
                                            Text(DateFormat('HH:mm').format((snapshot.data?[index].data()['lastMessageTimestamp'] as Timestamp).toDate()), style: const TextStyle(color: kGrey),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  )
                : SizedBox(child: ShimmerWidgets.chatShimmerWidget(context),),
                // : const Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Center(child: CircularProgressIndicator(color: primaryColor,),),
                //     SizedBox(height: 200,),
                //   ],
                // ),
              ),
            )
        : GuestLoginRequestWidget(text: "to chat with the other users",),
      ),
    );
  }
}
