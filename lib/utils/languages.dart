import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/tab.dart';
import 'package:portfolio/models/language/title.dart';

Tab tabFr = Tab(
  homePageTab: 'Accueil',
  myProjectsTab: 'Mes Projets',
  whoAmITab: 'Qui suis-je ?',
  cvTab: 'CV',
  contactTab: 'Contact',
);
Tab tabEn = Tab(
  homePageTab: 'Home Page',
  myProjectsTab: 'My Projects',
  whoAmITab: 'Who am I ?',
  cvTab: 'CV',
  contactTab: 'Contact',
);
LanguageTitle titleFr = LanguageTitle(
    homePage: "Recherche stage en développement",
    whoAmI: "Qui suis-je ?",
    cv: "Mon CV",
    myProjects: "Mes Projets",
    contact: "Pour me contacter...");
LanguageTitle titleEn = LanguageTitle(
    homePage: "Looking for an internship in web/mobile development",
    whoAmI: "Who Am I ?",
    cv: "My Resume",
    myProjects: "My Projects",
    contact: "To contact me ...");

Language languageFr = Language(
  name: "Français",
  tabs: tabFr,
  titles: titleFr,
  image: AssetImage('lib/assets/french_flag.png'),
);
Language languageEn = Language(
  name: "English",
  tabs: tabEn,
  titles: titleEn,
  image: AssetImage('lib/assets/english_flag.jpg'),
);
