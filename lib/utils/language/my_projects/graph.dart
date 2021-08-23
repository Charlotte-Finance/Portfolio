import 'package:flutter/cupertino.dart';
import 'package:portfolio/components/my_projects/first_page.dart';
import 'package:portfolio/components/my_projects/information_page.dart';
import 'package:portfolio/models/language/home_page.dart';
import 'package:portfolio/models/language/my_projects.dart';

List<Information> informationFr = [
  Information(information: "Python", type: InformationType.framework),
  Information(information: "Project scolaire", type: InformationType.diverse),
  Information(information: "15/20", type: InformationType.diverse),
];
List<Information> informationEn = [
  Information(information: "Python", type: InformationType.framework),
  Information(information: "School project", type: InformationType.diverse),
  Information(information: "15/20", type: InformationType.diverse),
];

FirstPage firstPageFr = FirstPage(
  title: "Coloration de graphes et Arbres couvrants",
  information: informationFr,
  image: AssetImage('lib/assets/projects/graph.jpg'),
  description:
      "L'objectif de ce projet effectué dans un cadre scolaire était d'implémenter divers algorithmes de coloration de graphe. "
      "ainsi que de tester des algorithmes d'arbres couvrants.",
);
FirstPage firstPageEn = FirstPage(
  title: "Graph colouring and Spanning Trees",
  description:
      "The objective of this project carried out in a school setting was to implement various graph colouring algorithms, "
      "as well as to test Spanning Trees algorithms.",
  information: informationEn,
  image: AssetImage('lib/assets/projects/graph/graph.jpg'),
);

InformationPage objectivesFr = InformationPage(
  title: "Coloration de Graphes",
  details: [
    Detail(
        title: "Objectifs",
        detail:
            "- Trouver des algorithmes de coloration de graphes tel que deux sommets voisins n'aient pas la même couleur, en utilisant le moins de couleurs possible.\n"
            "- Tester ces algorithmes avec différents graphes.\n"
            "- Comparer les algorithmes pour différentes données (résultat optimal, temps d'exécution, etc.)"),
    Detail(
      title: "Algorithmes implémentés",
      detail: "- Algorithme de Welsh et Powell\n"
          "- Algorithme Glouton\n"
          "- Algorithme DSatur",
    ),
  ],
);
InformationPage objectivesEn = InformationPage(
  title: "Graph Coloring",
  details: [
    Detail(
        title: "Objectives",
        detail:
            "- Find graph colouring algorithms such that two neighbouring vertices do not have the same colour, using as few colours as possible.\n"
            "- Testing these algorithms with different graphs.\n"
            "- Compare algorithms for different data (optimal result, execution time, etc.)"),
    Detail(
      title: "Implemented algorithms",
      detail: "- Welsh and Powell algorithm\n"
          "- Greedy algorithm\n"
          "- DSatur algorithm",
    ),
  ],
);

InformationPage welshPowellFr = InformationPage(
  title: "Algorithme de Welsh et Powell",
  details: [
    Detail(
      title: "Principe",
      detail:
          "L’algorithme WelshPowell s’exécute avec une liste de sommets, ordonnée par degré ou non. "
          "On attribue une couleur au premier sommet 1. "
          "En gardant cette couleur, on colore le premier sommet possible qui n’est pas adjacent au sommet 1. "
          "On réitère cette opération pour tout sommet n’étant ni adjacent au sommet 1, et au deuxième, et ainsi de suite. "
          "Quand on ne trouve plus de tel sommet, on réitère le tout, en changeant de couleur, jusqu’à ce que tous les sommets soient colorés.",
    ),
  ],
);
InformationPage welshPowellEn = InformationPage(
  title: "Welsh and Powell algorithm",
  details: [
    Detail(
      title: "Principle",
      detail:
          "The WelshPowell algorithm is run with a list of vertices, ordered by degree or not. "
          "The first vertex 1 is given a colour. "
          "Keeping this colour, the first possible vertex which is not adjacent to vertex 1 is coloured. "
          "This operation is repeated for any vertex which is not adjacent to vertex 1, and to the second, and so on. "
          "When no more such vertices are found, the whole process is repeated, changing colours, until all the vertices are coloured.",
    )
  ],
);

InformationPage dSatFr = InformationPage(
  title: "Algorithme DSatur",
  details: [
    Detail(
      title: "Principe",
      detail:
          "L’algorithme DSatur s’exécute uniquement avec des sommets ordonnés par ordre décroissant de degré. "
          "En fait, cet algorithme fonctionne en calculant le degré de saturation des sommets. "
          "On colorera à chaque fois le sommet ayant le plus grand degré de saturation, et en cas d’égalité, "
          "on colorera le sommet de degré maximum. "
          "C’est pourquoi il est impératif de trier les sommets par degré décroissant.",
    ),
  ],
);
InformationPage dSatEn = InformationPage(
  title: "DSatur algorithm",
  details: [
    Detail(
      title: "Principle",
      detail:
          "The DSatur algorithm only runs with vertices ordered in descending order of degree. "
          "In fact, this algorithm works by calculating the degree of saturation of the vertices. "
          "The vertex with the highest degree of saturation is coloured each time, and in case of a tie, "
          "the vertex with the highest degree is coloured. This is why it is imperative to sort the vertices by decreasing degree.",
    ),
  ],
);

Project graphProjectFr = Project(
  title: "Coloration de graphes et Arbres couvrants",
  widgets: [
    firstPageFr,
    objectivesFr,
    welshPowellFr,
    dSatFr,
  ],
);
Project graphProjectEn = Project(
  title: "Graph colouring and Spanning Trees",
  widgets: [
    firstPageEn,
    objectivesEn,
    welshPowellEn,
    dSatEn,
  ],
);
