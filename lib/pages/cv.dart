import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/tab.dart';

class CVPage extends StatefulWidget {
  final MyTab tab;

  const CVPage({required this.tab});

  @override
  State<StatefulWidget> createState() => CVPageState(tab: tab);
}

class CVPageState extends State<CVPage> {
  MyTab tab;

  CVPageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    tab = widget.tab;
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
              tab.title,
              style: TextStyle(fontSize: 50, color: Colors.white),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
