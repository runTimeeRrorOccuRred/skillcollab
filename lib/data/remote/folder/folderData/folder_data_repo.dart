import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/folder/folderData/models/folder_content_model.dart';

abstract class FolderContentRepo {
  Future<Either<ApiException, FolderContentResponseModel>> getFolderContent(String folderId);
}
