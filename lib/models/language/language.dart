import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/title.dart';

import 'tab.dart';

class Language {
  final String name;
  final Tab tabs;
  final LanguageTitle titles;
  final AssetImage image;

  Language({
    required this.name,
    required this.tabs,
    required this.titles,
    required this.image,
  });
}
