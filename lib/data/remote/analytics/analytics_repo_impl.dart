import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/analytics/analytics_repo.dart';
import 'package:skill_colab/data/remote/analytics/model/analytics_model.dart';
import 'package:skill_colab/utils/logger.dart';

class AnalyticsRepoImpl implements AnalyticsRepo{
  final ApiClient _apiClient;
  AnalyticsRepoImpl(this._apiClient);
  @override
  Future<Either<ApiException, AnalyticsResponseModel>> getDataForAnalytics(
      AnalyticsRequestModel analyticsRequestModel,) async {
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}payment/transaction-graph",
        data:analyticsRequestModel.toJson(),
      );
      Logger.printSuccess(response.toString());
      return Right(AnalyticsResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }


}
