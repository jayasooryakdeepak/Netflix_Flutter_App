import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';

import '../../../core/colors/colors.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(fontSize: 18, color: KGreyColor),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      kNewandHotTempImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black.withOpacity(0.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off_rounded,
                            color: KWhiteColor,
                            size: 20,
                          )),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "MISSION 5",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -3),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        title: "Remind Me",
                        icon: Icons.add_alert_outlined,
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        title: "Info",
                        icon: Icons.info_outline,
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                    ],
                  )
                ],
              ),
              kHeight,
              const Text("Coming on friday"),
              kHeight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                    fontSize: 18,
                    color: KGreyColor,
                    fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                "With the IMF disbanded and the CIA hunting him,  Ethan and his team race against time to prove the existence of the Syndicate, a highly-skilled terror organisation, before they plan their next attack.",
                style: TextStyle(
                  color: KGreyColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
