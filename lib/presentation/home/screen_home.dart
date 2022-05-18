import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_card.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';
import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            }),
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    MainTitleCard(
                      title: 'Released in the past year',
                    ),
                    kHeight,
                    MainTitleCard(
                      title: 'Trending Now',
                    ),
                    kHeight,
                    NumberTitleCard(),
                    kHeight,
                    MainTitleCard(
                      title: 'Tense Dramas',
                    ),
                    kHeight,
                    MainTitleCard(
                      title: 'South Indian Cinema',
                    ),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: KBlackColor.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kWidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Tv Shows",
                                  style: kHomeTitleText,
                                ),
                                Text(
                                  "Movies",
                                  style: kHomeTitleText,
                                ),
                                Text(
                                  "Categories",
                                  style: kHomeTitleText,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    : kHeight
              ],
            ),
          );
        },
      ),
    );
  }
}
