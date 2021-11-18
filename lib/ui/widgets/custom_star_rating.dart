import 'package:flutter/material.dart';

class CustomStarRating extends StatelessWidget {
  const CustomStarRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/ic_star.png',
          ),
        ),
      ),
    );
  }
}
