import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, 
  required this.title, 
  required this.icon 
  })    : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: KWhiteColor,
          size: 25,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
