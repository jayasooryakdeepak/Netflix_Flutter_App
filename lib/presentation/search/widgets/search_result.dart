import 'package:flutter/material.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/core/debounce/debounce.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.4,
                children: List.generate(
                  20,
                  (index) {
                    final movie = state.searchResultList[index];
                    return SearchCard(imageUrl: movie.posterImageUrl);
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class SearchCard extends StatelessWidget {
  final String imageUrl;
  const SearchCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
