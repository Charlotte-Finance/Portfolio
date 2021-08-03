import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/components/widgets/widgets.dart';

class Education extends StatelessWidget {
  final EducationLanguage educationLanguage;

  const Education({required this.educationLanguage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('lib/assets/blackboard.jpg'),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(educationLanguage.title, style: lightTitleStyle),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(educationLanguage.subTitle,
                      style: lightSubTitleStyle),
                ),
                SizedBox(height: 50),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: VerticalIconDetails(
                          icon: Icons.menu_book,
                          title: educationLanguage.diplomaDetail.title,
                          details: educationLanguage.diplomaDetail.detail,
                        ),
                      ),
                      Expanded(
                        child: VerticalIconDetails(
                          icon: Icons.science_outlined,
                          title: educationLanguage.prepaDetail.title,
                          details: educationLanguage.prepaDetail.detail,
                        ),
                      ),
                      Expanded(
                        child: VerticalIconDetails(
                          icon: Icons.school,
                          title: educationLanguage.schoolDetail.title,
                          details: educationLanguage.schoolDetail.detail,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
