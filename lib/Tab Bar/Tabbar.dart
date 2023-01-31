import 'package:flutter/material.dart';
import 'package:news_app/Screen/CountryNews/view/countryPage.dart';
import 'package:news_app/Screen/News/View/Home_Page.dart';

class TabBaar extends StatefulWidget {
  const TabBaar({Key? key}) : super(key: key);

  @override
  State<TabBaar> createState() => _TabBaarState();
}

class _TabBaarState extends State<TabBaar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Global Times News"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "TOP NEWS",
                ),
                Tab(
                  text: "COUNTRY",
                ),
              ],
            ),
            actions: [
              PopupMenuButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                color: Colors.blue,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Bookmarks",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ];
                },
              )
            ],
          ),
          body: TabBarView(
            children: [
              Home_Page(),
              CountryPage(),
            ],
          ),
        ),
      ),
    );
  }
}
