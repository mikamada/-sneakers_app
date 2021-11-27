import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';
import 'package:sneakers_app/ui/widgets/button_buy&cart.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 24,
        ),
        width: 414,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/detailPage.png',
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/btn_back.png',
              width: 30,
            ),
            Image.asset(
              'assets/btn_horiz.png',
              width: 30,
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          width: double.infinity,
          height: 80,
          color: whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonBuy(
                title: 'Add to cart',
                onPressed: () {},
                color: greenColor,
              ),
              ButtonBuy(
                title: 'Buy now',
                onPressed: () {},
                color: primaryColor,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          ListView(
            children: [
              header(),
            ],
          ),
          button(),
        ],
      ),
    );
  }
}
