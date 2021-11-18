import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final String imgUrl;
  const Photo({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imgUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
