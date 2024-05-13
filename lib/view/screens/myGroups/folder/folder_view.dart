import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/myGroups/folder/create_folder_bottom_sheet.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class FolderView extends ConsumerStatefulWidget {
  const FolderView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FolderViewState();
}

class _FolderViewState extends ConsumerState<FolderView> with BaseScreenView {
  late MyGroupsViewModel _viewModel;

  final settings = RestrictedPositions(
    maxCoverage: 0.7,
    minCoverage: 0.1,
    align: StackAlign.right,
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(myGroupsViewModel);
      _viewModel.attachView(this);
      _viewModel.getFolderList(context);
    });
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(myGroupsViewModel);
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25.0)),
                ),
                builder: (context) => StatefulBuilder(
                  builder: (context, bottomSheetSetState) {
                    return const CreateFolderBottomSheet();
                  },
                ),
              ).then((value) {
                setState(() {});
              });
            },
            child: Container(
              padding: const EdgeInsets.all(13),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F1B9AAA),
                    blurRadius: 18,
                    offset: Offset(0, 8),
                  ),
                  BoxShadow(
                    color: Color(0x0A141414),
                    blurRadius: 1,
                  ),
                ],
              ),
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'Create Folder',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(color: primaryColor),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
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
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        color: primaryColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 22),
                                  const Text(
                                    'My Folders',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              context.pushNamed(AppRoute.settings.name);
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 10,
                                bottom: 10,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: primaryColor,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [CustomBoxShadow()],
                ),
                margin: const EdgeInsets.only(right: 16, left: 16),
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Folder',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // Visibility(
                        //   visible: _viewModel.folderListResponseModel.data?.isEmpty ?? false,
                        //   child: const Text(
                        //     'Create Folder',
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       color: Color(0xFF1B9AAA),
                        //       fontSize: 12,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   ),
                        // ),
                        if (!_viewModel.loading)
                          _viewModel.folderListResponseModel.data?.isNotEmpty ?? false 
                            ? ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: _viewModel
                                    .folderListResponseModel.data?.length,
                                itemBuilder: (context, index) {
                                  final avatarStack = ((_viewModel
                                                  .folderListResponseModel
                                                  .data?[index]
                                                  .folderGroups
                                                  ?.length ??
                                              0) >
                                          3)
                                      ? 3
                                      : _viewModel.folderListResponseModel
                                          .data?[index].folderGroups?.length;
                                  return GestureDetector(
                                    onTap: () {
                                      // Logger.printSuccess(_viewModel.folderListResponseModel.data?[index].folderGroups?[0].groupId?.groupPhoto ?? '');
                                      context
                                          .pushNamed(
                                              AppRoute.folderGroupView.name,
                                              extra: _viewModel
                                                  .folderListResponseModel
                                                  .data?[index]
                                                  .id,)
                                          .then((value) {
                                        _viewModel.getFolderList(context);
                                      });
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                if (_viewModel
                                                        .folderListResponseModel
                                                        .data?[index]
                                                        .folderGroups
                                                        ?.isEmpty ??
                                                    false)
                                                  SizedBox(
                                                    height: 30,
                                                    width: 30,
                                                    child: SvgPicture.asset(
                                                      'assets/icons/folder.svg',
                                                      height: 20,
                                                    ),
                                                  )
                                                else
                                                  SizedBox(
                                                    width: avatarStack == 3
                                                        ? 60
                                                        : avatarStack == 2
                                                            ? 50
                                                            : 40,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                      children: [
                                                        AvatarStack(
                                                          height: 40,
                                                          // width: 40,
                                                          borderColor: primaryColor,
                                                          settings: settings,
                                                          avatars: [
                                                            for (var i = 0;
                                                                i <
                                                                    (avatarStack ??
                                                                        1);
                                                                i++)
                                                              NetworkImage(_viewModel
                                                                      .folderListResponseModel
                                                                      .data?[index]
                                                                      .folderGroups?[
                                                                          i]
                                                                      .groupId
                                                                      ?.groupPhoto ??
                                                                  '',),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                gapW16,
                                                Flexible(
                                                  child: Text(
                                                    _viewModel.folderListResponseModel.data?[index].name ?? "",
                                                    overflow: TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      "Are you sure to delete folder ${_viewModel.folderListResponseModel.data?[index].name ?? ""}?",
                                                      style: const TextStyle(
                                                          color: kBlack,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16,),
                                                    ),
                                                    // content: Text("Are you sure to delete folder ${_viewModel.folderListResponseModel.data?[index].name ?? ""}", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () async {
                                                          Navigator.pop(context);
                                                        },
                                                        child: const Text(
                                                          "Back",
                                                          style: TextStyle(
                                                              color:
                                                                  primaryColor,),
                                                        ),
                                                      ),
                                                      TextButton(
                                                        onPressed: () async {
                                                          _viewModel.removeFolder(
                                                              context,
                                                              _viewModel
                                                                      .folderListResponseModel
                                                                      .data?[
                                                                          index]
                                                                      .id ??
                                                                  '',);
                                                          Navigator.pop(context);
                                                        },
                                                        child: const Text(
                                                          "Delete",
                                                          style: TextStyle(
                                                              color: Colors.red,),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            : SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assets/images/no-folder.svg", height: 250, width: 250,),
                                  const Text("No folders added"),
                                ],
                              ),
                            )
                        else
                          ShimmerWidget(),

                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ShimmerWidget() {
    return Column(
      children: [
        ShimmerContainer(),
        gapH10,
        ShimmerContainer(),
        gapH10,
        ShimmerContainer(),
      ],
    );
  }

  Widget ShimmerContainer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          gapW20,
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 20,
            color: Colors.grey[300],
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
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}