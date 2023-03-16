import 'package:my_app/ui/pages/get_started_page.dart';
import 'package:my_app/ui/pages/sign_up_page.dart';
import 'package:my_app/ui/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:my_app/ui/pages/splash_page.dart';
import 'package:my_app/ui/pages/tourism_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: TourismPlacePage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const SplashPage(),
      //   '/get-started': (context) => const GetStartedPage(),
      //   '/signin': (context) => const SignInPage(),
      //   '/signup': (context) => SignUpPage(),
      // },
    );
  }
}
