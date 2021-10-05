// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:facebook/widgets/home/menubar.dart';
import 'package:facebook/widgets/home/postbar.dart';
import 'package:facebook/widgets/home/storybar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          PostBar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          MenuBar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          StoryBar(),
        ],
      ),
    );
  }
}
