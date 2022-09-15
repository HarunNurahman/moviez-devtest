import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final Color color;

  const RatingItem({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      margin: const EdgeInsets.only(right: 2),
      child: Icon(
        Icons.star_rounded,
        color: color,
      ),
    );
  }
}
