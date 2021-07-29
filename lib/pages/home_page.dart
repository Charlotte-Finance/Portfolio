import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/home_page_content.dart';
import 'package:portfolio/components/structure/structure.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/utils/languages.dart';
import 'package:portfolio/utils/routes/routing_constants.dart';

class HomePage extends StatefulWidget {
  final Language language;

  const HomePage({required this.language});

  @override
  State<StatefulWidget> createState() => HomePageState(language: language);
}

class HomePageState extends State<HomePage> {
  Language language;

  HomePageState({required this.language});

  void onChanged(Language language) {
    setState(() {
      this.language = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("AAAAAAAAAAAAAAAA");
    print(language.homePageTitle);
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(
            context, HomePageRoute, ModalRoute.withName(HomePageRoute));
        return true;
      },
      child: Structure(
        image: AssetImage('lib/assets/rainbow_keyboard.jpg'),
        language: this.language,
        onChanged: onChanged,
        child: HomePageContent(language: this.language),
      ),
    );
  }
}
