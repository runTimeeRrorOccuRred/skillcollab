import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tips/group_tips/group_tips_repo.dart';
import 'package:skill_colab/data/remote/tips/group_tips/models/group_tips_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GroupTipsRepoImpl implements GroupTipsRepo{
  final ApiClient _apiClient;
  GroupTipsRepoImpl(this._apiClient);
  
 @override
 Future<Either<ApiException, GroupTipsResponseModel>> grouptips(GroupTipsRequestModel groupTipsRequest, String customerId) async {
  Logger.printError("${AppConstants.baseUrl}payment/group-tips/$customerId");
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}payment/group-tips/$customerId",
        data: groupTipsRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(GroupTipsResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
