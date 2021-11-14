import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';
import 'package:sneakers_app/ui/pages/home_page.dart';
import 'package:sneakers_app/ui/widgets/custom_button_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget buttonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 72,
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonItem(
                imgurl: 'assets/ic_home.png',
                actived: true,
              ),
              CustomButtonItem(
                imgurl: 'assets/ic_promo.png',
                actived: false,
              ),
              CustomButtonItem(
                imgurl: 'assets/ic_chat.png',
                actived: false,
              ),
              CustomButtonItem(
                imgurl: 'assets/ic_delivery.png',
                actived: false,
              ),
              CustomButtonItem(
                imgurl: 'assets/ic_cart.png',
                actived: false,
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
          buildContent(),
          buttonNavigation(),
        ],
      ),
    );
  }
}
