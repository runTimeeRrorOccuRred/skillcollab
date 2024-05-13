import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';

abstract class GetTutorialByGroupRepo {
  Future<Either<ApiException, GetTutorialResponseModel>> getTutorialByGroup(GetTutorialRequestModel getTutorialRequestModel, String groupId);
}
