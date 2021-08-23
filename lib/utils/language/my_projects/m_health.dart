import 'package:flutter/cupertino.dart';
import 'package:portfolio/components/my_projects/first_page.dart';
import 'package:portfolio/components/my_projects/image_page.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Flask", type: InformationType.framework),
  Information(information: "Flutter", type: InformationType.framework),
  Information(information: "MSSQL", type: InformationType.framework),
  Information(information: "MongoDB", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "API Rest", type: InformationType.technology),
  Information(information: "Stage", type: InformationType.diverse),
];

List<Information> informationEn = [
  Information(information: "Flask", type: InformationType.framework),
  Information(information: "Flutter", type: InformationType.framework),
  Information(information: "MSSQL", type: InformationType.framework),
  Information(information: "MongoDB", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "Rest API", type: InformationType.technology),
  Information(information: "Internship", type: InformationType.diverse),
];

FirstPage firstPageFr = FirstPage(
  title:
      "Développement d’une application personnalisée pour des patients à domicile",
  description: "Ce projet a été effectué durant mon premier stage, en 2020. "
      "J'ai pu développer une application mobile compatible sur Androïd et iOS. "
      "Cette application permet à des patients souffrant d'apnée obstuctive du "
      "sommeil d'avoir des fonctionnalités personnalisées pour mieux comprendre leur thérapie.",
  information: informationFr,
  image: AssetImage('lib/assets/projects/m_health/m_health.png'),
);
FirstPage firstPageEn = FirstPage(
  title:
      "Developing a cross-platform application for personalized home care interventions",
  description:
      "This project was carried out during my first internship, in 2020. "
      "I was able to develop a mobile application compatible on Android and iOS. "
      "This app allows patients suffering from obstructive sleep apnea to have "
      "personalized features to better understand their therapy.",
  information: informationEn,
  image: AssetImage('lib/assets/projects/m_health/m_health.png'),
);

ImagePage scoreFr = ImagePage(
  title: "Scores",
  images: [
    AssetImage('lib/assets/projects/m_health/m_health.png'),
    AssetImage(
      'lib/assets/projects/m_health/scores.png',
    ),
  ],
);
ImagePage scoreEn = ImagePage(
  title: "Scores",
  images: [
    AssetImage('lib/assets/projects/m_health/m_health.png'),
    AssetImage(
      'lib/assets/projects/m_health/scores.png',
    ),
  ],
);

ImagePage architectureFr = ImagePage(
  title: "Architecture",
  images: [AssetImage('lib/assets/projects/m_health/architecture.PNG')],
);
ImagePage architectureEn = ImagePage(
  title: "Architecture",
  images: [AssetImage('lib/assets/projects/m_health/architecture.PNG')],
);

ImagePage situationFr = ImagePage(
  title: "Jeu des Situations",
  images: [AssetImage('lib/assets/projects/m_health/situation_fr.PNG')],
);
ImagePage situationEn = ImagePage(
  title: "Jeu des Situations",
  images: [AssetImage('lib/assets/projects/m_health/situation_en.PNG')],
);

Project mHealthFr = Project(
  title:
      "Développement d’une application personnalisée pour des patients à domicile",
  widgets: [
    firstPageFr,
    architectureFr,
    scoreFr,
    situationFr,
  ],
);
Project mHealthEn = Project(
  title:
      "Developing a cross-platform application for personalized home care interventions",
  widgets: [
    firstPageEn,
    architectureEn,
    scoreEn,
    situationEn,
  ],
);
