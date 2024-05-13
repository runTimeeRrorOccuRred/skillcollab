import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/folder/removeFolder/models/remove_folder_model.dart';

abstract class RemoveFolderRepo{
  Future<Either<ApiException, FolderRemoveResponseModel>> removeFolder(String folderId);
}
