import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/folderData/folder_data_repo.dart';
import 'package:skill_colab/data/remote/folder/folderData/models/folder_content_model.dart';
import 'package:skill_colab/utils/logger.dart';

class FolderContentRepoImpl implements FolderContentRepo {

  @override
  Future<Either<ApiException, FolderContentResponseModel>> getFolderContent(String folderId) async {
    try {
      Logger.printWarning("${AppConstants.baseUrl}group/folder-list");
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/folder-view/$folderId");
      // Logger.printWarning("status code ======> ${response.statusCode}");
      Logger.printSuccess(response.data.toString());
      Logger.printSuccess(FolderContentResponseModel.fromJson(response.data).toString());
      return Right(FolderContentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
