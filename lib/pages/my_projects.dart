import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/my_projects.dart';
import 'package:portfolio/components/widgets/widgets.dart';

class ProjectsPage extends StatefulWidget {
  final MyProjectsTab tab;

  const ProjectsPage({required this.tab});

  @override
  State<StatefulWidget> createState() => ProjectsPageState(tab: tab);
}

class ProjectsPageState extends State<ProjectsPage> {
  MyProjectsTab tab;
  double width1 = 200;
  double width2 = 550;
  double height1 = 100;
  double height2 = 350;
  double width = 200;
  double height = 100;
  bool inside = false;

  ProjectsPageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    tab = widget.tab;
    return Stack(
      children: [
        ImageTitle(
          title: tab.title,
          height: MediaQuery.of(context).size.height * 0.35,
        ),
        ProjectContainer(
          top: 150,
          right: 1100,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.graphProject,
        ),
        ProjectContainer(
          top: 520,
          left: 100,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.graphProject,
        ),
        ProjectContainer(
          bottom: 100,
          right: 700,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.graphProject,
        ),
        ProjectContainer(
          top: 150,
          left: 1100,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.graphProject,
        ),
        ProjectContainer(
          top: 520,
          right: 100,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.graphProject,
        ),
      ],
    );
  }
}
