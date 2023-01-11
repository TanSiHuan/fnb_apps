import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hungry/views/screens/auth/welcome_page.dart';
import 'package:hungry/views/screens/home_page.dart';
import 'package:hungry/views/screens/page_switcher.dart';
import 'package:hungry/views/screens/welcome_page_2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: WelcomePage2(),
      home: PageSwitcher(),
    );
  }
}
