// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => {},
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(Icons.post_add_outlined),
              Text(
                "Text",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        Container(
          height: 25,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                Icons.video_call,
                color: Colors.redAccent,
              ),
              Text(
                "Live video",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        Container(
          height: 25,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
