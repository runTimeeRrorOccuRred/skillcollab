import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/group_post_tile.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_widgets/widgets/user_post_tile.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class SearchPublicPostsView extends ConsumerStatefulWidget {
  const SearchPublicPostsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SearchPublicPostsViewState();
}

class SearchPublicPostsViewState extends ConsumerState<SearchPublicPostsView> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        ref.read(searchViewModel).incrementPageNumber();
        ref.read(searchViewModel).getAllGroupsAndPeopleWithLogin(
          context, 
          GetAllGroupsAndPeopleWithLoginRequestModel(
            feedFilter: 'New',
            interests: '',
            searchKey: ref.watch(searchViewModel).searchController.text,
            timeFilter: 'allTime',
          ), 
          10, 
          ref.watch(searchViewModel).allDataPageNumber,
          load: false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(searchViewModel);
    return viewModel.allDataList.isNotEmpty
        ? CustomMaterialIndicator(
          onRefresh: ()async{
            Future.delayed(const Duration(seconds: 2));
            ref.read(searchViewModel).clearAllDataList();
            ref.read(searchViewModel).getAllGroupsAndPeopleWithLogin(
                context,
                GetAllGroupsAndPeopleWithLoginRequestModel(
                  feedFilter: 'New',
                  interests: '',
                  searchKey: ref.read(searchViewModel).searchController.text,
                  timeFilter: 'allTime',
                ),
                10,
                ref.read(searchViewModel).allDataPageNumber,
                load: false,
            ); 
          },
          indicatorBuilder: (context, controller) {
            return const Icon(
              Icons.refresh,
              color: primaryColor,
              size: 30,
            );
          },
          child: ListView.builder(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            // shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 10),
            itemCount: viewModel.allDataList.length,
            itemBuilder: (context, index) {
              // return PublicPostsTile(postData: _viewModel.allDataList[index] ?? const PeopleAndGroupPost());
              if(viewModel.allDataList[index].groupId == null) {
                return GestureDetector(
                  onTap: () => Logger.printInfo(viewModel.allDataList[index].toString()),
                  child: UserPostTile(userPostData: viewModel.allDataList[index], index: index, isSearch: true,),
                );
              } else {
                return GroupPostTile(userPostData: viewModel.allDataList[index], index: index, isSearch: true,);
              }
            },
          ),
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
}
