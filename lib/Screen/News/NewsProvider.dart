import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier
{
  List name = [
    "Bollywood" ,
    "Microsoft",
    "Youtube",
    "Google",
    "Tata",
    "Meta"
  ];
  int index=0;
  void ChangeIndex(newindex)
  {
    index=newindex;
    notifyListeners();
  }
}