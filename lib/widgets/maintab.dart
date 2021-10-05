// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:facebook/pages/friend_page.dart';
import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/marketplace_page.dart';
import 'package:facebook/pages/message_page.dart';
import 'package:facebook/pages/notification_page.dart';
import 'package:facebook/pages/video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/mydrawer.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outlined)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -12, end: -5),
        badgeContent: Text(
          "3",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on will pop");
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(milliseconds: 200), () {
      print("set idex");
      _tabController?.index = 0;
    });
    print("return ");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue[700],
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.menu),
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            HomePage(),
            FriendPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarkrtplacePage(),
          ],
        ),
      ),
    );
  }
}
