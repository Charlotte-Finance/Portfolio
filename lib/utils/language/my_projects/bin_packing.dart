import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Java", type: InformationType.framework),
  Information(information: "Project scolaire", type: InformationType.diverse),
  Information(information: "13/20", type: InformationType.diverse),
];
List<Information> informationEn = [
  Information(information: "Java", type: InformationType.framework),
  Information(information: "School project", type: InformationType.diverse),
  Information(information: "13/20", type: InformationType.diverse),
];

SubProject subDescriptionFr = SubProject(
  title: "Problème du bin Packing",
  details: [
    Detail(
      title: "Objectifs",
      detail: "Implémenter divers algorithmes de bin packing\n"
          "- Tester ces algorithmes avec des valeurs données\n"
          "- Tester et comprendre l'influence des paramètres pour chacun de ces algorithmes\n"
          "- Comparer les algorithmes pour différentes données (résultat optimal, temps d'exécution, .etc.)",
    ),
    Detail(
      title: "Algorithmes implémentés",
      detail: "- Un item par bin\n"
          "- Ranger les items par ordre de taille décroissant dans le premier bin ayant assez d'espace libre\n"
          "- Ranger les items de manière aléatoire dans le premier bin ayant assez d'espace libre\n"
          "- Utilisation d'un package de programmation linéaire ORTools\n"
          "- Le recuit simulé\n"
          "- La méthode Tabou",
    ),
  ],
);
SubProject subDescriptionEn = SubProject(
  title: "Bin Packing",
  details: [
    Detail(
        title: "Objectives",
        detail: "- Implement various bin packing algorithms\n"
            "- Test these algorithms with given values\n"
            "- Test and understand the influence of parameters for each of these algorithms\n"
            "- Compare the algorithms for different data (optimal result, execution time, etc.)"),
    Detail(
      title: "Implemented algorithms",
      detail: "- One item per Bin\n"
          "- Arrange the items in descending order of size in the first bin with enough free space\n"
          "- Arrange the items randomly in the first bin with enough free space\n"
          "- Using an ORTools linear programming package\n"
          "- Simulated Annealing\n"
          "- Tabu Search",
    ),
  ],
);

SubProject subAnnealingFr = SubProject(
  title: "Recuit Simulé",
  details: [
    Detail(
      title: "Principe",
      detail:
          "Explorer le voisinnage en acceptant un moins bon voisin avec une probabilité d'acceptation qui diminue en fonction du temps.",
    ),
  ],
  image: AssetImage('lib/assets/projects/bin_packing/annealing.PNG'),
);
SubProject subAnnealingEn = SubProject(
  title: "Simulated Annealing",
  details: [
    Detail(
        title: "Principle",
        detail:
            "Explore the neighbourhood by accepting a less good neighbour with a probability of acceptance that decreases with time."),
  ],
  image: AssetImage('lib/assets/projects/bin_packing/annealing.PNG'),
);

SubProject subTabuFr = SubProject(
  title: "Recherche Tabou",
  details: [
    Detail(
      title: "Principe",
      detail:
          "Sortir des minima locaux en acceptant un voisin moins bon, en excluant les voisins déjà essayés.",
    )
  ],
  image: AssetImage('lib/assets/projects/bin_packing/tabu.PNG'),
);
SubProject subTabuEn = SubProject(
  title: "Tabu Search",
  details: [
    Detail(
      title: "Principle",
      detail:
          "Move away from local minima by accepting a less good neighbour, excluding tried and tested neighbours.",
    )
  ],
  image: AssetImage('lib/assets/projects/bin_packing/tabu.PNG'),
);

Project binPackingFr = Project(
  title: "Problème du bin Packing",
  description:
      "L'objectif de ce projet scolaire était de trouver des solutions pour un problème d'optimisation discète. "
      "Le problème est de ranger des items de tailles diverses dans des bins de tailles fixes, en utilisant le moins de bin possible.",
  information: informationFr,
  image: AssetImage('lib/assets/projects/bin_packing/bin_packing.PNG'),
  subProjects: [
    subDescriptionFr,
    subAnnealingFr,
    subTabuFr,
  ],
);

Project binPackingEn = Project(
  title: "Bin Packing",
  description:
      "The objective of this school project was to find solutions for a discrete optimisation problem. "
      "The problem is to arrange items of various sizes in bins of fixed size, using as few bins as possible..",
  information: informationEn,
  image: AssetImage('lib/assets/projects/bin_packing/bin_packing.PNG'),
  subProjects: [
    subDescriptionEn,
    subAnnealingEn,
    subTabuEn,
  ],
);
