import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 250,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: KRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            left: 13,
            bottom: -15,
            child: BorderedText(
              strokeWidth: 4.0,
              strokeColor: KWhiteColor,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontSize: 110,
                  decoration: TextDecoration.none,
                  color: Colors.black
                ),
              ),
            ))
      ],
    );
  }
}
