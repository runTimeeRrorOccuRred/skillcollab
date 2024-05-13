import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/report/report_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class ReportRepoImpl implements ReportRepo {

  @override
  Future<Either<ApiException, ReportResponseModel>> getReport(ReportRequestModel reportRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}/group/post/report",
        data: reportRequestModel.toJson(),
      );

      Logger.printSuccess("report response ====> ${response.data}");

      return Right(ReportResponseModel.fromJson(response.data));

    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }


  @override
  Future<Either<ApiException, ReportResponseModel>> reportQuestion(QuestionReportRequestModel questionReportRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}/group/post/report",
        data: questionReportRequestModel.toJson(),
      );

      Logger.printSuccess("report response ====> ${response.data}");

      return Right(ReportResponseModel.fromJson(response.data));

    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }



  @override
  Future<Either<ApiException, ReportResponseModel>> reportTutorial(TutorialReportRequestModel tutorialReportRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}/group/post/report",
        data: tutorialReportRequestModel.toJson(),
      );

      Logger.printSuccess("report response ====> ${response.data}");

      return Right(ReportResponseModel.fromJson(response.data));

    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
