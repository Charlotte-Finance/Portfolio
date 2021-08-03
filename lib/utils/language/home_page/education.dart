import 'package:portfolio/models/language/home_page.dart';

Detail diplomaDetailFr = Detail(
  title: "Baccalauréat Scientifique",
  detail: "Mention Bien",
);
Detail prepaDetailFr = Detail(
  title: "Classe Préparatoire",
  detail: "Spécialité Mathématiques et Physique",
);

Detail schoolDetailFr = Detail(
  title: "Ecole d'ingénieur",
  detail: "Polytech Lyon\nSpécialité informatique",
);

Detail diplomaDetailEn = Detail(
  title: "French Scientific baccalaureate",
  detail: "With Honours",
);

Detail prepaDetailEn = Detail(
  title: "Preparatory class",
  detail: "2 years of intense courses in Mathematics and physic",
);

Detail schoolDetailEn = Detail(
  title: "Engineering School",
  detail: "Polytech Lyon\nIT Field",
);

EducationLanguage educationLanguageFr = EducationLanguage(
  title: "Ma formation",
  subTitle: "Pour connaître mon parcours",
  diplomaDetail: diplomaDetailFr,
  prepaDetail: prepaDetailFr,
  schoolDetail: schoolDetailFr,
);

EducationLanguage educationLanguageEn = EducationLanguage(
  title: "My Education",
  subTitle: "To find out about my career",
  diplomaDetail: diplomaDetailEn,
  prepaDetail: prepaDetailEn,
  schoolDetail: schoolDetailEn,
);
