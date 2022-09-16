import 'package:flutter/material.dart';
import 'package:moviez_devtest/shared/styles.dart';

class OtherMovies extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String genre;
  final Row rating;

  const OtherMovies({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.genre,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(bottom: defaultMargin, right: 20),
          // Movie thumbnail
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            image: DecorationImage(
              image: AssetImage(imgUrl),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.1),
                blurRadius: 5,
                offset: const Offset(0, 5.0),
              )
            ],
          ),
        ),
        // Movie title
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 4),
            // Movie genre
            Text(
              genre,
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            // Rating
            rating,
            const SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}
