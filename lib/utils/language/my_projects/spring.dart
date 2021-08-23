import 'package:flutter/cupertino.dart';
import 'package:portfolio/components/my_projects/first_page.dart';
import 'package:portfolio/components/my_projects/information_page.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Spring Boot", type: InformationType.framework),
  Information(information: "MySQL", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "Project scolaire", type: InformationType.diverse),
  Information(information: "16/20", type: InformationType.diverse),
];

List<Information> informationEn = [
  Information(information: "Spring Boot", type: InformationType.framework),
  Information(information: "MySQL", type: InformationType.framework),
  Information(information: "ORM", type: InformationType.technology),
  Information(information: "School project", type: InformationType.diverse),
  Information(information: "16/20", type: InformationType.diverse),
];

FirstPage firstPageFr = FirstPage(
  title: "Projet scolaire en Spring Boot",
  description:
      "L'objectif de ce projet scolaire était de créer un site Web en utilisant Spring Boot, "
      "et en utilisant un ORM pour communiquer avec une abse de données MySQL",
  information: informationFr,
  image: AssetImage('lib/assets/projects/spring_project.png'),
);

FirstPage firstPageEn = FirstPage(
  title: "School project using Spring Boot",
  description:
      "The objective of this school project was to create a website using Spring Boot, "
      "and using an ORM to communicate with a MySQL database",
  information: informationEn,
  image: AssetImage('lib/assets/projects/spring_project.png'),
);

InformationPage objectivesFr = InformationPage(
  title: "Projet Scolaire en Sping Boot",
  details: [
    Detail(
      title: "Objectifs",
      detail: "- Se familiariser avec un ORM\n"
          "- Effectuer ces actions sur une base de données : Get, Put, Post, Delete\n"
          "- Gérer des comptes utilisateur (user, admin)",
    ),
  ],
);
InformationPage objectivesEn = InformationPage(
  title: "School Project using Sping Boot",
  details: [
    Detail(
      title: "Objectives",
      detail: "- Becoming familiar with an ORM\n"
          "- Perform these actions on a database: Get, Put, Post, Delete\n"
          "- Manage user accounts (user, admin)",
    ),
  ],
);
Project springProjectFr = Project(
  title: "Projet scolaire en Spring Boot",
  widgets: [
    firstPageFr,
    objectivesFr,
  ],
);
Project springProjectEn = Project(
  title: "School project using Spring Boot",
  widgets: [
    firstPageEn,
    objectivesEn,
  ],
);
