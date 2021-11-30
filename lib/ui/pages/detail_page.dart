import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';
import 'package:sneakers_app/ui/widgets/button_buy&cart.dart';
import 'package:sneakers_app/ui/widgets/item_color.dart';
import 'package:sneakers_app/ui/widgets/item_size.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isClicked = false;
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/btn_back.png',
                width: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Image.asset(
                isClicked
                    ? 'assets/btn_wishlist.png'
                    : 'assets/btn_unwishlist.png',
                width: 30,
              ),
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
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Color(0xFF00ffff),
              ),
            ),
          ),
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

    Widget detailProduct() {
      return Container(
        width: double.infinity,
        height: 600,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        color: whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Air Max Motion 2',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/ic_star.png',
                  width: 24,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '5/5',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'IDR 850.000',
              style: blueTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Size:',
                  style: greyTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                ItemSize(
                  size: '40',
                ),
                ItemSize(
                  size: '41',
                ),
                ItemSize(
                  size: '42',
                ),
                ItemSize(
                  size: '43',
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Color:',
                  style: greyTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                ItemColor(color: greyColor),
                ItemColor(color: blackColor),
                ItemColor(color: primaryColor),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'About:',
              style: greyTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            Text(
              "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 40,
            ),
          ],
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
              detailProduct(),
            ],
          ),
          button(),
        ],
      ),
    );
  }
}
