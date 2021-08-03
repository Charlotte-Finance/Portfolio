import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/components/widgets/widgets.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ITSkills extends StatelessWidget {
  final ITSkillsLanguage itSkillsLanguage;

  const ITSkills({required this.itSkillsLanguage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 50, bottom: 50),
      color: Colors.orange,
      child: Column(
        children: [
          WidgetTitle(
            title: itSkillsLanguage.title,
            subTitle: itSkillsLanguage.subTitle,
            titleStyle: darkTitleStyle,
            subtitleStyle: darkSubTitleStyle,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < itSkillsLanguage.languages.length;
                          i++) ...[
                        LinearPercentIndicator(
                          // ToDo : Remettre en MediaQuery
                          backgroundColor: Colors.white70,
                          width: MediaQuery.of(context).size.width * 0.2,
                          animation: true,
                          animationDuration: 200,
                          lineHeight: 50.0,
                          leading: null,
                          trailing: null,
                          percent: itSkillsLanguage.languages[i].percent,
                          center: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: itSkillsLanguage.languages[i].image,
                              ),
                            ),
                          ),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.white,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < itSkillsLanguage.technologies.length;
                          i += 3) ...[
                        Row(
                          children: [
                            for (int j = i; j < i + 3; j++) ...[
                              if (j < itSkillsLanguage.technologies.length) ...[
                                Text("$j"),
                                CircularPercentIndicator(
                                  backgroundColor: Colors.white70,
                                  radius: 140.0,
                                  lineWidth: 13.0,
                                  animation: true,
                                  percent:
                                      itSkillsLanguage.technologies[j].percent,
                                  center: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: itSkillsLanguage
                                            .technologies[j].image,
                                      ),
                                    ),
                                  ),
                                  footer: null,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.white,
                                ),
                              ],
                            ],
                          ],
                        ),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
