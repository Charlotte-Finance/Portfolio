import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/my_skills.dart';

SkillDetail pythonLanguage = SkillDetail(
    title: "Python", percent: 0.9, image: AssetImage('lib/assets/python.png'));
SkillDetail javaLanguage = SkillDetail(
    title: "Java", percent: 0.8, image: AssetImage('lib/assets/java.jpg'));
SkillDetail dartLanguage = SkillDetail(
    title: "Dart", percent: 0.8, image: AssetImage('lib/assets/dart.png'));

SkillDetail phpLanguage = SkillDetail(
    title: "PHP", percent: 0.4, image: AssetImage('lib/assets/php.png'));
SkillDetail javaScriptLanguage = SkillDetail(
    title: "JavaScript", percent: 0.2, image: AssetImage('lib/assets/js.png'));

SkillDetail rLanguage = SkillDetail(
    title: "R", percent: 0.1, image: AssetImage('lib/assets/r.png'));
SkillDetail matLabLanguage = SkillDetail(
    title: "MatLab", percent: 0.1, image: AssetImage('lib/assets/matlab.png'));

List<SkillDetail> itLanguages = [
  pythonLanguage,
  javaLanguage,
  dartLanguage,
  phpLanguage,
  javaScriptLanguage,
  rLanguage,
  matLabLanguage,
];

SkillDetail flutterSkill = SkillDetail(
  title: "Flutter",
  percent: 0.9,
  image: AssetImage('lib/assets/flutter.png'),
);
SkillDetail djangoSkill = SkillDetail(
  title: "Django",
  percent: 0.9,
  image: AssetImage('lib/assets/django.png'),
);
SkillDetail flaskSkill = SkillDetail(
  title: "Flask",
  percent: 0.9,
  image: AssetImage('lib/assets/flask.png'),
);
SkillDetail springBootSkill = SkillDetail(
  title: "Spring Boot",
  percent: 0.3,
  image: AssetImage('lib/assets/springboot.png'),
);
SkillDetail laravelSkill = SkillDetail(
  title: "Laravel",
  percent: 0.3,
  image: AssetImage('lib/assets/laravel.png'),
);
SkillDetail mssqlSkill = SkillDetail(
  title: "Microsoft SQL Server",
  percent: 1.0,
  image: AssetImage('lib/assets/mssql.jpg'),
);
SkillDetail mySQLSkill = SkillDetail(
  title: "My SQL",
  percent: 1.0,
  image: AssetImage('lib/assets/mysql.png'),
);
SkillDetail mongoDBSkill = SkillDetail(
  title: "My SQL",
  percent: 1.0,
  image: AssetImage('lib/assets/mongodb.png'),
);

List<SkillDetail> technologySkills = [
  flutterSkill,
  djangoSkill,
  flaskSkill,
  springBootSkill,
  laravelSkill,
  mssqlSkill,
  mySQLSkill,
  mongoDBSkill,
];

ITSkillsLanguage itSkillsLanguageFr = ITSkillsLanguage(
  title: "Compétences informatiques",
  subTitle:
      "Compétences acquises durant ma formation et grâce à mes expériences professionnelles",
  languages: itLanguages,
  technologies: technologySkills,
);

ITSkillsLanguage itSkillsLanguageEn = ITSkillsLanguage(
  title: "IT Skills",
  subTitle:
      "Skills acquired during my training and through my professional experiences",
  languages: itLanguages,
  technologies: technologySkills,
);
