import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/posts/addTags/models/add_tags_repo_model.dart';

abstract class AddTagsRepo {
  Future<Either<ApiException, AddTagsResponseModel>> addtags( AddTagsResquestModel addTagsResquestModel);
}
