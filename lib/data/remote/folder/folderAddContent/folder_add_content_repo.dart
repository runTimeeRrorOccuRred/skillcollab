import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/models/folder_add_content_model.dart';

abstract class FolderAddContentRepo {
  Future<Either<ApiException, FolderAddContentResponseModel>> addFolderContent(FolderAddContentRequestModel folderAddContentRequestModel, String folderId);
}
