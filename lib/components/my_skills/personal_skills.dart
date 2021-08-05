import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/components/widgets/widgets.dart';

class PersonalSkills extends StatelessWidget {
  final PersonalSkillsLanguage personalSkillsLanguage;

  const PersonalSkills({required this.personalSkillsLanguage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('lib/assets/books.jpg'),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              children: [
                WidgetTitle(
                  title: personalSkillsLanguage.title,
                  subTitle: personalSkillsLanguage.subTitle,
                  titleStyle: orangeTitleStyle,
                  subtitleStyle: orangeSubTitleStyle,
                  alignment: Alignment.centerLeft,
                ),
                for (int i = 0;
                    i < personalSkillsLanguage.skills.length;
                    i++) ...[
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.14),
                      Icon(Icons.check, color: Color(0xffFFC062)),
                      Text(personalSkillsLanguage.skills[i]),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
