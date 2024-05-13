import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/groups/addRating/models/add_group_rating_request_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/addGroupRating/add_group_rating_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

class AddGroupRating extends ConsumerStatefulWidget {
  final String groupId;
  const AddGroupRating({super.key, required this.groupId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddGroupRatingState();
}

class _AddGroupRatingState extends ConsumerState<AddGroupRating> {
  late AddGroupRatingViewModel _viewModel;
  bool isAnnonymousRating = false;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(addGroupRatingViewModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
        title: const Text(
          'Rating & Reviews',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 21),
              const Text(
                'Rate',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              //Rating bar
              RatingBar.builder(
                initialRating: 1,
                minRating: 1,
                glow: false,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  _viewModel.addRatingValue(rating);
                },
              ),
              const SizedBox(height: 21),
              Row(
                children: [
                  const Text(
                    'Title',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '(Optional)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CommonTextField(
                padding: EdgeInsets.zero,
                controller: _viewModel.titleController,
                hintText: "Enter Title",
              ),
              const SizedBox(height: 21),
              Row(
                children: [
                  const Text(
                    'Review',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '(Optional)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CommonTextField(
                maxLines: 3,
                padding: EdgeInsets.zero,
                controller: _viewModel.reviewController,
                hintText: "Write Review...",
              ),
              const SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(color: Colors.grey),
                    ),
                    checkColor: primaryColor,
                    activeColor: Colors.white,
                    value: isAnnonymousRating,
                    onChanged: (newValue) {
                      setState(() {
                        isAnnonymousRating = !isAnnonymousRating;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Leave Review as Annonymous',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Cancel",
                      onTap: () {
                        context.pop();
                      },
                      showShadow: false,
                      textColor: const Color(0xFF5D5D5D),
                      color: const Color(0xFFC4C4C4),
                    ),
                  ),
                  gapW16,
                  Expanded(
                    child: CustomButton(
                      text: "Create",
                      isBusy: _viewModel.loading,
                      onTap: () {
                        // print(widget.groupId);
                        final AddGroupRatingRequestModel addGroupRatingRequestModel = AddGroupRatingRequestModel(
                          name: ref.read(userProfileViewModel).singleUserResponseModel.data?.userName,
                          email: ref.read(userProfileViewModel).singleUserResponseModel.data?.email,
                          rating: _viewModel.rating,
                          title: _viewModel.titleController.text,
                          review: _viewModel.reviewController.text,
                          isAnonymous: isAnnonymousRating,
                        );

                        Logger.printSuccess(addGroupRatingRequestModel.toString());
                        _viewModel.addGroupRating(context, addGroupRatingRequestModel, widget.groupId);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
