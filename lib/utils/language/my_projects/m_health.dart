import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Flask", type: InformationType.framework),
  Information(information: "Flutter", type: InformationType.framework),
  Information(information: "MSSQL", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "API Rest", type: InformationType.technology),
  Information(information: "Stage", type: InformationType.diverse),
  Information(information: "6 mois", type: InformationType.diverse),
];

List<Information> informationEn = [
  Information(information: "Flask", type: InformationType.framework),
  Information(information: "Flutter", type: InformationType.framework),
  Information(information: "MSSQL", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "Rest API", type: InformationType.technology),
  Information(information: "Internship", type: InformationType.diverse),
  Information(information: "6 months", type: InformationType.diverse),
];

Project mHealthFr = Project(
  title:
      "Développement d’une application personnalisée pour despatients à domicile",
  description: "Ce projet a été effectué durant mon premier stage, en 2020. "
      "J'ai pu développer une application mobile compatible sur Androïd et iOS. "
      "Cette application permet à des patients souffrant d'apnée obstuctive du "
      "sommeil d'avoir des fonctionnalités personnalisées pour mieux comprendre leur thérapie.",
  information: informationFr,
  image: AssetImage('lib/assets/projects/m_health.png'),
);

Project mHealthEn = Project(
  title:
      "Developing a cross-platform application for personalized home care interventions",
  description:
      "This project was carried out during my first internship, in 2020. "
      "I was able to develop a mobile application compatible on Android and iOS. "
      "This app allows patients suffering from obstructive sleep apnea to have "
      "personalized features to better understand their therapy.",
  information: informationEn,
  image: AssetImage('lib/assets/projects/m_health.png'),
);
