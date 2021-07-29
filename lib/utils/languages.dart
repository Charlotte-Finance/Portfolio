
import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/language_item.dart';
import 'package:portfolio/models/language/tab.dart';

Tab tabFr = Tab(homePageTab: 'Accueil', myProjectsTab: 'Mes Projets', whoAmITab: 'Qui suis-je ?', cvTab: 'CV', contactTab: 'Contact', languageTab: 'Langage');
Tab tabEn = Tab(homePageTab: 'Home Page', myProjectsTab: 'My Projects', whoAmITab: 'Who am I ?', cvTab: 'CV', contactTab: 'Contact', languageTab: 'Language');

Language languageFr = Language(tab: tabFr, homePageTitle: "Recherche stage en développement");
Language languageEn = Language(tab: tabEn, homePageTitle: "Looking for an internship in web/mobile development");

LanguageItem languageItemFr = LanguageItem("Français", AssetImage('lib/assets/french_flag.png'),);
LanguageItem languageItemEn = LanguageItem("English", AssetImage('lib/assets/english_flag.jpg'),);