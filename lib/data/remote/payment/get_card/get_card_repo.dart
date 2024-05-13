import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/payment/get_card/models/get_card_model.dart';

abstract class GetCardRepo {
  Future<Either<ApiException, GetCardListModel>> getCard(String customerId);
}
