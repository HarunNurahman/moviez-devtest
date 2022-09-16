import 'package:flutter/material.dart';
import 'package:moviez_devtest/pages/widgets/other-movies_item.dart';
import 'package:moviez_devtest/pages/widgets/rating_item.dart';
import 'package:moviez_devtest/shared/styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    // Search Bar Widget
    Widget searchBar() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 35),
        child: TextFormField(
          controller: searchController,
          cursorHeight: 20,
          autofocus: true,
          autocorrect: false,
          enableSuggestions: false,
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: kPrimaryColor,
          style: titleTextStyle.copyWith(
            fontSize: 16,
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 11,
            ),
            fillColor: kPrimaryColor,
            hintText: '',
            prefixIcon: Icon(
              Icons.search,
              size: 22,
              color: kPrimaryColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      );
    }

    Widget searchResult() {
      // Search Result List
      Widget _searchList() {
        return Column(
          children: [
            OtherMovies(
              imgUrl: 'assets/images/img_dark-2.png',
              title: 'The Dark 2',
              genre: 'Horror',
              rating: Row(
                children: [
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kLightGrayColor),
                ],
              ),
            ),
            OtherMovies(
              imgUrl: 'assets/images/img_dark-knight.png',
              title: 'The Dark Knight',
              genre: 'Heroes',
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
            OtherMovies(
              imgUrl: 'assets/images/img_dark-tower.png',
              title: 'The Dark Tower',
              genre: 'Action',
              rating: Row(
                children: [
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kYellowColor),
                  RatingItem(color: kLightGrayColor),
                ],
              ),
            ),
          ],
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Search Result ',
              style: headerTextStyle.copyWith(fontSize: 20),
              children: [
                TextSpan(
                  text: '(3)',
                  style: titleTextStyle.copyWith(fontSize: 20),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          _searchList(),
        ],
      );
    }

    Widget suggestButton() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 220,
          height: 50,
          margin: const EdgeInsets.only(top: 70),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(37),
              ),
              shadowColor: kPrimaryColor,
            ),
            child: Text(
              'Suggest Movie',
              style: titleTextStyle.copyWith(
                color: kWhiteColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 38,
          ),
          child: Expanded(
            child: Column(
              children: [
                searchBar(),
                const SizedBox(height: 30),
                searchResult(),
                suggestButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
