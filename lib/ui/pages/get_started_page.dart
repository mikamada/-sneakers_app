import 'package:flutter/material.dart';
import 'package:sneakers_app/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img_get.png',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your\nFavorite sneakers',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Quality and comfortable sneakers are\navailable here,',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            CustomButton(
              name: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              margin: EdgeInsets.only(
                top: 42,
                bottom: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
