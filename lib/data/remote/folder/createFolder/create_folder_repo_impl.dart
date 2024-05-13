import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/createFolder/create_folder_repo.dart';
import 'package:skill_colab/data/remote/folder/createFolder/models/create_folder_model.dart';
import 'package:skill_colab/utils/utils.dart';

class CreateFolderRepoImpl implements CreateFolderRepo {

  @override
  Future<Either<ApiException, CreateFolderResponseModel>> createFolder(CreateFolderRequestModel createFolderRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/folder-create",
        data: createFolderRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(CreateFolderResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}