import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/folder/createFolder/models/create_folder_model.dart';

abstract class CreateFolderRepo {
  Future<Either<ApiException, CreateFolderResponseModel>> createFolder(CreateFolderRequestModel createFolderRequestModel);
}