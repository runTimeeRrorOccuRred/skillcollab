import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/create_question_view_model.dart';

class QuestionColorPickerBottomSheet extends ConsumerStatefulWidget {
  const QuestionColorPickerBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionColorPickerBottomSheetState();
}

class _QuestionColorPickerBottomSheetState extends ConsumerState<QuestionColorPickerBottomSheet> with BaseScreenView{

  List<String> colors = [
    '0xff54b3bf',
    '0xff8dcdd5',
    '0xffc7e6ea',
    '0xff59cc66',
    '0xff91dd99',
    '0xffc8eecd',
    '0xffff6666',
    '0xffff9999',
    '0xffffcdcd',
    '0xffffffff',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                          const SizedBox(height: 30),
                          const Center(
                            child: Text(
                              "Color Picker",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          // const Text(
                          //   'Rating',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 15,
                          //     fontWeight: FontWeight.w700,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          GridView.count(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 300/100,
                            // padding: const EdgeInsets.only(bottom: 10),
                            children: List.generate(colors.length, (index) {
                              return GestureDetector(
                                onTap: (){
                                  ref.read(createQuestionViewModel).setColorCode(colors[index]);
                                  context.pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(int.parse(colors[index])),
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: const Color(0xFFE1E1EF),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                  // SizedBox(height: size.height * 0.3,),
                  gapH16,
                ],
              ),
            ),
          ],
        ),
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
