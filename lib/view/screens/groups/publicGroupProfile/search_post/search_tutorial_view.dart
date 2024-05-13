
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class SearchTutorialView extends ConsumerStatefulWidget {
  final String groupId;

  const SearchTutorialView({
    super.key,
    required this.groupId,
  });

  @override
  ConsumerState<SearchTutorialView> createState() => _SearchTutorialViewState();
}

class _SearchTutorialViewState extends ConsumerState<SearchTutorialView>
    with BaseScreenView {
  final _searchController = TextEditingController();
  // GetPostsByGroupModel _viewModel.postsByGroupSearch = GetPostsByGroupModel();
  late PublicGroupProfileViewModel _viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(publicGroupProfileViewModel)..attachView(this);
      _viewModel.setTutorialSearch(_viewModel.getTutorialResponseModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(publicGroupProfileViewModel);

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
                onChanged: (value) async {
                  if (value.length >= 3 || value.isEmpty) {
                    await _viewModel.getTutorialByGroupSearch(
                        context,
                        GetTutorialRequestModel(searchKey: value, filter: ""),
                        widget.groupId,);
                  }
                },
                textCapitalization: TextCapitalization.sentences,
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
          body: tutorialView(),),
    );
  }

  Widget tutorialView() {
    return (ref
                .watch(publicGroupProfileViewModel)
                .getTutorialSearch
                .data
                ?.isNotEmpty ??
            false)
        ? ListView.builder(
            itemCount: ref
                .watch(publicGroupProfileViewModel)
                .getTutorialSearch
                .data
                ?.length,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  context
                      .pushNamed(
                    AppRoute.tutorialDetailView.name,
                    extra: ref
                        .watch(publicGroupProfileViewModel)
                        .getTutorialSearch
                        .data?[index],
                  )
                      .then((value) {
                    ref
                        .read(publicGroupProfileViewModel)
                        .getTutorialByGroup(context, widget.groupId, const GetTutorialRequestModel(searchKey: "", filter: ""));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    //!======Outer BIG box
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10,),
                    margin: EdgeInsets.only(top: index == 0 ? 18 : 0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kGrey.withOpacity(
                            0.3,
                          ),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: const Color(0xFFE1E1EF),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if ((ref
                                            .watch(publicGroupProfileViewModel)
                                            .getTutorialSearch
                                            .data?[index]
                                            .userId
                                            ?.profilePhoto ??
                                        "") ==
                                    "" ||
                                !(ref
                                        .watch(publicGroupProfileViewModel)
                                        .getTutorialSearch
                                        .data?[index]
                                        .userId
                                        ?.profilePhoto
                                        ?.contains("https://skillcollab") ??
                                    true))
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                    'assets/icons/account-pic.svg',),
                              )
                            else
                              CircleAvatar(
                                backgroundImage: NetworkImage(ref
                                        .watch(publicGroupProfileViewModel)
                                        .getTutorialSearch
                                        .data?[index]
                                        .userId
                                        ?.profilePhoto ??
                                    "",),
                                backgroundColor: kWhite,
                              ),
                            gapW4,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${ref.watch(publicGroupProfileViewModel).getTutorialSearch.data?[index].userId?.firstName} ${ref.watch(publicGroupProfileViewModel).getTutorialSearch.data?[index].userId?.lastName}",
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 6),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.more_horiz,
                              color: kBlack,
                              size: AppSizes.p20,
                            ),
                          ],
                        ),
                        const Divider(),
                        gapH16,
                        Text(
                          ref
                                  .watch(publicGroupProfileViewModel)
                                  .getTutorialSearch
                                  .data?[index]
                                  .data
                                  ?.title ??
                              "",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        gapH8,
                        const SizedBox(width: 4),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "${ref.watch(publicGroupProfileViewModel).getTutorialSearch.data?[index].data?.desc ?? ""}...",
                                style: const TextStyle(
                                  color: Color(0xFF979C9E),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 1.33,
                                ),
                              ),
                              const TextSpan(
                                text: 'Read More',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  height: 1.33,
                                ),
                              ),
                            ],
                          ),
                        ),
                        gapH16,
                        Container(
                          //!==>image box style
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height*0.2,
                          child: ref
                                          .watch(publicGroupProfileViewModel)
                                          .getTutorialSearch
                                          .data?[index]
                                          .tutorialImage ==
                                      null ||
                                  (!ref
                                          .watch(publicGroupProfileViewModel)
                                          .getTutorialSearch
                                          .data![index]
                                          .tutorialImage!
                                          .contains('.jpg') &&
                                      !ref
                                          .watch(publicGroupProfileViewModel)
                                          .getTutorialSearch
                                          .data![index]
                                          .tutorialImage!
                                          .contains('.png')) ||
                                  !ref
                                      .watch(publicGroupProfileViewModel)
                                      .getTutorialSearch
                                      .data![index]
                                      .tutorialImage!
                                      .contains('http') ||
                                  ref
                                      .watch(publicGroupProfileViewModel)
                                      .getTutorialSearch
                                      .data![index]
                                      .tutorialImage!
                                      .isEmpty
                              ? Container()
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.network(
                                    ref.watch(publicGroupProfileViewModel).getTutorialSearch.data![index].tutorialImage!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: CustomButton(
                              text:
                                  "${ref.watch(publicGroupProfileViewModel).getTutorialSearch.data?[index].commentCounts} Comments",),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        : const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              gapH60,
              gapH20,
              Center(
                child: Text(
                  "No tutorials posted. So empty :(",
                  style:
                      TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
                ),
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
