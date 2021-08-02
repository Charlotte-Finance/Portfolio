import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/tab.dart';
import 'package:portfolio/utils/language/home_page/education.dart';

import 'language/home_page/internship.dart';

HomePageTab homePageFr = HomePageTab(
  name: "Accueil",
  title: "Recherche stage en développement",
  internshipLanguage: internshipLanguageFr,
  educationLanguage: educationLanguageFr,
);
MyTab myProjectsFr = MyTab(
  name: "Mes projets",
  title: "Mes projets",
);
MyTab skillsFr = MyTab(
  name: "Mes compétences",
  title: "Mes compétences",
);
MyTab cvFr = MyTab(
  name: "CV",
  title: "CV",
);
MyTab contactFr = MyTab(
  name: "Contact",
  title: "Pour me contacter...",
);

HomePageTab homePageEn = HomePageTab(
  name: "HomePage",
  title: "Looking for an internship in Web/Mobile development",
  internshipLanguage: internshipLanguageEn,
  educationLanguage: educationLanguageEn,
);
MyTab myProjectsEn = MyTab(
  name: "My Projects",
  title: "My projects",
);
MyTab skillsEn = MyTab(
  name: "My Skills",
  title: "My Skills",
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
