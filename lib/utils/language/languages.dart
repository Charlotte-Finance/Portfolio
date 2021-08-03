import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/models/language/tab.dart';
import 'package:portfolio/utils/language/home_page/education.dart';
import 'package:portfolio/utils/language/my_skills/it_skills.dart';
import 'package:portfolio/utils/language/my_skills/organizational_skills.dart';
import 'package:portfolio/utils/language/my_skills/speaking_skills.dart';

import 'home_page/internship.dart';

HomePageTab homePageFr = HomePageTab(
  name: "Accueil",
  title: "Recherche stage en développement",
  internshipLanguage: internshipLanguageFr,
  educationLanguage: educationLanguageFr,
);
HomePageTab homePageEn = HomePageTab(
  name: "HomePage",
  title: "Looking for an internship in Web/Mobile development",
  internshipLanguage: internshipLanguageEn,
  educationLanguage: educationLanguageEn,
);

MySkillsTab skillsFr = MySkillsTab(
  name: "Mes compétences",
  title: "Mes compétences",
  itSkillsLanguage: itSkillsLanguageFr,
  speakingSkillsLanguage: speakingSkillsLanguageFr,
  organizationalSkillsLanguage: organizationalSkillsLanguageFr,
);

MySkillsTab skillsEn = MySkillsTab(
  name: "My Skills",
  title: "My Skills",
  itSkillsLanguage: itSkillsLanguageEn,
  speakingSkillsLanguage: speakingSkillsLanguageEn,
  organizationalSkillsLanguage: organizationalSkillsLanguageEn,
);


MyTab myProjectsFr = MyTab(
  name: "Mes projets",
  title: "Mes projets",
);

MyTab cvFr = MyTab(
  name: "CV",
  title: "CV",
);
MyTab contactFr = MyTab(
  name: "Contact",
  title: "Pour me contacter...",
);

MyTab myProjectsEn = MyTab(
  name: "My Projects",
  title: "My projects",
);
MyTab cvEn = MyTab(
  name: "CV",
  title: "My Resume",
);
MyTab contactEn = MyTab(
  name: "Contact",
  title: "To contact me ...",
);

List<MyTab> myTabsFr = [homePageFr, skillsFr, cvFr, myProjectsFr, contactFr];
List<MyTab> myTabsEn = [homePageEn, skillsEn, cvEn, myProjectsEn, contactEn];

Language languageFr = Language(
  name: "Français",
  tabs: myTabsFr,
  flag: AssetImage('lib/assets/french_flag.png'),
);
Language languageEn = Language(
  name: "English",
  tabs: myTabsEn,
  flag: AssetImage('lib/assets/english_flag.jpg'),
);
