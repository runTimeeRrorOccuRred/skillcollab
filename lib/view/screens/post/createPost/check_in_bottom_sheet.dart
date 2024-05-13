import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:go_router/go_router.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view_model.dart';

class CheckInBottomSheet extends ConsumerStatefulWidget {
  const CheckInBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckInBottomSheetState();
}

class _CheckInBottomSheetState extends ConsumerState<CheckInBottomSheet> with BaseScreenView{

  bool validationState = false;
  TextEditingController locationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.7,
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
                children: [
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                      "Check In",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  gapH12,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TypeAheadField<String>(
                      suggestionsCallback: (search) {
                        if(search.length > 3) {
                          return ref.read(createPostViewModel).fetchLocationSuggestions(search);  
                        }
                        return [];
                        // return _viewModel.fetchLocationSuggestions(search);
                      },
                      controller: locationController,
                      builder: (context, controller, focusNode) {
                        return CommonTextField(
                          isValidating: validationState,
                          padding: EdgeInsets.zero,
                          controller: controller,
                          focusNode: focusNode,
                          hintText: "Enter group location",
                          onEditingComplete: () {
                            setState(() {
                              Navigator.pop(context);
                              locationController.clear();
                            });
                          },
                        );
                      },
                      hideOnEmpty: true,
                      itemBuilder: (context, data) {
                        return ListTile(
                          tileColor: kWhite,
                          title: Text(data, style: const TextStyle(color: kBlack),),
                        );
                      },
                      loadingBuilder: (context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          color: kWhite,
                          child: const Center(child: CircularProgressIndicator(color: primaryColor,)),
                        );
                      },
                      onSelected: (city) {
                        locationController.text = city;
                        ref.read(createPostViewModel).setLocation(city);
                        ref.read(createPostViewModel).getLatLong(ref.read(createPostViewModel).locationData);
                        Navigator.pop(context);
                      },
                    ),
                  ),
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
