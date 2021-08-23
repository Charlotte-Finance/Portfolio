import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/utils/styles.dart';

class InformationPage extends StatelessWidget {
  final String title;
  final AssetImage? image;
  final List<Detail> details;

  const InformationPage({
    required this.title,
    this.image,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: bigLightBoldStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Row(
            children: [
              if (image != null) ...[
                Container(
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.height * 0.21,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: image ?? AssetImage('lib/assets/error'),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.005)
              ],
              Container(
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < details.length; i++) ...[
                        Text(
                          details[i].title,
                          style: mediumYellowBoldStyle,
                        ),
                        Text(
                          details[i].detail,
                          style: mediumWhiteBodyStyle,
                          textAlign: TextAlign.justify,
                        ),
                        Text(""),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(),
        ],
      ),
    );
  }
}
