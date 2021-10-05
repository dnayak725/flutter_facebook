// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 40,
            onPressed: () => {},
            icon: CircleAvatar(
              backgroundImage: AssetImage('images/img-1.jpg'),
            ),
          ),
          TextButton( 
            onPressed: () => {},
            child: Text(
              "whats' on your mind ?",
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
          ),
          Container(
            height: 70,
            child: VerticalDivider(
              color: Colors.black26,
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.photo_album_outlined),
              ),
              Text(
                "photo",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
