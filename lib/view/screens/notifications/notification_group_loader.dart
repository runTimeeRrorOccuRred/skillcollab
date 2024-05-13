import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class NotificationGroupLoader extends ConsumerStatefulWidget {
  final String groupId;
  const NotificationGroupLoader({super.key, required this.groupId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NotificationGroupLoaderState();
}

class _NotificationGroupLoaderState extends ConsumerState<NotificationGroupLoader> {  

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(publicGroupProfileViewModel).getGroupDataFromApi(context, widget.groupId);
      Logger.printError(ref.read(publicGroupProfileViewModel).groupData.toString());
      Future.delayed(const Duration(seconds: 2), () {
        if(ref.read(publicGroupProfileViewModel).groupData?.privacy == 'public'){
          context.pushReplacementNamed(AppRoute.publicGroupProfileView.name, extra: {"groupDetails" : ref.read(publicGroupProfileViewModel).groupData, "isSelfGroup" : true});
        } else if(ref.read(publicGroupProfileViewModel).groupData?.privacy == 'premium'){
          context.pushReplacementNamed(AppRoute.publicGroupProfileView.name, extra: {"groupDetails" : ref.read(premiumGroupProfileViewModel).groupData, "isSelfGroup" : true});
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(color: primaryColor,),
      ),
    );
  }
}
