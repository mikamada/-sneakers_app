import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class ItemFormField extends StatelessWidget {
  final String name;
  final String hint;
  final bool obsecure;
  final EdgeInsets margin;

  const ItemFormField(
      {Key? key,
      this.margin = EdgeInsets.zero,
      required this.name,
      required this.hint,
      this.obsecure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecure,
            decoration: InputDecoration(
              // prefix: Container(
              //   width: 24,
              //   height: 24,
              //   decoration: BoxDecoration(
              //     color: primaryColor,
              //     image: DecorationImage(
              //       image: AssetImage(
              //         'assets/account_circle.png',
              //       ),
              //     ),
              //   ),
              // ),
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
