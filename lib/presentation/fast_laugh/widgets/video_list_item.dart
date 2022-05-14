import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_rounded,
                        color: KWhiteColor,
                        size: 30,
                      )),
                ),

                //Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/evsWMsxq8xZbCDFWwjN6ZX8e3Fw.jpg'),
                      ),
                    ),
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionsWidget(
                        icon: Icons.add, title: 'My List'),
                    VideoActionsWidget(
                      icon: Icons.share ,title: 'Share'),
                    VideoActionsWidget(
                      icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;

  final String title;
  const VideoActionsWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: KWhiteColor,
            size: 30,
            ),
          Text(
            title,
            style: const TextStyle(
              color: KWhiteColor,
              fontSize: 14        
            ),
          ),
        ],
      ),
    );
  }
}
