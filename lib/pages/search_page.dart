import 'package:flutter/material.dart';
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
          cursorHeight: 20,
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
            contentPadding: const EdgeInsets.all(20),
            fillColor: kPrimaryColor,
            hintText: '',
            prefixIcon: Icon(
              Icons.search,
              size: 32,
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

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 38,
          ),
          child: Column(
            children: [
              searchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
