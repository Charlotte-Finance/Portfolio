import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/tab.dart';

import 'home_page.dart';

class MyProjectsTab extends MyTab {
  final String name;
  final String title;
  final Project graphProject;
  final Project binPacking;
  final Project springProject;
  final Project mHealth;
  final Project projectMonitoring;

  MyProjectsTab({
    required this.name,
    required this.title,
    required this.graphProject,
    required this.binPacking,
    required this.springProject,
    required this.mHealth,
    required this.projectMonitoring,
  }) : super(name: name, title: title);
}

class Project {
  final String title;
  final List<Widget> widgets;

  const Project({
    required this.title,
    required this.widgets,
  });
}

class Information {
  final String information;
  final InformationType type;

  const Information({
    required this.information,
    required this.type,
  });
}

enum InformationType {
  framework,
  technology,
  diverse,
}
