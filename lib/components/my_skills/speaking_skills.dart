import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/widgets.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/utils/styles.dart';

class SpeakingSkills extends StatelessWidget {
  final SpeakingSkillsLanguage speakingSkillsLanguage;

  const SpeakingSkills({required this.speakingSkillsLanguage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('lib/assets/white_sand.jpg'),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              children: [
                WidgetTitle(
                  title: speakingSkillsLanguage.title,
                  subTitle: speakingSkillsLanguage.subTitle,
                  titleStyle: darkTitleStyle,
                  subtitleStyle: darkSubTitleStyle,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0;
                          i < speakingSkillsLanguage.languages.length;
                          i++) ...[
                        StarsMark(
                          name: speakingSkillsLanguage.languages[i].name,
                          description:
                              speakingSkillsLanguage.languages[i].description,
                          mark: speakingSkillsLanguage.languages[i].mark,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
