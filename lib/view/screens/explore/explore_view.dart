// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_personal_interests_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestDialog.dart';
import 'package:skill_colab/view/screens/explore/explore_view_model.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view_model.dart';


class ExploreView extends ConsumerStatefulWidget {
  const ExploreView({super.key});

  @override
  ConsumerState<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends ConsumerState<ExploreView> with BaseScreenView {
  late ExploreViewModel _viewModel;
  List<Interest?> list = [];
  List<PersonalInterest?> personalList = [];
  int itemlength = 0;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(exploreViewModel);
      _viewModel.attachView(this);

      if(AppConstants.usertype == 0){
        _viewModel.getInterest(context).whenComplete(() {
          itemlength = _viewModel.getInterestsResponseModel.data?.length ?? 0 + 1;
          for(int i = 0; i < itemlength; i++){
            list.add(_viewModel.getInterestsResponseModel.data?[i]);
          }
        });
      }
      else{
        _viewModel.getPersonalInterest(context, const GetPersonalInterestRequest(name: '')).whenComplete(() {
          itemlength = _viewModel.getPersonalInterestResponse.data?.interests?.length ?? 0 + 1;
          for(int i = 0; i < itemlength; i++) {
            final Interest tempInterest = Interest(
              createdAt: DateTime.now(),
              id: _viewModel.getPersonalInterestResponse.data?.interests?[i].id ?? "",
              interestPhoto: _viewModel.getPersonalInterestResponse.data?.interests?[i].interestPhoto ?? "",
              name: _viewModel.getPersonalInterestResponse.data?.interests?[i].name ?? "",
              updatedAt: DateTime.now(),
            );
            list.add(tempInterest);
          }
        });
      }
      
    });
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(exploreViewModel);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        } else {
          context.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Explore',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                if (AppConstants.usertype == 1) {
                  context.pushNamed(AppRoute.myGroupsView.name);
                } else {
                  guestLoginRequestDialog(
                      context, "to get into the menu section",);
                }
              },
              child: SvgPicture.asset(
                'assets/icons/drawerIcon.svg',
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              gapH16,
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _searchController,
                  onChanged: (value) {
                    if(value.length > 2) {
                      final List<Interest> filteredList = _viewModel.interestFilterList
                          .where((element) => element.name?.toLowerCase().contains(value.toLowerCase()) ?? false).toList();
                      _viewModel.setInterestFilterList(filteredList);
                    } else {
                      _viewModel.setInterestFilterList(_viewModel.getInterestsResponseModel.data ?? []);
                    }
                  },
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                    hintText: "Search",
                    suffixIcon: const Icon(
                      Icons.search,
                      color: primaryColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: primaryColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.7,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: _searchController.text.length > 2 
                  ? GridView.builder(
                    itemCount: AppConstants.usertype == 0 
                      ? _viewModel.interestFilterList.length 
                      : _viewModel.getPersonalInterestResponse.data?.interests?.length ?? 0,
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                      pattern: [
                        const QuiltedGridTile(2, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(2, 4),
                        const QuiltedGridTile(2, 2),
                        const QuiltedGridTile(4, 2),
                        const QuiltedGridTile(2, 2),
                      ],
                    ),
                    itemBuilder:(context, index) => GestureDetector(
                          onTap: () { 
                            ref.watch(exploreSearchViewModel).resetPageNumber();
                            ref.watch(exploreSearchViewModel).clearAllDataList();
                            context.pushNamed(AppRoute.exploreSearch.name, extra:  [_viewModel.interestFilterList[index]]);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.3,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              child: BackdropFilter(
                                filter: const ColorFilter.mode(
                                  Colors.black,
                                  BlendMode.color,
                                ),
                                // placeholder: kTransparentImage,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  fit: StackFit.expand,
                                  children: [
                                    Image(image: NetworkImage(
                                      AppConstants.usertype == 0 
                                      ? _viewModel.interestFilterList[index].interestPhoto ?? 'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg' 
                                      : _viewModel.getPersonalInterestResponse.data?.interests?[index].interestPhoto ?? 'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
                                      // imageUrl: _viewModel.interestFilterList[index].interestPhoto ?? 'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
                                      
                                    ),
                                    color: Colors.black.withOpacity(0.4),
                                      colorBlendMode: BlendMode.colorBurn,
                                      fit: BoxFit.cover,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          AppConstants.usertype == 0 
                                            ? _viewModel.interestFilterList[index].name ?? ""
                                            : _viewModel.getPersonalInterestResponse.data?.interests?[index].name ?? "",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      // childCount: itemlength + 1,
                  )
                  : GridView.custom(
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                      pattern: [
                        const QuiltedGridTile(2, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(2, 4),
                        const QuiltedGridTile(2, 2),
                        const QuiltedGridTile(4, 2),
                        const QuiltedGridTile(2, 2),
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if(index == 0){
                          return GestureDetector(
                            onTap: () {
                              ref.watch(exploreSearchViewModel).resetPageNumber();
                              ref.watch(exploreSearchViewModel).clearAllDataList();
                              Logger.printError('List of Interest $list');
                              context.pushNamed(AppRoute.exploreSearch.name, extra: list);
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.3,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                                child: BackdropFilter(
                                  filter: const ColorFilter.mode(
                                    Colors.black,
                                    BlendMode.color,
                                  ),
                                  // placeholder: kTransparentImage,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    fit: StackFit.expand,
                                    children: [
                                      Image(image: const NetworkImage(
                                        'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
                                      ),
                                      color: Colors.black.withOpacity(0.4),
                                      colorBlendMode: BlendMode.colorBurn,
                                      fit: BoxFit.cover,),
                                      const Padding(
                                        padding:  EdgeInsets.all(16.0),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "All",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }else if (index > 0) {
                          return GestureDetector(
                            onTap: () { 
                              ref.watch(exploreSearchViewModel).resetPageNumber();
                              ref.watch(exploreSearchViewModel).clearAllDataList();

                              Interest singleInterest = Interest(
                                createdAt: DateTime.now(),
                                id: _viewModel.getPersonalInterestResponse.data?.interests?[index - 1].id ?? "",
                                interestPhoto: _viewModel.getPersonalInterestResponse.data?.interests?[index - 1].interestPhoto ?? "",
                                name: _viewModel.getPersonalInterestResponse.data?.interests?[index - 1].name ?? "",
                                updatedAt: DateTime.now(),
                              );

                              context.pushNamed(AppRoute.exploreSearch.name, extra: [singleInterest]);
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.3,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                                child: BackdropFilter(
                                  filter: const ColorFilter.mode(
                                    Colors.black,
                                    BlendMode.color,
                                  ),
                                  // placeholder: kTransparentImage,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    fit: StackFit.expand,
                                    children: [
                                      Image(image:  NetworkImage(
                                        AppConstants.usertype == 0 ? 
                                          _viewModel.interestFilterList[index].interestPhoto ?? 'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg' : 
                                          _viewModel.getPersonalInterestResponse.data?.interests?[index - 1].interestPhoto ?? 'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
                                        
                                      ),
                                      color: Colors.black.withOpacity(0.4),
                                        colorBlendMode: BlendMode.colorBurn,
                                        fit: BoxFit.cover,),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            AppConstants.usertype == 0 ?
                                              (_viewModel.getInterestsResponseModel.data ?? [])[index - 1].name ?? "" :
                                              _viewModel.getPersonalInterestResponse.data?.interests?[index-1].name ?? "",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        return null;
                      },
                      childCount: AppConstants.usertype == 0? (_viewModel.getInterestsResponseModel.data?.length?? 0)+1 :(_viewModel.getPersonalInterestResponse.data?.interests?.length ?? 0) + 1,
                      // childCount: itemlength + 1,
                    ),
                  ),
              ),
            ],
          ),
        ),
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

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;

  const BackGroundTile({required this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}
