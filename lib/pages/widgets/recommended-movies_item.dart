import 'package:flutter/material.dart';
import 'package:moviez_devtest/pages/widgets/rating_item.dart';
import 'package:moviez_devtest/shared/styles.dart';

class RecommendedMovie extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String genre;
  final Row rating;

  const RecommendedMovie({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.genre,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              // Movie thumbnail
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
              // Shadow under thumbnail
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 10.0),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Movie title
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: titleTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Movie genre
                    Text(
                      genre,
                      style: subtitleTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              // Movie rating
              rating,
            ],
          ),
        ],
      ),
    );
  }
}
