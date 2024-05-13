import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/notifications/models/chat_notifications_model.dart';
import 'package:skill_colab/data/remote/notifications/models/invite_model.dart';
import 'package:skill_colab/data/remote/notifications/notifications_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class NotificationsRepoImpl implements NotificationsRepo {

  @override
  Future<Either<ApiException, String>> inviteNotificationTrigger(InviteRequestModel inviteRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/invite",
        data: inviteRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return const Right("Invitation Sent");
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, bool>> sendChatNotification(ChatNotificationRequestModel chatNotificationRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}users/chat",
        data: chatNotificationRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(ChatNotificationResponseModel.fromJson(response.data).isSuccess ?? true);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}