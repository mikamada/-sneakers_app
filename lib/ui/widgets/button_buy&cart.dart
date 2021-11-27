import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

// ignore: must_be_immutable
class ButtonBuy extends StatelessWidget {
  final String title;
  final Color color;
  Function() onPressed = () {};
  ButtonBuy({
    Key? key,
    required this.color,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 165,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
