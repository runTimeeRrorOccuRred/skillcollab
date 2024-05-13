

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/explore/models/explore_all_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_group_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_public_post_model.dart';

abstract class GetExploreRepo{
  Future<Either<ApiException, ExplorePeopleResponseModel>> getExplorePeople(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page);
  Future<Either<ApiException, ExploreGroupResponseModel>> getExploreGroup(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page);
  Future<Either<ApiException, ExplorePublicPostResponseModel>> getExplorePost(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page);
  Future<Either<ApiException, ExploreAllResponseModel>> getExploreAll(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page);
}
