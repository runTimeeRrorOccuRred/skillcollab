import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/groups/posts/public_group_posts_list_tile.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';

class PremiumGroupPostsList extends ConsumerStatefulWidget {
  const PremiumGroupPostsList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PremiumGroupPostsListState();
}

class _PremiumGroupPostsListState extends ConsumerState<PremiumGroupPostsList> {

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(premiumGroupProfileViewModel);
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
              return PublicGroupPostsListTile(postData: viewModel.postsByGroupModel.data?[index] ?? const Post(), index: index, privacy: 'premium',);
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
