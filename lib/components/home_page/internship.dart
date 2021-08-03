import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/components/widgets/widgets.dart';

class Internship extends StatelessWidget {
  final InternshipLanguage internshipLanguage;

  const Internship({required this.internshipLanguage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 50, bottom: 50),
      color: Colors.white,
      child: Column(
        children: [
          WidgetTitle(
            title: internshipLanguage.title,
            subTitle: internshipLanguage.subTitle,
            titleStyle: darkTitleStyle,
            subtitleStyle: darkSubTitleStyle,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HorizontalIconDetails(
                        icon: Icons.create,
                        title: internshipLanguage.fieldDetail.title,
                        details: internshipLanguage.fieldDetail.detail,
                      ),
                      SizedBox(height: 50),
                      HorizontalIconDetails(
                        icon: Icons.public,
                        title: internshipLanguage.areaDetail.title,
                        details: internshipLanguage.areaDetail.detail,
                      ),
                      SizedBox(height: 50),
                      HorizontalIconDetails(
                        icon: Icons.hourglass_empty,
                        title: internshipLanguage.durationDetail.title,
                        details: internshipLanguage.durationDetail.detail,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HorizontalIconDetails(
                        icon: Icons.date_range,
                        title: internshipLanguage.calendarDetail.title,
                        details: internshipLanguage.calendarDetail.detail,
                      ),
                      SizedBox(height: 50),
                      HorizontalIconDetails(
                        icon: Icons.work_outline,
                        title: internshipLanguage.companyDetail.title,
                        details: internshipLanguage.companyDetail.detail,
                      ),
                      SizedBox(height: 50),
                      SizedBox(height: 70),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
