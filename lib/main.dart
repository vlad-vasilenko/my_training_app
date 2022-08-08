import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/login/login_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASYAS',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.pink.shade50),
      ),
      home: LoginWidget(),
      // HomePageShop(),
    );
  }
}
