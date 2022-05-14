import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';
import '../../../core/constants.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/q00H8EqULYSK74lgevMkhmGGLHn.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches',),
        KHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => KHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageUrl)),
          ),
        ),
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: KWhiteColor, 
                fontWeight: FontWeight.bold, 
                fontSize: 16
            ),
          ),
        ),

        const Icon(CupertinoIcons.play_circle,color: KWhiteColor,size: 47,)
      ],
    );
  }
}
