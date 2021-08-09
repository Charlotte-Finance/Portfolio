import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/my_projects.dart';
import 'package:portfolio/utils/styles.dart';

class SecondPage extends StatelessWidget {
  final SubProject subProject;
  final int pageNumber;
  final int totalPage;

  const SecondPage({
    required this.subProject,
    required this.pageNumber,
    required this.totalPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 10.0, bottom: 10.0, left: 70.0, right: 70.0),
      child: Column(
        children: [
          Text(
            subProject.title,
            style: bigLightBoldStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                if (subProject.image != null) ...[
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: subProject.image ??
                              AssetImage('lib/assets/error'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
                Container(
                  child: Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < subProject.details.length; i++) ...[
                          Text(
                            subProject.details[i].title,
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            subProject.details[i].detail,
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(""),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "$pageNumber/$totalPage",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
