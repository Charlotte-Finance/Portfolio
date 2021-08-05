import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/tab.dart';

class MyProjectsTab extends MyTab {
  final String name;
  final String title;
  final Project graphProject;

  MyProjectsTab({
    required this.name,
    required this.title,
    required this.graphProject,
  }) : super(name: name, title: title);
}

class Project {
  final String title;
  final String description;
  final AssetImage? image;
  final List<Container> containers;

  const Project({
    required this.title,
    required this.description,
    required this.containers,
     this.image,
  });
}
