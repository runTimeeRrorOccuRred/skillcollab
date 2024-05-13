import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/folder/folderList/models/folder_list_model.dart';

abstract class FolderListRepo {
  Future<Either<ApiException, FolderListResponseModel>> getFolderList();
}
