import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/utils/utils.dart';

class SubscriptionTile extends ConsumerStatefulWidget {
  const SubscriptionTile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubscriptionTileState();
}

class _SubscriptionTileState extends ConsumerState<SubscriptionTile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      //!======Outer BIG box
      padding: const EdgeInsets.symmetric(
        // vertical: 10,
        horizontal: 8,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/icons/userPic.png"),
                radius: 30,
              ),
              const SizedBox(width: 7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 7),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width * 0.7,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jessica Jones',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '+\$90.00',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            gapH8,
                            SizedBox(
                              width: size.width * 0.7,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '31 May, 11:00 AM',
                                    style: TextStyle(
                                      color: kNevada,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Monthly',
                                    style: TextStyle(
                                      color: kNevada,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
                height: 5,
              ),
              Container(
                color: kNevada,
                height: 0.5,
                width: size.width * 0.9,
              ),
        ],
      ),
    );
  }
}
