import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/analytics/model/analytics_model.dart';
abstract class AnalyticsRepo {
  Future<Either<ApiException, AnalyticsResponseModel>> getDataForAnalytics( AnalyticsRequestModel analyticsRequestModel); 

}
