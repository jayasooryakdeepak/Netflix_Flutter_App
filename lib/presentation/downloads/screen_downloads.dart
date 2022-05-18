import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({ Key? key }) : super(key: key);

final _widgetList = [
          const _SmartDownloads(),
          Section2(),
          const Section3()   
      ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: EdgeInsets.only(left: 20,top: 7),
          child: AppBarWidget(
            title: "Downloads",
            ),
        )
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (ctx, index) => _widgetList[index], 
        separatorBuilder: (ctx, index) => SizedBox(height: 25), 
        itemCount: _widgetList.length
        ),
      );

  }
}

class Section2 extends StatelessWidget {
  Section2({ Key? key }) : super(key: key);

  final List imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/evsWMsxq8xZbCDFWwjN6ZX8e3Fw.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9qkqJEaYE3HejmOiV9aZckwHJ6f.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(children: [
      const Text(
            "Introducing Downloads For You",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: KWhiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
            ),
          kHeight,
          const Text(
            "We'll download a personalised selection of \n movies and shows for you, so there's \n always something to watch on you \ndevice",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              ),
            ),
          
          SizedBox(
            width: size.width,
            height: size.width,
            
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.37,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadImageWidget(
                  imageList: imageList[0], 
                  margin: EdgeInsets.only(left: 170,top: 60),
                  angle: 25,
                  size: Size(size.width * 0.35, size.width * 0.55),
                ),
                DownloadImageWidget(
                  imageList: imageList[1], 
                  margin: EdgeInsets.only(right: 170,top: 60),
                  angle: -25,
                  size: Size(size.width * 0.35, size.width * 0.55),
                ),
                DownloadImageWidget(
                  imageList: imageList[2],
                  radius: 20  , 
                  margin: EdgeInsets.only(top: 20),
                  size: Size(size.width * 0.40, size.width * 0.60),
                ),

              ]
            ),
          ),
    ],);
  }
}

class Section3 extends StatelessWidget {
  const Section3
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          child: MaterialButton(
              color: KButtonColorBlue,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Set up",
                  style: TextStyle(
                    color: KWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
        ),
        kHeight,
          SizedBox(
            width: 290,
            child: MaterialButton(
              color: KButtonColorWhite,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "See what you can download",
                  style: TextStyle(
                    color: KBlackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
          )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const[
      kWidth,
      Icon(Icons.settings,
      color: KWhiteColor,
      ),
      kWidth,
      Text("Smart Downloads",
      style: TextStyle(
        fontWeight: FontWeight.bold
      ),
      ),
      
    ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required this.imageList,
    required this.size,
    required this.margin,
    this.angle = 0,
    this.radius = 10,
    
    
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi/180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                )
              )),
          ),
        ),
      ),
    );
  }
}