import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/removeFolder/models/remove_folder_model.dart';
import 'package:skill_colab/data/remote/folder/removeFolder/remove_folder_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class RemoveFolderRepoImpl implements RemoveFolderRepo{
  @override
  Future<Either<ApiException, FolderRemoveResponseModel>> removeFolder(String folderId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/folder-remove/$folderId",
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      return Right(FolderRemoveResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
