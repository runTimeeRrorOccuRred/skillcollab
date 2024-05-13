import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/removeContent/models/remove_content_model.dart';
import 'package:skill_colab/data/remote/folder/removeContent/remove_content_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class RemoveContentRepoImpl implements RemoveContentRepo{
  @override
  Future<Either<ApiException, RemoveContentResponseModel>> removeContent(RemoveContentRequestModel removeContentRequestModel, String folderId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/folder-remove-content/$folderId",
        data: removeContentRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      return Right(RemoveContentResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
