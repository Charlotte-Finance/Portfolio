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
  final String description;
  final AssetImage image;
  final List<Information> information;
  final List<SubProject>? subProjects;

  const Project({
    required this.title,
    required this.description,
    required this.information,
    required this.image,
    this.subProjects,
  });
}

class SubProject {
  final String title;
  final AssetImage? image;
  final List<Detail> details;

  const SubProject({
    required this.title,
    required this.details,
    this.image,
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
