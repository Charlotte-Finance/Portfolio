import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/tab.dart';

class MySkillsTab extends MyTab {
  final String name;
  final String title;
  final ITSkillsLanguage itSkillsLanguage;
  final SpeakingSkillsLanguage speakingSkillsLanguage;
  final PersonalSkillsLanguage personalSkillsLanguage;

  MySkillsTab({
    required this.name,
    required this.title,
    required this.itSkillsLanguage,
    required this.speakingSkillsLanguage,
    required this.personalSkillsLanguage,
  }) : super(name: name, title: title);
}

class ITSkillsLanguage {
  final String title;
  final String subTitle;
  final List<SkillDetail> languages;
  final List<SkillDetail> technologies;

  ITSkillsLanguage({
    required this.title,
    required this.subTitle,
    required this.languages,
    required this.technologies,
  });
}

class SkillDetail {
  final String title;
  final double percent;
  final AssetImage image;

  SkillDetail({
    required this.title,
    required this.percent,
    required this.image,
  });
}


class PersonalSkillsLanguage {
  final String title;
  final String subTitle;
  final List<String> skills;

  PersonalSkillsLanguage({
    required this.title,
    required this.subTitle,
    required this.skills,
  });
}

class SpeakingSkillsLanguage {
  final String title;
  final String subTitle;
  final List<SpokenLanguage> languages;

  SpeakingSkillsLanguage({
    required this.title,
    required this.subTitle,
    required this.languages,
  });
}

class SpokenLanguage {
  final String name;
  final String description;
  final int mark;

  SpokenLanguage({
    required this.name,
    required this.description,
    required this.mark,
  });
}
