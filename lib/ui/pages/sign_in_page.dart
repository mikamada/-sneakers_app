import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneakers_app/shared/theme.dart';
import 'package:sneakers_app/ui/widgets/custom_button.dart';
import 'package:sneakers_app/ui/widgets/text_form_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Center(
        child: Text(
          'Sign In with\nyour existing account',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget textFieldForm() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemFormField(
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              name: 'Email address',
              hint: 'Your email address',
            ),
            ItemFormField(
              obsecure: true,
              name: 'Password',
              hint: 'Your password',
            ),
            CustomButton(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 50,
              ),
              name: 'Sign In Now',
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
            ),
            Center(
              child: Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Don’t have an account Sign Up',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 50,
          ),
          children: [
            title(),
            textFieldForm(),
          ],
        ),
      ),
    );
  }
}
