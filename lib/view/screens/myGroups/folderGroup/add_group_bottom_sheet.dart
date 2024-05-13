import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/models/folder_add_content_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class AddGroupBottomSheet extends ConsumerStatefulWidget {
  const AddGroupBottomSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddGroupBottomSheetState();
}

class _AddGroupBottomSheetState extends ConsumerState<AddGroupBottomSheet> {
  int groupIndex = -1;
  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(myGroupsViewModel);
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 14.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    gapW20,
                    const Center(
                      child: Text(
                        "Add Group",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h, right: 16.w),
                        child: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  child: (viewModel.memberOfResponseModel.data?.isNotEmpty ?? [].isNotEmpty)
                      ? ListView.builder(
                          // physics: const (),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: viewModel.memberOfResponseModel.data?.length ??
                              0,
                          itemBuilder: (context, index) {
                            return viewModel.folderContentResponseModel.data
                                        ?.folderGroups
                                        ?.where((groupId) =>
                                            (groupId.groupId?.id ?? '') ==
                                            viewModel.memberOfResponseModel
                                                .data?[index]?.groupId?.id,)
                                        .toList()
                                        .isEmpty ??
                                    false
                                ? GestureDetector(
                                    onTap: () {
                                      if (groupIndex != index) {
                                        groupIndex = index;
                                      } else {
                                        groupIndex = -1;
                                      }
                                      
                                      setState(() {});
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 10,
                                        right: 20,
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        border: index == groupIndex
                                            ? Border.all(
                                                color: primaryColor,
                                              )
                                            : Border.all(
                                                color: Colors.transparent,),
                                        borderRadius:
                                            const BorderRadius.all(
                                                Radius.circular(8),),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                child: !(viewModel
                                                                .memberOfResponseModel
                                                                .data![
                                                                    index]
                                                                ?.groupId
                                                                ?.groupPhoto!
                                                                .contains(
                                                                    'https://skill',) ??
                                                            true) &&
                                                        (viewModel
                                                                .memberOfResponseModel
                                                                .data?[
                                                                    index]
                                                                ?.groupId
                                                                ?.groupPhoto
                                                                ?.isNotEmpty ??
                                                            false)
                                                    ? Container(
                                                        height: 38,
                                                        width: 38,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                          shape: BoxShape
                                                              .circle,
                                                          border: Border.all(
                                                              color:
                                                                  primaryColor,),
                                                        ),
                                                        child: Image.asset(
                                                            "assets/icons/group-icon.png",),
                                                      )
                                                    : Container(
                                                        height: 38,
                                                        width: 38,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                          shape: BoxShape
                                                              .circle,
                                                          border: Border.all(
                                                              color:
                                                                  primaryColor,),
                                                          image:
                                                              DecorationImage(
                                                            image: NetworkImage(viewModel
                                                                    .memberOfResponseModel
                                                                    .data?[
                                                                        index]
                                                                    ?.groupId
                                                                    ?.groupPhoto ??
                                                                AppConstants
                                                                    .imageNotFoundLink,),
                                                            fit: BoxFit
                                                                .cover,
                                                          ),
                                                        ),
                                                      ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              Text(
                                                viewModel
                                                        .memberOfResponseModel
                                                        .data?[index]
                                                        ?.groupId
                                                        ?.name ??
                                                    "",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight:
                                                      FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (index == groupIndex)
                                            SizedBox(
                                              height: 30,
                                              width: 30,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15,),
                                                child: const Icon(
                                                  Icons.done,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  )
                                : const SizedBox();
                          },
                        )
                      : const Center(
                          child: Text(
                            "You don't have groups :(",
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
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
                              fontSize: 16,
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
                        if (groupIndex != -1) {
                          final folderAddContentRequestModel =
                              FolderAddContentRequestModel(
                            groupId: viewModel.memberOfResponseModel
                                .data?[groupIndex]?.groupId?.id,
                          );
                          Logger.printSuccess(
                              folderAddContentRequestModel.toString(),);
                          Logger.printError(viewModel
                                  .folderContentResponseModel.data?.id ??
                              '',);
                          viewModel.addContentFolder(
                              context,
                              folderAddContentRequestModel,
                              viewModel.folderContentResponseModel.data
                                      ?.id ??
                                  '',);
                        }
                        // final createFolderRequestModel = CreateFolderRequestModel(
                        //   name: folderController.text
                        // );
                        // Logger.printSuccess(createFolderRequestModel.toString());
                        // ref.read(myGroupsViewModel).createFolder(context, createFolderRequestModel);
                      },
                      color: groupIndex != -1 ? primaryColor : kGrey,
                      child: Center(
                        child: ref.read(myGroupsViewModel).loading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: kWhite,
                                ),)
                            : const Text(
                                "Add",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: kWhite,),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          gapH40
        ],
      ),
    );
  }
}
