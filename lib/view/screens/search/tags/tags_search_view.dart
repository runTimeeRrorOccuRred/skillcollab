// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_colab/utils/app_sizes.dart';

class TagsSearchView extends ConsumerStatefulWidget {
  const TagsSearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TagsSearchViewState();
}

class _TagsSearchViewState extends ConsumerState<TagsSearchView> {

  List<Map<String, dynamic>> tags = [
    {
      "title": "#gardening",
      "number": 200,
    },
    {
      "title": "#gardeningvilla",
      "number": 55,
    },
    {
      "title": "#gardeningbooks",
      "number": 10,
    },
    {
      "title": "#ministryofgarden",
      "number": 1,
    },
    {
      "title": "#gardening",
      "number": 200,
    },
    {
      "title": "#gardeningvilla",
      "number": 55,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        // child: ListView.separated(
        //   separatorBuilder: (context, index) => Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        //     child: Container(height: 1, width: size.width, color: Colors.black12,),
        //   ),
        //   itemCount: tags.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: Container(
        //         height: 40,
        //         width: 40,
        //         decoration: BoxDecoration(
        //           color: const Color(0xfff3f5f6),
        //           borderRadius: BorderRadius.circular(40)
        //         ),
        //         child: const Center(
        //           child: Text("#", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),)
        //         ),
        //       ),
        //       title: Text(tags[index]['title'], style: const TextStyle(color: primaryColor, fontWeight: FontWeight.bold,),),
        //       subtitle: Text(
        //         "${tags[index]['number']} Posts",
        //         style: const TextStyle(color: kGrey),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
