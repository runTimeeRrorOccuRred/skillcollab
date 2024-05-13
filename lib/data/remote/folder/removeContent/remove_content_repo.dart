import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/folder/removeContent/models/remove_content_model.dart';

abstract class RemoveContentRepo{
  Future<Either<ApiException, RemoveContentResponseModel>> removeContent(RemoveContentRequestModel removeContentRequestModel, String folderId);
}
