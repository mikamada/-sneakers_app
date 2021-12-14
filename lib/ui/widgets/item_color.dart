import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class ItemColor extends StatefulWidget {
  final Color color;
  const ItemColor({Key? key, required this.color}) : super(key: key);

  @override
  State<ItemColor> createState() => _ItemColorState();
}

class _ItemColorState extends State<ItemColor> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 18,
      ),
      height: 30,
      width: 30,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: isSelected ? greenColor : transparent,
          ),
          right: BorderSide(
            width: 1.0,
            color: isSelected ? greenColor : transparent,
          ),
          left: BorderSide(
            width: 1.0,
            color: isSelected ? greenColor : transparent,
          ),
          bottom: BorderSide(
            width: 1.0,
            color: isSelected ? greenColor : transparent,
          ),
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: widget.color,
          ),
        ),
      ),
    );
  }
}
