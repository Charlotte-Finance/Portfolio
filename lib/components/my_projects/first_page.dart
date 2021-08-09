import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/containers.dart';
import 'package:portfolio/models/language/my_projects.dart';
import 'package:portfolio/utils/styles.dart';

class FirstPage extends StatelessWidget {
  final Project project;

  const FirstPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 10.0, bottom: 10.0, left: 70.0, right: 70.0),
      child: Column(
        children: [
          Text(
            "${project.title}",
            style: bigLightBoldStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              for (int i = 0; i < project.information.length; i++) ...[
                BorderContainer(
                  text: project.information[i].information,
                  color:
                      project.information[i].type == InformationType.framework
                          ? Colors.red
                          : project.information[i].type ==
                                  InformationType.technology
                              ? Colors.orange
                              : project.information[i].type ==
                                      InformationType.diverse
                                  ? Colors.yellow
                                  : Colors.white,
                ),
              ],
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: project.image,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  child: Flexible(
                    child: Text(
                      project.description,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text("1/${project.subProjects!.length + 1}", style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
