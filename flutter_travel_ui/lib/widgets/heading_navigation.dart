import 'package:flutter/material.dart';

class HeadingNavigation extends StatelessWidget {
  final String heading;
  HeadingNavigation(this.heading);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
