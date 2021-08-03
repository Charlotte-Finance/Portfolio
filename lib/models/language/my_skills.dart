import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/tab.dart';

class MySkillsTab extends MyTab {
  String name;
  String title;
  ITSkillsLanguage itSkillsLanguage;
  SpeakingSkillsLanguage speakingSkillsLanguage;
  OrganizationalSkillsLanguage organizationalSkillsLanguage;

  MySkillsTab({
    required this.name,
    required this.title,
    required this.itSkillsLanguage,
    required this.speakingSkillsLanguage,
    required this.organizationalSkillsLanguage,
  }) : super(name: name, title: title);
}

class ITSkillsLanguage {
  String title;
  String subTitle;
  List<SkillDetail> languages;
  List<SkillDetail> technologies;

  ITSkillsLanguage({
    required this.title,
    required this.subTitle,
    required this.languages,
    required this.technologies,
  });
}

class SpeakingSkillsLanguage {
  String title;
  String subTitle;

  SpeakingSkillsLanguage({
    required this.title,
    required this.subTitle,
  });
}

class OrganizationalSkillsLanguage {
  String title;
  String subTitle;

  OrganizationalSkillsLanguage({
    required this.title,
    required this.subTitle,
  });
}

class SkillDetail {
  String title;
  double percent;
  AssetImage image;

  SkillDetail({
    required this.title,
    required this.percent,
    required this.image,
  });
}
