import 'package:flutter/material.dart';

class StoryModels {
  final VoidCallback onTap;
  final String image;
  final String username;
  StoryModels({
    required this.onTap,
    required this.image,
    required this.username,
  });
}

List<StoryModels> storydata = [
  StoryModels(onTap: () => {}, image: "images/img-1.jpg", username: "priti"),
  StoryModels(onTap: () => {}, image: "images/img-1.jpg", username: "priti1"),
  StoryModels(onTap: () => {}, image: "images/img-1.jpg", username: "priti2"),
  StoryModels(onTap: () => {}, image: "images/img-1.jpg", username: "priti3"),
  StoryModels(onTap: () => {}, image: "images/img-1.jpg", username: "priti4"),
  StoryModels(onTap: () => {}, image: "images/img-1.jpg", username: "priti5"),
];
