import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';

abstract class ReportRepo {
  Future<Either<ApiException, ReportResponseModel>> getReport(ReportRequestModel reportRequestModel);
  Future<Either<ApiException, ReportResponseModel>> reportQuestion(QuestionReportRequestModel questionReportRequestModel);
  Future<Either<ApiException, ReportResponseModel>> reportTutorial(TutorialReportRequestModel tutorialReportRequestModel);
}
