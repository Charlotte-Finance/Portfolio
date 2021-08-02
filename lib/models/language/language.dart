import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/title.dart';

import 'tab.dart';

class Language {
  final String name;
  final List<MyTab> tabs;
  final AssetImage flag;

  Language({
    required this.name,
    required this.tabs,
    required this.flag,
  });
}
