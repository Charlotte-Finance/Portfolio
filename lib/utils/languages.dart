import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/tab.dart';

MyTab homePageFr = MyTab(name: "Accueil", title: "Recherche stage en développement");
MyTab myProjectsFr = MyTab(name: "Mes projets", title: "Mes projets");
MyTab whoAmIFr = MyTab(name: "Qui suis-je ?", title: "Qui suis-je ?");
MyTab cvFr = MyTab(name: "CV", title: "CV");
MyTab contactFr = MyTab(name: "Contact", title: "Pour me contacter...");

MyTab homePageEn = MyTab(name: "Home Page", title: "Looking for an internship in web/mobile development");
MyTab myProjectsEn = MyTab(name: "My Projects", title: "My projects");
MyTab whoAmIEn = MyTab(name: "Who am I ?", title: "Who Am I ?");
MyTab cvEn = MyTab(name: "CV", title: "My Resume");
MyTab contactEn = MyTab(name: "Contact", title: "To contact me ...");


List<MyTab> MyTabsFr = [homePageFr, myProjectsFr, whoAmIFr, cvFr, contactFr];
List<MyTab> MyTabsEn = [homePageEn, myProjectsEn, whoAmIFr, cvEn, contactEn];



Language languageFr = Language(
  name: "Français",
  tabs: MyTabsFr,
  flag: AssetImage('lib/assets/french_flag.png'),
);
Language languageEn = Language(
  name: "English",
  tabs: MyTabsEn,
  flag: AssetImage('lib/assets/english_flag.jpg'),
);
