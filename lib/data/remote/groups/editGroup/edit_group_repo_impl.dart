import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/editGroup/edit_group_repo.dart';
import 'package:skill_colab/data/remote/groups/editGroup/models/edit_group_model.dart';
import 'package:skill_colab/utils/utils.dart';

class EditGroupRepoImpl implements EditGroupRepo {

  @override
  Future<Either<ApiException, EditGroupResponseModel>> editGroup(EditGroupRequestModel editGroupRequestModel, String groupId) async {
    Logger.printInfo("${AppConstants.baseUrl}group/update-group/$groupId");
    try {
      final Response response = await ApiClient().patch(
        "${AppConstants.baseUrl}group/update-group/$groupId",
        editGroupRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(EditGroupResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
