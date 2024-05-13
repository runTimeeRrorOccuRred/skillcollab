import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/folder_add_content_repo.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/models/folder_add_content_model.dart';
import 'package:skill_colab/utils/logger.dart';

class FolderAddContentRepoImpl implements FolderAddContentRepo {

  @override
  Future<Either<ApiException, FolderAddContentResponseModel>> addFolderContent(FolderAddContentRequestModel folderAddContentRequestModel, String folderId) async {
    Logger.printError("${AppConstants.baseUrl}group/folder-update/$folderId",);
    try {
      // Logger.printWarning("${AppConstants.baseUrl}group/folder-list");
      final Response response = await Dio().put(
        "${AppConstants.baseUrl}group/folder-update/$folderId",
        data: folderAddContentRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      // Logger.printWarning("status code ======> ${response.statusCode}");
      // Logger.printSuccess(response.data.toString());
      Logger.printSuccess(FolderAddContentResponseModel.fromJson(response.data).toString());
      return Right(FolderAddContentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
