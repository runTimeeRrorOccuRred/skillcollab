// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/search/interests/interests_search_view_model.dart';

class InterestsSearchView extends ConsumerStatefulWidget {
  const InterestsSearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InterestsSearchViewState();
}

class _InterestsSearchViewState extends ConsumerState<InterestsSearchView> with BaseScreenView {

  late InterestsSearchViewModel _viewModel;

  List<Map<String, dynamic>> interests = [
    {
      "title": "Gardening props",
      "number": 200,
    },
    {
      "title": "Gardening books",
      "number": 10,
    },
    {
      "title": "Gardening villa",
      "number": 5,
    },
    {
      "title": "Ministry of garden",
      "number": 1,
    },
    {
      "title": "Gardening props",
      "number": 10,
    },
    {
      "title": "Gardening books",
      "number": 5,
    },
  ];

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(interestsSearchViewModel);
    _viewModel.attachView(this);
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(interestsSearchViewModel);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Coming soon"),
            gapH20,
            SvgPicture.asset("assets/icons/coming-soon.svg", height: 60, width: 60,),
            gapH60,
          ],
        ),
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Container(
        //         width: size.width,
        //         height: _viewModel.showAllResults ? size.height : size.height / 2.5,
        //         child: ListView.separated(
        //           separatorBuilder: (context, index) => Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        //             child: Container(height: 1, width: size.width, color: Colors.black12,),
        //           ),
        //           itemCount: interests.length < 4 
        //               ? interests.length
        //               : _viewModel.showAllResults
        //                   ? interests.length
        //                   : 4,
        //           itemBuilder: (context, index) {
        //             return ListTile(
        //               leading: Container(
        //                 height: 40,
        //                 width: 40,
        //                 decoration: BoxDecoration(
        //                   color: const Color(0xfff3f5f6),
        //                   borderRadius: BorderRadius.circular(40)
        //                 ),
        //                 child: Center(
        //                   child: SvgPicture.asset("assets/icons/search_icon.svg",),
        //                 ),
        //               ),
        //               title: Text(interests[index]['title'], style: const TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
        //               subtitle: Text(
        //                 _viewModel.formatGroupNumberText(interests[index]['number']),
        //                 style: const TextStyle(color: kGrey),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //       Visibility(
        //         visible: !_viewModel.showAllResults,
        //         child: TextButton(
        //           onPressed: () {
        //             _viewModel.toggleShowAllResults();
        //           },
        //           child: const Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text("See all results", style: TextStyle(color: primaryColor),),
        //               Icon(Icons.keyboard_arrow_down_rounded, color: primaryColor,), 
        //             ],
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
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
