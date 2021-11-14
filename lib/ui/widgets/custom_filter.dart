import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class CustomFilter extends StatelessWidget {
  final String name;
  const CustomFilter({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21,
      padding: EdgeInsets.only(
        top: 2,
        bottom: 2,
        left: 10,
        right: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: darkGreyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/ic_drop_down.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
