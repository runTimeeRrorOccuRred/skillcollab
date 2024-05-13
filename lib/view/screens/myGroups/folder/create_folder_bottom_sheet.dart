import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/folder/createFolder/models/create_folder_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class CreateFolderBottomSheet extends ConsumerStatefulWidget {
  const CreateFolderBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateFolderBottomSheetState();
}

class _CreateFolderBottomSheetState
    extends ConsumerState<CreateFolderBottomSheet> {
  TextEditingController folderController = TextEditingController();
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        }
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height / 1.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(16.h),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Create Folder",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      const Row(
                        children: [
                          Text(
                            'Folder Name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      gapH10,
                      CommonTextField(
                        // isCapital: true,
                        padding: EdgeInsets.zero,
                        controller: folderController,
                        hintText: "Enter Folder Name",
                        onChange: (value) {
                          if (value.isEmpty) {
                            isEmpty = false;
                          } else {
                            isEmpty = true;
                          }
                          setState(() {});
                        },
                        validator: (String? value) {
                          return (value?.isEmpty ?? false)
                              ? 'enter folder name'
                              : null;
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              color: const Color(0xffC4C4C4),
                              child: const Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Color(0xff5D5D5D),),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: MaterialButton(
                              onPressed: () async {
                                if (isEmpty == true) {
                                  final createFolderRequestModel =
                                      CreateFolderRequestModel(
                                    name: folderController.text,
                                  );
                                  Logger.printSuccess(
                                      createFolderRequestModel.toString(),);
                                  ref.read(myGroupsViewModel).createFolder(
                                      context, createFolderRequestModel,);
                                }
                              },
                              color: isEmpty ? primaryColor : Colors.grey,
                              child: Center(
                                child: ref.read(myGroupsViewModel).loading
                                    ? const SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          color: kWhite,
                                        ),)
                                    : const Text(
                                        "Create Folder",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: kWhite,),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 28.h, right: 16.w),
                  child: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
