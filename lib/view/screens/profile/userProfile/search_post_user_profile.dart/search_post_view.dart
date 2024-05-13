import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/profile/userProfile/search_post_user_profile.dart/search_post_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/search_post_user_profile.dart/widgets/search_post_tile.dart';

class SearchUserPostView extends ConsumerStatefulWidget {
  final String userId;
  final GetPostsByUserIdResponseModel getPostsByUserIdResponseModel;

  const SearchUserPostView(
      {super.key, required this.userId, required this.getPostsByUserIdResponseModel,});

  @override
  ConsumerState<SearchUserPostView> createState() => _SearchUserPostViewState();
}

class _SearchUserPostViewState extends ConsumerState<SearchUserPostView>
    with BaseScreenView {
  final _searchController = TextEditingController();
  // GetPostsByGroupModel _viewModel.getPostsByUserIdResponseModel = GetPostsByGroupModel();
  late SearchUserPostViewModel _viewModel;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(searchUserPostViewModel)..attachView(this);
      _viewModel.getPostsByUserSearch = widget.getPostsByUserIdResponseModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(searchUserPostViewModel);

    return Scaffold(
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
                  await _viewModel.getPostsByUserId(
                      context,
                      GetPostsByUserIdRequestModel(
                          searchKey: value, interests: "", timeFilter: "allTime", privacy: "public",),
                      widget.userId,);
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
        body: postsView(),);
  }

  Widget postsView() {
    Logger.printWarning(
        _viewModel.getPostsByUserIdResponseModel.data?.length.toString() ?? "",);
    return (_viewModel.getPostsByUserIdResponseModel.data?.isNotEmpty ?? true)
        ? ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 10),
            itemCount: _viewModel.getPostsByUserIdResponseModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return SearchUserPostTile(postData: _viewModel.getPostsByUserIdResponseModel.data?[index] ?? const Datum(), index: index);
            },
          )
        : const Column(
            children: [
              gapH60,
              gapH20,
              Text(
                "Nothing posted. So empty :(",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
              ),
            ],
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
