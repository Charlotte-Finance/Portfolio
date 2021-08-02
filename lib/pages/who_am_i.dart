import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/tab.dart';

class WhoAmIPage extends StatefulWidget {
  final MyTab tab;

  const WhoAmIPage({required this.tab});

  @override
  State<StatefulWidget> createState() => WhoAmIPageState(tab: tab);
}

class WhoAmIPageState extends State<WhoAmIPage> {
    MyTab tab;

  WhoAmIPageState({required this.tab});

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
              "Charlotte Finance",
              style: TextStyle(fontSize: 50, color: Colors.white),
              maxLines: 1,
            ),
            Text("\n"),
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
