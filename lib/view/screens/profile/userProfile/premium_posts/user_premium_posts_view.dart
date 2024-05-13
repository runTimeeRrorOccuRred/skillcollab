// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/profile/userProfile/posts/user_public_posts_tile.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

class UserPremiumPostsView extends ConsumerStatefulWidget {
  final String? userId;
  const UserPremiumPostsView({super.key, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserPremiumPostsViewState();
}

class _UserPremiumPostsViewState extends ConsumerState<UserPremiumPostsView> {

  @override
  Widget build(BuildContext context) {
    final _viewModel = ref.watch(userProfileViewModel);
    return (_viewModel.getPremiumPostsByUserIdResponseModel.data?.isEmpty ?? false) 
      ? SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No Premium posts by user :(", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
              gapH20,
            ],
          ),
        )
      : widget.userId == AppConstants.userId || ((_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList().isNotEmpty ?? true) &&
        (_viewModel.singleUserResponseModel.data?.subscribers?.where((subscriber) => subscriber.user?.id == AppConstants.userId).toList()[0].isPaid ?? false))
          ? ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _viewModel.getPremiumPostsByUserIdResponseModel.data?.length ?? 0,
              itemBuilder: (context, index) {
                return UserPublicPostTile(userPost: _viewModel.getPremiumPostsByUserIdResponseModel.data?[index] ?? const Datum(), index: index, userId: widget.userId ?? "");
              },
            )
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Will be able to see the post if you subscribe the user", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                  gapH20,
                ],
              ),
            );
  }
}
