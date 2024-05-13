import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/groups/posts/public_group_posts_list_tile.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';

class PrivateGroupPostsList extends ConsumerStatefulWidget {
  const PrivateGroupPostsList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PrivateGroupPostsListState();
}

class _PrivateGroupPostsListState extends ConsumerState<PrivateGroupPostsList> {

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(privateGroupProfileViewModel);
    Logger.printWarning(
        viewModel.postsByGroupModel.data?.length.toString() ?? "",);

    return (viewModel.postsByGroupModel.data?.isNotEmpty ?? true)
        ? ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 10),
            itemCount: viewModel.postsByGroupModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              // return Container(
              //   color: Colors.red,
              //   height: 20,
              //   width: 20,
              //   margin: EdgeInsets.all(8),
              // );
              return PublicGroupPostsListTile(postData: viewModel.postsByGroupModel.data?[index] ?? const Post(), index: index, privacy: 'private',);
            },
          )
        : const Column(
            children: [
              gapH60,
              gapH20,
              Text(
                "Nothing posted. So empty :(",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
              ),
            ],
          );
  }
}
