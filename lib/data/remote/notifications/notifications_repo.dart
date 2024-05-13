import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/notifications/models/chat_notifications_model.dart';
import 'package:skill_colab/data/remote/notifications/models/invite_model.dart';

abstract class NotificationsRepo {
  Future<Either<ApiException, String>> inviteNotificationTrigger(InviteRequestModel inviteRequestModel);
  Future<Either<ApiException, bool>> sendChatNotification(ChatNotificationRequestModel chatNotificationRequestModel);
}