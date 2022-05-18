import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl = 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1/1.4,
            children: List.generate(
              20,
              (index) {
              return const SearchCard();
            }
          ),
        )
      )
    ],     
    );
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}