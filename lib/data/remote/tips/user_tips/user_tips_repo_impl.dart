import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tips/user_tips/models/user_tips_model.dart';
import 'package:skill_colab/data/remote/tips/user_tips/user_tips_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class UserTipsRepoImpl implements UserTipsRepo{
  final ApiClient _apiClient;
  UserTipsRepoImpl(this._apiClient);
  
 @override
 Future<Either<ApiException, UserTipsResponseModel>> usertips(UserTipsRequestModel userTipsRequest, String customerId) async {
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}payment/user-tips/$customerId",
        data: userTipsRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(UserTipsResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
