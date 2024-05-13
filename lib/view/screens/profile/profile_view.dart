import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/homeView/group_card.dart';
import 'package:skill_colab/view/screens/homeView/post_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                // alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/cover_bg.png"),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 32),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/icons/peoplePic.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 65,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/icons/peoplePic.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/icons/add_gradient.png",
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Jessica Jones',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'Expert in all things gardening',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            // GestureDetector(
                            //   onTap: () => context.pushNamed(AppRoute.groupMembers.name),
                            //   child: const Text(
                            //     '710 Memebers',
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 12,
                            //       fontFamily: 'Inter',
                            //       fontWeight: FontWeight.w700,
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/analytics.png",
                                  height: 30,
                                ),
                                const SizedBox(width: 13),
                                Image.asset(
                                  "assets/icons/earning.png",
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            gapH48,
                            TabBar(
                              onTap: (value) {
                                index = value;
                                setState(() {});
                              },
                              padding: EdgeInsets.zero,
                              isScrollable: true,
                              indicatorColor: primaryColor,
                              labelColor: primaryColor,
                              unselectedLabelColor: kGrey,
                              indicator: const HalfCircleTabIndicator(
                                color:
                                    primaryColor, // Change this to the desired indicator color
                              ),
                              tabs: const [
                                Tab(
                                  child: Row(
                                    children: [
                                      Icon(Icons.lock_open_rounded),
                                      Text("137 Public Posts"),
                                    ],
                                  ),
                                  // icon: Icon(Icons.lock_open_rounded),
                                  // text: "137 Public Posts",
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Icon(Icons.monetization_on_outlined),
                                      Text("56 Premium Post"),
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      Icon(Icons.group_outlined),
                                      Text("Member of"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.2),
                              width: double.infinity,
                              height: 1,
                            ),
                            if (AppConstants.usertype == 0)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 100),
                                child: GuestLoginRequestWidget(
                                    text: "to see the user's contents",),
                              )
                            else
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 11,
                                      right: 16,
                                      left: 16,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 42,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: primaryColor),
                                          ),
                                          child: Container(
                                            width: 40,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.white,),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  "assets/icons/peoplePic.png",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        gapW16,
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () => context.pushNamed(
                                                AppRoute.createPost.name,),
                                            child: TextFormField(
                                              enabled: false,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              decoration: InputDecoration(
                                                fillColor:
                                                    const Color(0xFFF8F7F9),
                                                filled: true,
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 16,),
                                                hintText:
                                                    "Write Something.....",
                                                hintStyle: const TextStyle(
                                                    fontSize: 12,),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: const BorderSide(
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 18,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0x3F1B9AAA),
                                              blurRadius: 18,
                                              offset: Offset(0, 8),
                                            ),
                                            BoxShadow(
                                              color: Color(0x0A141414),
                                              blurRadius: 1,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Search',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 18,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: primaryColor),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.tune,
                                              color: primaryColor,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Filter',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  // PostCard()
                                  getView(index),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3 - 16,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(horizontal: 26),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x14000000),
                            blurRadius: 15,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Subscribe Settings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 20,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFD8D8D8),
                                ),
                              ),
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                '\$ 5.99 ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                '/ per month',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF979C9E),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getView(int index) {
    switch (index) {
      case 0:
        return const PostCard();
      case 1:
        return const PostCard();
      case 2:
        return const GroupCard();

      default:
        return const PostCard();
    }
  }
}
