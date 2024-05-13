// ignore_for_file: no_leading_underscores_for_local_identifiers, use_named_constants

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

class MyGroupInterestView extends ConsumerStatefulWidget {
  const MyGroupInterestView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyGroupInterestViewState();
}

class _MyGroupInterestViewState extends ConsumerState<MyGroupInterestView> {
  @override
  Widget build(BuildContext context) {
    final _viewModel = ref.watch(myGroupsViewModel);
    return Scaffold(
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
                                  'My Interests',
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
                        Container(
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
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 15),
                  ],),
              // elevation: 5,
              // color: Colors.white,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(15),
              // ),
              margin: const EdgeInsets.only(right: 16, left: 16),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Interests',
                        style: TextStyle(
                          color: Color(0xFF1B9AAA),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      gapH8,
                      const Divider(
                        color: Color.fromARGB(255, 225, 225, 225),
                        thickness: 1,
                        height: 5,
                      ),
                      gapH8,
                      Container(
                          child: (_viewModel.memberOfResponseModel.data?.isNotEmpty ?? [].isNotEmpty) 
                            ? ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(0),
                                itemCount: _viewModel.memberOfResponseModel.data?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      if(_viewModel.memberOfResponseModel.data?[index]?.groupId?.privacy == "public") {
                                        context.pushNamed(
                                          AppRoute.publicGroupProfileView.name,
                                          extra: {'groupDetails': GroupDatum(id: _viewModel.memberOfResponseModel.data?[index]?.groupId?.id), 'isSelfGroup': true},
                                        ); 
                                      } else if(_viewModel.memberOfResponseModel.data?[index]?.groupId?.privacy == "private") {
                                        context.pushNamed(
                                          AppRoute.privateGroupProfileView.name,
                                          extra: {'groupDetails': GroupDatum(id: _viewModel.memberOfResponseModel.data?[index]?.groupId?.id), 'isSelfGroup': true},
                                        ); 
                                      } else {
                                        context.pushNamed(
                                          AppRoute.premiumGroupProfileView.name,
                                          extra: {'groupDetails': GroupDatum(id: _viewModel.memberOfResponseModel.data?[index]?.groupId?.id), 'isSelfGroup': true},
                                        ); 
                                      }     
                                              
                                    },
                                            
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 10, right: 20,),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                child: !_viewModel.memberOfResponseModel.data![index]!.groupId!.groupPhoto!.contains('https://skill') && (_viewModel.memberOfResponseModel.data![index]!.groupId!.groupPhoto!.isNotEmpty)
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
                                                      image: NetworkImage(_viewModel.memberOfResponseModel.data![index]!.groupId!.groupPhoto!),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 16,
                                              ),
                                              Text(
                                                _viewModel.memberOfResponseModel.data?[index]!.groupId?.name ?? "",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),                                        
                                        ],
                                      ),
                                    ),
                                  );  
                                },
                              )
                          : const Center(child: Text("You don't have groups :(", style: TextStyle(color: primaryColor),),),
                        ),
                      ],),
                      ),
                      ),
                      ),),),
                      ],),);
                    
                  
  }
}
