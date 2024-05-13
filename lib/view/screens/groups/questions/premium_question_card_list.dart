import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/questions/question_card_list_tile.dart';

class PremiumQuestionCard extends ConsumerStatefulWidget {
  final String groupId;
  const PremiumQuestionCard({super.key, required this.groupId});

  @override
  ConsumerState<PremiumQuestionCard> createState() => _PremiumQuestionCardState();
}

class _PremiumQuestionCardState extends ConsumerState<PremiumQuestionCard> with BaseScreenView{
  @override
  Widget build(BuildContext context) {
    return (ref.watch(premiumGroupProfileViewModel).getQuestionByGroupModel.data?.isNotEmpty ?? false) 
    ? ListView.builder(
      itemCount: ref.watch(premiumGroupProfileViewModel).getQuestionByGroupModel.data?.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return QuestionCardListTile(questionData: ref.watch(premiumGroupProfileViewModel).getQuestionByGroupModel.data?[index] ?? const QuestionData());
      },
    )
    : const Column(
      children: [
        gapH60,
        gapH20,
        Text("No questions posted. So empty :(", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700),),
      ],
    );
  }
  
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
  
  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }
  
  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
