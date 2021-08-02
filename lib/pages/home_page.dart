import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/widgets.dart';
import 'package:portfolio/models/language/tab.dart';
import 'package:portfolio/utils/styles.dart';

class HomePage extends StatefulWidget {
  final MyTab tab;

  const HomePage({required this.tab});

  @override
  State<StatefulWidget> createState() => HomePageState(tab: tab);
}

class HomePageState extends State<HomePage> {
  MyTab tab;

  HomePageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    tab = widget.tab;
    return Column(
      children: [
        ImageTitle(title: tab.title),
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 50),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text("STAGE RECHERCHE", style: darkTitleStyle),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topCenter,
                child: Text("Mon stage idéal...", style: darkSubTitleStyle),
              ),
              SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconDetails(
                            icon: Icons.create,
                            title: "Développement Web / Développement Mobile",
                            details:
                                "Pour mettre en oeuvre mon savoir tout en améliorant mon expérience",
                          ),
                          SizedBox(height: 50),
                          IconDetails(
                            icon: Icons.public,
                            title: "Canada / Thaïlande",
                            details:
                                "Pour voyager dans un pays avec une culture riche, et avec un bon niveau d'informatique",
                          ),
                          SizedBox(height: 50),
                          IconDetails(
                            icon: Icons.hourglass_empty,
                            title: "6 mois",
                            details:
                                "Durée minimale : 6 mois, durée maximale : 6 mois",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconDetails(
                            icon: Icons.date_range,
                            title: "Janvier / Février 2022",
                            details: "Date de début comprise entre",
                          ),
                          SizedBox(height: 50),
                          IconDetails(
                            icon: Icons.work_outline,
                            title: "En entreprise",
                            details:
                                "Parce que j'ai effectué mon précédent stage en recherche, j'aimerai découvrir le monde de l'entreprise",
                          ),
                          SizedBox(height: 50),
                          SizedBox(height: 82),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('lib/assets/blackboard.jpg'),
                ),
              ),
              child: Container(
                height: 600,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50, bottom: 50),

              height: 600,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("MA FORMATION", style: lightTitleStyle),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("Pour mieux comprendre mon parcours", style: lightSubTitleStyle),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
