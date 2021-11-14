import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final EdgeInsets margin;
  final double width;
  final Function() onPressed;
  const CustomButton({
    Key? key,
    required this.name,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
