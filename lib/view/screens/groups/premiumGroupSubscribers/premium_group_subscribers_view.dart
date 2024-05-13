
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/text.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';

class PremiumGroupSubscribers extends ConsumerStatefulWidget {
  const PremiumGroupSubscribers({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PremiumGroupSubscribersState();
}

class _PremiumGroupSubscribersState extends ConsumerState<PremiumGroupSubscribers> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print(ref.read(premiumGroupProfileViewModel).groupData);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(premiumGroupProfileViewModel);
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
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
                  color: Color(0xFFF3F5F6),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                  size: 20,
                ),
              ),
            ),
          ),
          title: const Text(
            'Subscribers',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          shadowColor: kBlack,
          bottom: TabBar(
            indicatorColor: primaryColor,
            labelColor: primaryColor,
            unselectedLabelColor: kGrey,
            indicator: const HalfCircleTabIndicator(
              color: primaryColor, // Change this to the desired indicator color
            ),
            tabs: [
              Tab(
                text: "${TextUtils.formatNumber(viewModel.groupData?.subscribers?.length ?? 0)} Subscribers",
              ),
              // const Tab(
              //   text: "0 Subscribers",
              // ),
            ],
          ),
        ),

        body: ListView.separated(
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Container(height: 1, width: size.width, color: Colors.black12,),
              ),
              itemCount: viewModel.groupData?.subscribers?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    padding: viewModel.groupData?.subscribers?[index].user?.profilePhoto == null || !(viewModel.groupData?.subscribers?[index].user?.profilePhoto?.contains("https://skillcollab") ?? true)
                        // ignore: use_named_constants
                        ? const EdgeInsets.all(8) : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: viewModel.groupData?.subscribers?[index].user?.profilePhoto == null || !(viewModel.groupData?.subscribers?[index].user?.profilePhoto?.contains("https://skillcollab") ?? true)
                        ? Image.asset('assets/icons/user.png', fit: BoxFit.cover,)
                        : Image.network(viewModel.groupData?.subscribers?[index].user?.profilePhoto ?? AppConstants.imageNotFoundLink, fit: BoxFit.cover),
                    ),
                  ),
                  title: Text(
                    "${viewModel.groupData?.subscribers?[index].user?.firstName ?? ""} ${viewModel.groupData?.subscribers?[index].user?.lastName ?? ""}", 
                    style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  subtitle: Text(
                    "${viewModel.groupData?.subscribers?[index].user?.userName ?? ""} - ${viewModel.groupData?.subscribers?[index].user?.location ?? ""}", 
                    style: const TextStyle(color: kGrey, fontSize: 12),
                  ),
                  // trailing: AppConstants.userId == _viewModel.getFollowersModel.data?[index].userId?.id?null: Visibility(
                  //   visible: widget.isSelfGroup,
                  //   child: Container(
                  //     height: 45,
                  //     // width: 100,
                  //     padding: const EdgeInsets.all(4),
                  //     child: MaterialButton(
                  //       onPressed: () {
                  //         // Logger.printWarning(_viewModel.getFollowersModel.data![index].userId!.id!);
                  //         // Logger.printWarning(AppConstants.userId);
                  //         ref.read(groupMembersViewModel).removeFollower(
                  //           context, 
                  //           RemoveFollowerRequestModel(memberId: _viewModel.getFollowersModel.data?[index].userId?.id ?? ""),
                  //            _viewModel.getFollowersModel.data?[index].userId?.firstName ?? "",
                  //           widget.groupId,
                  //         );
                  //         // _viewModel.removeFollower(context, _viewModel.getFollowersModel.data![index].userId!.id!)
                  //         //       .then((value) => _viewModel.getFollowersOfGroup(context, widget.groupId));
                  //       },
                  //       color: primaryColor,
                  //       child: !ref.watch(groupMembersViewModel).loading || _viewModel.loading
                  //         ? const Text("Remove", style: TextStyle(color: kWhite, fontSize: 12, fontWeight: FontWeight.w900),)
                  //         : const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: kWhite,)),
                  //     ),
                  //   ),
                  // ),
                );
              },
            ),        
      ),
    );
  }
}