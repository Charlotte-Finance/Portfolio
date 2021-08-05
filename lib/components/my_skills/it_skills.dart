import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/components/widgets/widgets.dart';
import 'package:portfolio/utils/styles.dart';

class ITSkills extends StatelessWidget {
  final ITSkillsLanguage itSkillsLanguage;

  const ITSkills({required this.itSkillsLanguage});

  // ToDo : replace by list view builder
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
                Column(
                  children: [
                    for (int i = 0;
                        i < itSkillsLanguage.languages.length;
                        i++) ...[
                      MyLinearPercentIndicator(
                        percent: itSkillsLanguage.languages[i].percent,
                        image: itSkillsLanguage.languages[i].image,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ],
                ),
                Column(
                  children: [
                    for (int i = 0;
                        i < itSkillsLanguage.technologies.length;
                        i += 3) ...[
                      Row(
                        children: [
                          for (int j = i; j < i + 3; j++) ...[
                            if (j < itSkillsLanguage.technologies.length) ...[
                              MyCircularPercentIndicator(
                                percent:
                                    itSkillsLanguage.technologies[j].percent,
                                image: itSkillsLanguage.technologies[j].image,
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.025,
                              ),
                            ],
                          ],
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
