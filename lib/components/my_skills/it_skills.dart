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
                          height: 20,
                        )
                      ]
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircularPercentIndicator(
                            backgroundColor: Colors.white70,

                            radius: 120.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.7,
                            center: new Text(
                              "70.0%",
                              style:
                              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            footer: null,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.white,
                          ),
                          SizedBox(height: 50,),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white70,
                          ),
                        ],
                      ),
                      Column(),
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
