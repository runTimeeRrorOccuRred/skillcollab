import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';

abstract class GetQuestionByGroupRepo {
  Future<Either<ApiException, GetQuestionByGroupModel>> getQuestionByGroup(GetQuestionByGroupRequestModel getQuestionByGroupRequestModel, String groupId);
}
