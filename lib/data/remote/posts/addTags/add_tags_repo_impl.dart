import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/posts/addTags/add_tags_repo.dart';
import 'package:skill_colab/data/remote/posts/addTags/models/add_tags_repo_model.dart';
import 'package:skill_colab/utils/logger.dart';

class AddTagsRepoImpl implements AddTagsRepo {

  @override
  Future<Either<ApiException, AddTagsResponseModel>> addtags(AddTagsResquestModel addTagsResquestModel) async {
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/add-tag",
        data: addTagsResquestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(AddTagsResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
