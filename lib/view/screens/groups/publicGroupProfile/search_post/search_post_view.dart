import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/search_post/search_post_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/search_post/widgets/search_post_tile.dart';

class SearchPostView extends ConsumerStatefulWidget {
  final String groupId;
  final GetPostsByGroupModel postsByGroupModel;

  const SearchPostView({super.key, required this.groupId, required this.postsByGroupModel});

  @override
  ConsumerState<SearchPostView> createState() => _SearchPostViewState();
}

class _SearchPostViewState extends ConsumerState<SearchPostView>
    with BaseScreenView {
  final _searchController = TextEditingController();
  // GetPostsByGroupModel _viewModel.postsByGroupSearch = GetPostsByGroupModel();
  late SearchPostViewModel _viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(searchPostViewModel)..attachView(this);
      _viewModel.postsByGroupSearch = widget.postsByGroupModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(searchPostViewModel);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          }else{
            context.pop();
          }
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kWhite,
            elevation: 0.5,
            title: Container(
              height: 42,
              padding: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: const Color(0xffF3F5F6),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: _searchController,
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value) async {
                  if (value.length >= 3 || value.isEmpty) {
                    await _viewModel.getPostsByGroup(
                        context,
                        GetPostsByGroupRequestModel(
                            searchKey: value, timeFilter: "allTime",),
                        widget.groupId,);
                  }
                },
                style: const TextStyle(
                    fontSize: 12, color: kGrey, fontWeight: FontWeight.w600,),
                enabled: AppConstants.usertype == 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "Search...",
                  hintStyle: const TextStyle(
                      fontSize: 12, color: kGrey, fontWeight: FontWeight.w600,),
                  suffixIcon: Image.asset(
                    "assets/icons/search_bar_icon.png",
                  ),
                ),
              ),
            ),
          ),
          body: postsView(),),
    );
  }

  Widget postsView() {
    Logger.printWarning(
        _viewModel.postsByGroupSearch.data?.length.toString() ?? "",);
    return (_viewModel.postsByGroupSearch.data?.isNotEmpty ?? true)
        ? ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 10),
            itemCount: _viewModel.postsByGroupSearch.data?.length ?? 0,
            itemBuilder: (context, index) {
              // return Container(
              //   color: Colors.red,
              //   height: 20,
              //   width: 20,
              // );
              return SearchGroupPostTile(postData: _viewModel.postsByGroupSearch.data?[index] ?? const Post(), index: index);
            },
          )
        : const Center(
          child:  Text(
                  "Nothing posted. So empty :(",
                  style:
                      TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
                ),
        );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }
}
