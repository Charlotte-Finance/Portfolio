import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/my_skills/it_skills.dart';
import 'package:portfolio/components/my_skills/personal_skills.dart';
import 'package:portfolio/components/my_skills/speaking_skills.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/components/widgets/widgets.dart';


class SkillsPage extends StatefulWidget {
  final MySkillsTab tab;

  const SkillsPage({required this.tab});

  @override
  State<StatefulWidget> createState() => SkillsPageState(tab: tab);
}

class SkillsPageState extends State<SkillsPage> {
  MySkillsTab tab;

  SkillsPageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    tab = widget.tab;
    return Column(
      children: [
        ImageTitle(title: tab.title, height: MediaQuery.of(context).size.height * 0.35),
        ITSkills(itSkillsLanguage: tab.itSkillsLanguage),
        PersonalSkills(personalSkillsLanguage: tab.personalSkillsLanguage),
        SpeakingSkills(speakingSkillsLanguage: tab.speakingSkillsLanguage),
      ],
    );
  }
}
