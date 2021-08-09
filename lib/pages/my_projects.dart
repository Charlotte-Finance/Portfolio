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
  bool inside = false;

  ProjectsPageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width * 0.12;
    double width2 = MediaQuery.of(context).size.width * 0.33;
    double height1 = MediaQuery.of(context).size.height * 0.11;
    double height2 = MediaQuery.of(context).size.height * 0.37;
    tab = widget.tab;
    return Stack(
      children: [
        ImageTitle(
          title: tab.title,
          height: MediaQuery.of(context).size.height * 0.35,
        ),
        ProjectContainer(
          top: MediaQuery.of(context).size.height * 0.16,
          right: MediaQuery.of(context).size.width * 0.65,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.graphProject,
        ),
        ProjectContainer(
          top: MediaQuery.of(context).size.height * 0.55,
          left: MediaQuery.of(context).size.width * 0.06,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.binPacking,
        ),
        ProjectContainer(
          bottom: MediaQuery.of(context).size.height * 0.11,
          right: MediaQuery.of(context).size.width * 0.41,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.springProject,
        ),
        ProjectContainer(
          top: MediaQuery.of(context).size.height * 0.16,
          left: MediaQuery.of(context).size.width * 0.65,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.mHealth,
        ),
        ProjectContainer(
          top: MediaQuery.of(context).size.height * 0.55,
          right: MediaQuery.of(context).size.width * 0.06,
          width1: width1,
          width2: width2,
          height1: height1,
          height2: height2,
          project: tab.projectMonitoring,
        ),
      ],
    );
  }
}
