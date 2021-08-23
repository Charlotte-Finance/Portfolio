import 'package:flutter/cupertino.dart';
import 'package:portfolio/components/my_projects/first_page.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Django", type: InformationType.framework),
  Information(information: "Flutter", type: InformationType.framework),
  Information(information: "MSSQL", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "API Rest", type: InformationType.technology),
  Information(information: "Travail étudiant", type: InformationType.diverse),
];

List<Information> informationEn = [
  Information(information: "Django", type: InformationType.framework),
  Information(information: "Flutter", type: InformationType.framework),
  Information(information: "MSSQL", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "Rest API", type: InformationType.technology),
  Information(information: "Student job", type: InformationType.diverse),
];

FirstPage firstPageFr = FirstPage(
  title: "Développement d’une plateforme de suivi de projets européens",
  description:
      "J'ai travaillé sur ce projet grâce à un contrat étudiant que j'effectuais en parallèle de mes études. "
      "L'objectif était de régulariser la création ainsi que le suivi de projets de recherches de la Commission Européenne.",
  information: informationFr,
  image: AssetImage('lib/assets/projects/monitoring.png'),
);

FirstPage firstPageEn = FirstPage(
  title: "Development of a monitoring platform for European projects",
  description:
      "I worked on this project thanks to a student contract that I was doing in parallel to my studies. "
      "The objective was to regularise the creation and follow-up of European Commission research projects.",
  information: informationEn,
  image: AssetImage('lib/assets/projects/monitoring.png'),
);

Project projectMonitoringFr = Project(
    title: "Développement d’une plateforme de suivi de projets européens",
    widgets: [firstPageFr]);
Project projectMonitoringEn = Project(
    title: "Development of a monitoring platform for European projects",
    widgets: [firstPageFr]);
