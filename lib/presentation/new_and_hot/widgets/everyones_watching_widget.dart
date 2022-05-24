import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            color: KGreyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "Follow the lives of six reckless adults living in Manhattan, as they indulge in adventures which make their lives both troublesome and happening.",
          style: TextStyle(
            color: KGreyColor,
          ),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              title: "Share",
              icon: Icons.share,
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              title: "My List",
              icon: Icons.add,
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              title: "Play",
              icon: Icons.play_arrow,
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}