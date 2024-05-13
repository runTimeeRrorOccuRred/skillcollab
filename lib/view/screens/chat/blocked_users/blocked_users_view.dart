// ignore_for_file: avoid_dynamic_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/chat/chatroomList/chatroom_list_view_model.dart';

class BlockedUsersView extends ConsumerStatefulWidget {
  const BlockedUsersView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BlockedUsersViewState();
}

class _BlockedUsersViewState extends ConsumerState<BlockedUsersView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Blocked Users',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: InkWell(
          onTap: () {
            context.pop();
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
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
      ),

      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("blocked_users").doc(AppConstants.userId).snapshots(), 
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator(color: primaryColor,),);
          } else {
            if(snapshot.data?.data()?['blocks'].length == 0) {
              return const Center(child: Text("No Blocks :)", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 18),),);
            } else {
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider(color: Colors.grey,);
                },
                itemCount: snapshot.data?.data()?['blocks'].length,
                itemBuilder: (context, index) {

                  final UserModel peerUserModel = ref.read(chatroomListViewModel).users.where((element) => element.id == snapshot.data?.data()?['blocks'][index]).toList()[0];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
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
                                child: Image(image:  NetworkImage(peerUserModel.profilePhoto ?? AppConstants.imageNotFoundLink, ), fit: BoxFit.cover,)
                              ),
                        ),
                        gapW10,
                        Text(
                          "${peerUserModel.firstName ?? ""} ${peerUserModel.lastName ?? ""}", 
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 45,
                          width: MediaQuery.of(context).size.width / 3,
                          child: MaterialButton(
                            onPressed: () async {
                              //MARK: Removing from blocked users collection
                              final DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance.collection("blocked_users").doc(AppConstants.userId).get();
                              FirebaseFirestore.instance.collection("blocked_users").doc(AppConstants.userId).set({
                                "blocks": ((documentSnapshot.data()! as Map<String, dynamic>)['blocks'] as List<dynamic>).where((element) => element != peerUserModel.id).toList(),
                              });


                              //MARK: Removing from messages collection
                              final doc = await FirebaseFirestore.instance.collection("messages").doc("${AppConstants.userId}_${peerUserModel.id}").get();
                              if(doc.exists) {
                                FirebaseFirestore.instance.collection("messages").doc("${AppConstants.userId}_${peerUserModel.id}").set({
                                  "${peerUserModel}_blocked": false,
                                });
                              } else {
                                FirebaseFirestore.instance.collection("messages").doc("${peerUserModel.id}_${AppConstants.userId}").set({
                                  "${peerUserModel}_blocked": false,
                                });
                              }
                              setState(() {});
                            },
                            color: Colors.grey[300],
                            child: Text("Unblock", style: TextStyle(color: Colors.grey[700]),),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}
