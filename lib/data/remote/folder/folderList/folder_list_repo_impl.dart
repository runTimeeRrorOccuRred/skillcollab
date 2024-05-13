import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/folderList/folder_list_repo.dart';
import 'package:skill_colab/data/remote/folder/folderList/models/folder_list_model.dart';
import 'package:skill_colab/utils/logger.dart';

class FolderListRepoImpl implements FolderListRepo {

  @override
  Future<Either<ApiException, FolderListResponseModel>> getFolderList() async {
    try {
      Logger.printWarning("${AppConstants.baseUrl}group/folder-list");
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/folder-list");
      // Logger.printWarning("status code ======> ${response.statusCode}");
      Logger.printSuccess(response.data.toString());
      Logger.printSuccess(FolderListResponseModel.fromJson(response.data).toString());
      return Right(FolderListResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
