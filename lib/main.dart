import 'package:flutter/material.dart';
import 'package:sneakers_app/ui/pages/get_started_page.dart';
import 'package:sneakers_app/ui/pages/sign_in_page.dart';
import 'package:sneakers_app/ui/pages/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
      routes: {
        '/sign-up': (BuildContext context) => SignUp(),
        '/sign-in': (BuildContext context) => SignIn(),
      },
    );
  }
}
