import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class CustomButtonItem extends StatelessWidget {
  final String imgurl;
  final bool actived;
  const CustomButtonItem({
    Key? key,
    required this.imgurl,
    this.actived = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgurl,
              ),
            ),
          ),
        ),
        Container(
          width: 40,
          height: 2,
          decoration: BoxDecoration(
            color: actived ? greenColor : transparent,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
