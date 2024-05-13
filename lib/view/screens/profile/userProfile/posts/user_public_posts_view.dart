
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/profile/userProfile/posts/user_public_posts_tile.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

class UserPublicPostsView extends ConsumerStatefulWidget {
  final bool isSelfProfile;
  String? userId;
  UserPublicPostsView({super.key, required this.isSelfProfile, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserPublicPostsViewState();
}

class _UserPublicPostsViewState extends ConsumerState<UserPublicPostsView> {

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(userProfileViewModel); 
    return (viewModel.getPostsByUserIdResponseModel.data?.isNotEmpty ?? false) ? ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.getPostsByUserIdResponseModel.data?.length ?? 0,
      itemBuilder: (context, index) {
        return UserPublicPostTile(userPost: viewModel.getPostsByUserIdResponseModel.data?[index] ?? const Datum(), index: index, userId: widget.userId ?? "");
      },
    ) : SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: const Center(child: Text("No posts by user ;-;", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),),
        );
  }

}
