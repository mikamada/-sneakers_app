import 'package:flutter/material.dart';
import 'package:sneakers_app/shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Text('sign Up Page'),
            ),
          ],
        ),
      ),
    );
  }
}
