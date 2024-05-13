// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class FilterRatingBottomSheet extends ConsumerStatefulWidget {
  final String groupId;
  const FilterRatingBottomSheet({super.key, required this.groupId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterRatingBottomSheetState();
}

class _FilterRatingBottomSheetState extends ConsumerState<FilterRatingBottomSheet> {

  List<int> list = <int>[
    1,
    2,
    3,
    4,
    5,
  ];

  int dropdownValue = 5;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: MediaQuery.of(context).size.height * 0.65,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const Center(
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Rating',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 65,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          boxShadow: [CustomBoxShadow()],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFE1E1EF),
                          ),
                        ),
                        child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 2,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 2,),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                          ),
                          value: dropdownValue,
                          onChanged: (int? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: list
                              .map<DropdownMenuItem<int>>((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(
                                value.toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "Cancel",
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          showShadow: false,
                          textColor: const Color(0xFF5D5D5D),
                          color: const Color(0xFFC4C4C4),
                        ),
                      ),
                      gapW16,
                      Expanded(
                        child: CustomButton(
                          text: "Save Changes",
                          onTap: () {
                            
                            // GetPublicPostsRequestModel getPublicPostsRequestModel = GetPublicPostsRequestModel(
                            //   interests: '',
                            //   searchKey: '',
                            //   timeFilter: timeFilterList.values.elementAt(timeFilterIndex)
                            // );
                                
                            // ref.read(dashboardViewModel).getPublicPosts(context, getPublicPostsRequestModel);
                                
                            print(widget.groupId);
                                
                            ref.read(publicGroupProfileViewModel).getGroupRating(context, widget.groupId, rating: dropdownValue);
                                
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
