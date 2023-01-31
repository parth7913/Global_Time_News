import 'package:flutter/material.dart';
import 'package:news_app/Screen/CountryNews/provider/CountryProvider.dart';
import 'package:news_app/Screen/CountryNews/view/countryPage.dart';
import 'package:news_app/Screen/News/NewsProvider.dart';
import 'package:news_app/Screen/News/View/Home_Page.dart';
import 'package:news_app/Tab%20Bar/Tabbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NewsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CountryProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => TabBaar(),
          'H': (context) => Home_Page(),
          'Cp': (context) => CountryPage(),
        },
      ),
    ),
  );
}
