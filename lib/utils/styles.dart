import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

late TextStyle imageTitleStyle;
late TextStyle imageBorderTitleStyle;

late TextStyle darkTitleStyle;
late TextStyle lightTitleStyle;
late TextStyle orangeTitleStyle;

late TextStyle darkSubTitleStyle;
late TextStyle lightSubTitleStyle;
late TextStyle orangeSubTitleStyle;

late TextStyle darkBoldStyle;
late TextStyle bigDarkBoldStyle;
late TextStyle lightBoldStyle;
late TextStyle bigLightBoldStyle;

late TextStyle darkBodyStyle;
late TextStyle bigDarkBodyStyle;
late TextStyle lightBodyStyle;

void createStyles(BuildContext context) {
  imageTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.040,
    color: Colors.white,
  );
  imageBorderTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.040,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.black,
  );

  darkTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.025,
    color: Colors.black87,
  );
  lightTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.025,
    color: Colors.white,
  );
  orangeTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.025,
    color: Colors.orange,
  );

  darkSubTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.015,
    color: Colors.black45,
  );
  lightSubTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.015,
    color: Colors.white70,
  );
  orangeSubTitleStyle = TextStyle(
    fontSize: MediaQuery.of(context).size.width * 0.015,
    color: Color(0xffFFC062),
  );

  darkBoldStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.005,
      color: Colors.black87,
      fontWeight: FontWeight.bold);
  bigDarkBoldStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.01,
      color: Colors.black87,
      fontWeight: FontWeight.bold);
  lightBoldStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.005,
      color: Colors.white,
      fontWeight: FontWeight.bold);
  bigLightBoldStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.01,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  darkBodyStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.005,
      color: Colors.black45);
  bigDarkBodyStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.01,
      color: Colors.black45);
  lightBodyStyle = TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.005,
      color: Colors.white70);
}
