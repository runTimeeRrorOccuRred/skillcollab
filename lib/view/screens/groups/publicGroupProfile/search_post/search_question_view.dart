
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

class SearchQuestionView extends ConsumerStatefulWidget {
  final String groupId;

  const SearchQuestionView({
    super.key,
    required this.groupId,
  });

  @override
  ConsumerState<SearchQuestionView> createState() => _SearchQuestionViewState();
}

class _SearchQuestionViewState extends ConsumerState<SearchQuestionView>
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
      _viewModel.setQuestionSearch(_viewModel.getQuestionByGroupModel);
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
                    await _viewModel.getQuestionByGroupSearch(
                        context,
                        GetQuestionByGroupRequestModel(
                            searchKey: value, filter: "",),
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
          body: questionView(),),
    );
  }

  Widget questionView() {
    return (ref
                .watch(publicGroupProfileViewModel)
                .getQuestionSearch
                .data
                ?.isNotEmpty ??
            false)
        ? ListView.builder(
            itemCount: ref
                .watch(publicGroupProfileViewModel)
                .getQuestionSearch
                .data
                ?.length,
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  context
                      .pushNamed(AppRoute.questionDetailView.name,
                          extra: ref
                              .watch(publicGroupProfileViewModel)
                              .getQuestionSearch
                              .data?[index],)
                      .then((value) {
                    ref
                        .read(publicGroupProfileViewModel)
                        .getQuestionByGroup(context, widget.groupId, const GetQuestionByGroupRequestModel(searchKey: "", filter: ""));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //!======Outer BIG box
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10,),
                    margin: EdgeInsets.only(top: index == 0 ? 10 : 0),
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
                                            .getQuestionSearch
                                            .data?[index]
                                            .userId
                                            ?.profilePhoto ??
                                        "") ==
                                    "" ||
                                !(ref
                                        .watch(publicGroupProfileViewModel)
                                        .getQuestionSearch
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
                                        .getQuestionSearch
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
                                  "${ref.watch(publicGroupProfileViewModel).getQuestionSearch.data?[index].userId?.firstName ?? ""} ${ref.watch(publicGroupProfileViewModel).getQuestionSearch.data?[index].userId?.lastName ?? ""}",
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_month,
                                      color: Color(0xFF979C9E),
                                      size: 12,
                                    ),
                                    gapW4,
                                    Text(
                                      DateFormat.yMMMMd('en_US').format(ref
                                              .watch(
                                                  publicGroupProfileViewModel,)
                                              .getQuestionSearch
                                              .data?[index]
                                              .createdAt ??
                                          DateTime.now(),),
                                      style: const TextStyle(
                                        color: Color(0xFF979C9E),
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    gapW4,
                                    const Icon(
                                      Icons.timer_outlined,
                                      color: Color(0xFF979C9E),
                                      size: 12,
                                    ),
                                    gapW4,
                                    Text(
                                      DateFormat.jm().format(ref
                                              .watch(
                                                  publicGroupProfileViewModel,)
                                              .getQuestionSearch
                                              .data?[index]
                                              .createdAt ??
                                          DateTime.now(),),
                                      style: const TextStyle(
                                        color: Color(0xFF979C9E),
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text("Gardener Thu at 12:30 PM"),
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
                        gapH16,
                        Text(
                          ref
                                  .watch(publicGroupProfileViewModel)
                                  .getQuestionSearch
                                  .data?[index]
                                  .data
                                  ?.question ??
                              "",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.43,
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
                                          .getQuestionSearch
                                          .data?[index]
                                          .questionImage ==
                                      null ||
                                  (!ref
                                          .watch(publicGroupProfileViewModel)
                                          .getQuestionSearch
                                          .data![index]
                                          .questionImage!
                                          .contains('.jpg') &&
                                      !ref
                                          .watch(publicGroupProfileViewModel)
                                          .getQuestionSearch
                                          .data![index]
                                          .questionImage!
                                          .contains('.png')) ||
                                  !ref
                                      .watch(publicGroupProfileViewModel)
                                      .getQuestionSearch
                                      .data![index]
                                      .questionImage!
                                      .contains('http') ||
                                  ref
                                      .watch(publicGroupProfileViewModel)
                                      .getQuestionSearch
                                      .data![index]
                                      .questionImage!
                                      .isEmpty
                              ? Container()
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.network(
                                    ref.watch(publicGroupProfileViewModel).getQuestionSearch.data![index].questionImage!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: CustomButton(
                              text:
                                  "${ref.watch(publicGroupProfileViewModel).getQuestionSearch.data?[index].commentCount ?? 0} Answers",),
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
                  "No questions posted. So empty :(",
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
