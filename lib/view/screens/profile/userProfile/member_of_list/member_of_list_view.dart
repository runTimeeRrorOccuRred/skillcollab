import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/group_tile.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';
class MemberOfListView extends ConsumerStatefulWidget {
  const MemberOfListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MemberOfListViewState();
}

class _MemberOfListViewState extends ConsumerState<MemberOfListView> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ref.watch(userProfileViewModel).memberOfResponseModel.data?.length ?? 0,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (BuildContext context, int index) {

        Logger.printError(ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.userId?.toJson().toString() ?? "");
        Logger.printError(ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.groupId?.userId ?? "");

        //! Changing the model to group dataa by casting it through models
        final List<Map<String, dynamic>> interests = ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.groupId?.interests?.map((e) => e?.toJson() ?? {}).toList() ?? [];
        final Map<String, dynamic> data = {
          ...ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.toJson() ?? {},
          ...ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.groupId?.toJson() ?? {},
          "followers": ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.groupId?.followers?.map((e) => e?.toJson() ?? {}).toList() ?? [],
          "reviewer": ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.groupId?.reviewer?.map((e) => e?.toJson() ?? {}).toList() ?? [],
          "userId": {
            ...ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.userId?.toJson() ?? {},
            '_id': ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.groupId?.userId ?? "",
            'interests': ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.userId?.interests?.map((e) => e?.toJson() ?? {}).toList() ?? [],
            'followers': ref.watch(userProfileViewModel).memberOfResponseModel.data?[index]?.userId?.followers?.map((e) => e?.toJson() ?? {}).toList() ?? [],
          },
          "interests": interests,
        };

        final GroupDataa groupDataa = GroupDataa.fromJson(data);  
        Logger.printInfo(groupDataa.toString());

        return GroupTile(groupData: groupDataa);
      },
    );
  }
}
