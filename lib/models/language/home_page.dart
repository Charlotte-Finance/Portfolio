import 'package:portfolio/models/language/tab.dart';

class HomePageTab extends MyTab {
  final String name;
  final String title;
  final InternshipLanguage internshipLanguage;
  final EducationLanguage educationLanguage;

  HomePageTab({
    required this.name,
    required this.title,
    required this.internshipLanguage,
    required this.educationLanguage,
  }) : super(name: name, title: title);
}

class InternshipLanguage {
  final String title;
  final String subTitle;
  final Detail fieldDetail;
  final Detail areaDetail;
  final Detail durationDetail;
  final Detail calendarDetail;
  final Detail companyDetail;

  InternshipLanguage({
    required this.title,
    required this.subTitle,
    required this.fieldDetail,
    required this.areaDetail,
    required this.durationDetail,
    required this.calendarDetail,
    required this.companyDetail,
  });
}

class EducationLanguage {
  final String title;
  final String subTitle;
  final Detail diplomaDetail;
  final Detail prepaDetail;
  final Detail schoolDetail;

  EducationLanguage({
    required this.title,
    required this.subTitle,
    required this.diplomaDetail,
    required this.prepaDetail,
    required this.schoolDetail,
  });
}

class Detail {
  final String title;
  final String detail;

  Detail({
    required this.title,
    required this.detail,
  });
}
