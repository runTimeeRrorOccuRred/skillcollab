import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/notifications/notifications_view_model.dart';

class NotificationChatLoader extends ConsumerStatefulWidget {
  final String userId;
  const NotificationChatLoader({super.key, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NotificationChatLoaderState();
}

class _NotificationChatLoaderState extends ConsumerState<NotificationChatLoader> {  

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(notificationsViewModel).getUserById(context, widget.userId);
      final UserModel peerUserModel = UserModel(
        id: ref.watch(notificationsViewModel).singleUserResponseModel.data?.id ?? "",
        coverPhoto: ref.watch(notificationsViewModel).singleUserResponseModel.data?.coverPhoto ?? "",
        profilePhoto: ref.watch(notificationsViewModel).singleUserResponseModel.data?.profilePhoto ?? "",
        description: ref.watch(notificationsViewModel).singleUserResponseModel.data?.description ?? "",
        email: ref.watch(notificationsViewModel).singleUserResponseModel.data?.email ?? "",
        firstName: ref.watch(notificationsViewModel).singleUserResponseModel.data?.firstName ?? "",
        lastName: ref.watch(notificationsViewModel).singleUserResponseModel.data?.lastName ?? "",
        userName: ref.watch(notificationsViewModel).singleUserResponseModel.data?.userName ?? "",
      );
      Logger.printError(peerUserModel.toString());
      Future.delayed(const Duration(seconds: 2), () {
        context.pushReplacementNamed(AppRoute.chatRoom.name, extra: peerUserModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(color: primaryColor,),
      ),
    );
  }
}
