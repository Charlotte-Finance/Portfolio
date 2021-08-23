import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/containers.dart';
import 'package:portfolio/models/language/my_projects.dart';
import 'package:portfolio/utils/styles.dart';

class FirstPage extends StatelessWidget {
  final String title;
  final List<Information> information;
  final AssetImage image;
  final String description;

  const FirstPage({
    required this.title,
    required this.information,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: bigLightBoldStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Wrap(
          spacing: MediaQuery.of(context).size.width * 0.005,
          runSpacing: MediaQuery.of(context).size.height * 0.01,
          children: [
            for (int i = 0; i < information.length; i++) ...[
              BorderContainer(
                text: information[i].information,
                color: information[i].type == InformationType.framework
                    ? Colors.red
                    : information[i].type == InformationType.technology
                        ? Colors.orange
                        : information[i].type == InformationType.diverse
                            ? Colors.yellow
                            : Colors.white,
              ),
            ],
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Row(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.21,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: image,
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.005),
            Container(
              child: Flexible(
                child: Text(
                  description,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
