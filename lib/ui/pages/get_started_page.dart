import 'package:flutter/material.dart';
import 'package:sneakers_app/ui/pages/sign_up.dart';
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
            Container(
              margin: EdgeInsets.only(
                top: 42,
                bottom: 40,
              ),
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
