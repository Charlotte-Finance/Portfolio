import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Spring Boot", type: InformationType.framework),
  Information(information: "MySQL", type: InformationType.framework),
  Information(information: "Project scolaire", type: InformationType.diverse),
  Information(information: "16/20", type: InformationType.diverse),
];

List<Information> informationEn = [
  Information(information: "Spring Boot", type: InformationType.framework),
  Information(information: "MySQL", type: InformationType.framework),
  Information(information: "School project", type: InformationType.diverse),
  Information(information: "16/20", type: InformationType.diverse),
];

Project springProjectFr = Project(
  title: "Projet scolaire en Spring Boot",
  description:
      "L'objectif de ce projet scolaire était de créer un site Web en utilisant Spring Boot, "
      "et en utilisant un ORM pour communiquer avec une abse de données MySQL",
  information: informationFr,
  image: AssetImage('lib/assets/projects/spring_project.png'),
);

Project springProjectEn = Project(
  title: "School project using Spring Boot",
  description:
      "The objective of this school project was to create a website using Spring Boot, "
      "and using an ORM to communicate with a MySQL database",
  information: informationEn,
  image: AssetImage('lib/assets/projects/spring_project.png'),
);
