import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/language.dart';
class HomePageContent extends StatefulWidget{
  final Language language;
  const HomePageContent({required this.language});
  @override
  State<StatefulWidget> createState() => HomePageContentState(language: language);
}
class HomePageContentState extends State<HomePageContent>{
  Language language;

  HomePageContentState({required this.language});
  @override
  Widget build(BuildContext context) {
    language = widget.language;
    print(language.homePageTitle);
    print("IIIIIIIII");
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            AutoSizeText(
              "Charlotte Finance",
              style:
              TextStyle(fontSize: 50, color: Colors.white),
              maxLines: 1,
            ),
            Text("\n"),
            AutoSizeText(
              language.homePageTitle,
              style:
              TextStyle(fontSize: 50, color: Colors.white),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}