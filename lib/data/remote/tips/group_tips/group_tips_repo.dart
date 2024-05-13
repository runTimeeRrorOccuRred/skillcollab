import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tips/group_tips/models/group_tips_model.dart';

abstract class GroupTipsRepo {
  Future<Either<ApiException, GroupTipsResponseModel>> grouptips(GroupTipsRequestModel groupTipsRequest, String customerId);
}