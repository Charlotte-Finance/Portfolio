import 'package:portfolio/models/language/tab.dart';

class HomePageTab extends MyTab {
  String name;
  String title;
  InternshipLanguage internshipLanguage;
  EducationLanguage educationLanguage;

  HomePageTab({
    required this.name,
    required this.title,
    required this.internshipLanguage,
    required this.educationLanguage,
  }) : super(name: name, title: title);
}

class InternshipLanguage {
  String title;
  String subTitle;
  Detail fieldDetail;
  Detail areaDetail;
  Detail durationDetail;
  Detail calendarDetail;
  Detail companyDetail;

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
  String title;
  String subTitle;
  Detail diplomaDetail;
  Detail prepaDetail;
  Detail schoolDetail;

  EducationLanguage({
    required this.title,
    required this.subTitle,
    required this.diplomaDetail,
    required this.prepaDetail,
    required this.schoolDetail,
  });
}

class Detail {
  String title;
  String detail;

  Detail({
    required this.title,
    required this.detail,
  });
}
