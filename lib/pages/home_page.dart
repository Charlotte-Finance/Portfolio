import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/home_page/education.dart';
import 'package:portfolio/components/home_page/internship.dart';
import 'package:portfolio/components/widgets/widgets.dart';
import 'package:portfolio/models/language/home_page.dart';

class HomePage extends StatefulWidget {
  final HomePageTab tab;

  const HomePage({required this.tab});

  @override
  State<StatefulWidget> createState() => HomePageState(tab: tab);
}

class HomePageState extends State<HomePage> {
  HomePageTab tab;

  HomePageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    tab = widget.tab;
    return Column(
      children: [
        ImageTitle(title: tab.title, height: MediaQuery.of(context).size.height * 0.35,),
        Internship(internshipLanguage: tab.internshipLanguage),
        Education(educationLanguage: tab.educationLanguage),
      ],
    );
  }
}
