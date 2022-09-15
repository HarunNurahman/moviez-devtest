import 'package:flutter/material.dart';
import 'package:moviez_devtest/pages/search_page.dart';
import 'package:moviez_devtest/pages/widgets/other-movies_item.dart';
import 'package:moviez_devtest/pages/widgets/rating_item.dart';
import 'package:moviez_devtest/pages/widgets/recommended-movies_item.dart';
import 'package:moviez_devtest/shared/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Header Widget (Title, Subtitle, Search Button)
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Moviez',
                style: headerTextStyle.copyWith(fontSize: 28),
              ),
              const SizedBox(height: 4),
              Text(
                'Watch much easier',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SearchPage(),
                ),
              );
            },
            icon: Icon(
              Icons.search,
              size: 32,
              color: kPrimaryColor,
            ),
          )
        ],
      );
    }

    // Body Content Widget (Recommended, From Disney)
    Widget body() {
      // Recommended Movie
      Widget _recommendedMovie() {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          // Movie list
          child: Row(
            children: [
              RecommendedMovie(
                imgUrl: 'assets/images/img_john-wick.png',
                title: 'John Wick 4',
                genre: 'Action, Crime',
                rating: Row(
                  children: [
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kYellowColor),
                  ],
                ),
              ),
              RecommendedMovie(
                imgUrl: 'assets/images/img_bohemian-rhapsody.png',
                title: 'Bohemian Rhapsody',
                genre: 'Documentary',
                rating: Row(
                  children: [
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kYellowColor),
                    RatingItem(color: kLightGrayColor),
                    RatingItem(color: kLightGrayColor),
                  ],
                ),
              )
            ],
          ),
        );
      }

      // Other Movie (From Disney)
      Widget _otherMovie() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header text
            Text(
              'From Disney',
              style: headerTextStyle.copyWith(fontSize: 24),
            ),
            const SizedBox(height: 20),
            // Movie List
            OtherMovies(
              imgUrl: 'assets/images/img_mulan.png',
              title: 'Mulan Session',
              genre: 'History, War',
              rating: Row(
                children: [
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kLightGrayColor),
                  RatingItem(color: kLightGrayColor),
                ],
              ),
            ),
            OtherMovies(
              imgUrl: 'assets/images/img_beauty-and-beast.png',
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              rating: Row(
                children: [
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                ],
              ),
            )
          ],
        );
      }

      return Column(
        children: [
          _recommendedMovie(),
          const SizedBox(height: 30),
          _otherMovie(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin + 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(height: 30),
              body(),
            ],
          ),
        ),
      ),
    );
  }
}
