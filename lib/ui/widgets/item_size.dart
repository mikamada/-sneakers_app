import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class ItemSize extends StatefulWidget {
  final String size;
  final bool isSelected;
  const ItemSize({
    Key? key,
    required this.size,
    this.isSelected = false,
  }) : super(key: key);

  @override
  State<ItemSize> createState() => _ItemSizeState();
}

class _ItemSizeState extends State<ItemSize> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 18),
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 40,
        width: 40,
        child: Center(
          child: Text(
            widget.size,
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: isSelect ? greenColor.withOpacity(0.70) : transparent,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
