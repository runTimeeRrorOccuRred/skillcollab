import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/cancelRequest/models/cancel_request_model.dart';

abstract class CancelRequestRepo {
  Future<Either<ApiException, CancelRequestResponseModel>> cancelPrivateGroupRequest(String groupId);
}
