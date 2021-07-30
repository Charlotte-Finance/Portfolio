import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/language.dart';

class WhoAmIPage extends StatefulWidget {
  final Language language;

  const WhoAmIPage({required this.language});

  @override
  State<StatefulWidget> createState() => WhoAmIPageState(language: language);
}

class WhoAmIPageState extends State<WhoAmIPage> {
  Language language;

  WhoAmIPageState({required this.language});

  @override
  Widget build(BuildContext context) {
    language = widget.language;
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            AutoSizeText(
              "Charlotte Finance",
              style: TextStyle(fontSize: 50, color: Colors.white),
              maxLines: 1,
            ),
            Text("\n"),
            AutoSizeText(
              language.titles.whoAmI,
              style: TextStyle(fontSize: 50, color: Colors.white),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
