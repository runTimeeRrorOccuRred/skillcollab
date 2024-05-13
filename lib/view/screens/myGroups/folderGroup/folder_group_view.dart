import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/folder/removeContent/models/remove_content_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
// import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/myGroups/folderGroup/add_group_bottom_sheet.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class FolderGroupView extends ConsumerStatefulWidget {
  final String folderId;
  const FolderGroupView({super.key, required this.folderId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FolderGroupViewState();
}

class _FolderGroupViewState extends ConsumerState<FolderGroupView> with BaseScreenView{

  late MyGroupsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(myGroupsViewModel);
      _viewModel.attachView(this);
      _viewModel.getFolderContent(context, widget.folderId);
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
    bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
      InkWell(
        onTap: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
            ),
            builder: (context) => StatefulBuilder(
              builder: (context,bottomSheetSetState ) {
                return const AddGroupBottomSheet();
              },
            ),
          ).then((value) {
            setState(() {
              
            });
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
                  'Add Group',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],),
        ),
      ),
    ],),
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
                        Flexible(
                          child: Text(
                            _viewModel.folderContentResponseModel.data?.name ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
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
                        'Groups',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Visibility(
                        visible: _viewModel.folderContentResponseModel.data?.folderGroups?.isEmpty ?? false,
                        child: TextButton(
                          onPressed: (){},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'No Groups added yet !!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1B9AAA),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if(!_viewModel.loading) Visibility(
                        visible: _viewModel.folderContentResponseModel.data?.folderGroups?.isNotEmpty ?? false,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: _viewModel.folderContentResponseModel.data?.folderGroups?.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if(_viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.privacy == "public") {
                                  context.pushNamed(
                                    AppRoute.publicGroupProfileView.name,
                                    extra: {
                                      'groupDetails': GroupDatum(id: _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.id), 
                                      'isSelfGroup': _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.userId == AppConstants.userId,
                                    },
                                  ); 
                                } else if(_viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.privacy == "private") {
                                  context.pushNamed(
                                    AppRoute.privateGroupProfileView.name,
                                    extra: {
                                      'groupDetails': GroupDatum(id: _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.id), 
                                      'isSelfGroup': _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.userId == AppConstants.userId,
                                    },
                                  ); 
                                } else {
                                  context.pushNamed(
                                    AppRoute.premiumGroupProfileView.name,
                                    extra: {
                                      'groupDetails': GroupDatum(id: _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.id), 
                                      'isSelfGroup': _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.userId == AppConstants.userId,
                                    },
                                  ); 
                                } 
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          child: !(_viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.groupPhoto!.contains('https://skill') ?? true) && (_viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.groupPhoto?.isNotEmpty ?? false)
                                          ? Container(
                                              height: 38,
                                              width: 38,
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: primaryColor),
                                              ),
                                              child: Image.asset("assets/icons/group-icon.png"),
                                            )
                                          : Container(
                                            height: 38,
                                            width: 38,
                                            padding: const EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: primaryColor),
                                              image: DecorationImage(
                                                image: NetworkImage(_viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.groupPhoto ?? AppConstants.imageNotFoundLink),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        gapW16,
                                        Text(
                                          _viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.name ?? "",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                    
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context, 
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Are you sure to delete folder ${_viewModel.folderContentResponseModel.data?.folderGroups?[index].groupId?.name ?? ""}?", style: const TextStyle(color: kBlack, fontWeight: FontWeight.bold, fontSize: 16),),
                                              // content: Text("Are you sure to delete folder ${_viewModel.folderListResponseModel.data?[index].name ?? ""}", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                                              actions: [
                                                TextButton(
                                                  onPressed: () async {
                                                    Navigator.pop(context);
                                                  }, 
                                                  child: const Text("Back", style: TextStyle(color: primaryColor),),
                                                ),
                                                TextButton(
                                                  onPressed: () async {
                                                    final removeContentRequestModel = RemoveContentRequestModel(
                                                      contentId: _viewModel.folderContentResponseModel.data?.folderGroups?[index].id,
                                                    );
                                                    _viewModel.removeContent(context,  removeContentRequestModel, _viewModel.folderContentResponseModel.data?.id ?? '');
                                                    Navigator.pop(context);
                                                  }, 
                                                  child: const Text("Delete", style: TextStyle(color: Colors.red),),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: const Icon(Icons.delete, color: Colors.red,),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ) else ShimmerWidget(),
                      
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
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}