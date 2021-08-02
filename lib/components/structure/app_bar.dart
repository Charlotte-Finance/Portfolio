import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/blocs/portfolio_bloc.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/tab.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/languages.dart';
import 'package:portfolio/utils/routes/routing_constants.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatefulWidget {
  final Language language;
  final onChanged;

  MyAppBar({
    required this.language,
    required this.onChanged,
  });

  @override
  State<StatefulWidget> createState() => MyAppBarState(
        language: language,
        onChanged: onChanged,
      );
}

class MyAppBarState extends State<MyAppBar> {
  Language language;
  final onChanged;

  final List directions = [
    HomePageRoute,
    WhoAmIRoute,
    CVRoute,
    MyProjectsRoute,
    ContactRoute,
  ];
  List<Language> languages = [languageEn, languageFr];

  MyAppBarState({required this.language, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    language = widget.language;
    List<MyTab> tabs = language.tabs;
    List events = [
      FetchHomePage(),
      FetchWhoAmI(),
      FetchCV(),
      FetchMyProjects(),
      FetchContact()
    ];
    return Container(
      color: myGrey,
      child: Row(
        children: <Widget>[
          for (int i = 0; i < tabs.length; i++) ...[
            Expanded(
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.easeIn,
                child: Material(
                  color: myGrey,
                  child: InkWell(
                    onTap: () {
                      context.read<PortFolioBloc>().add(events[i]);
                      WidgetsBinding.instance!.addPostFrameCallback((_) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          directions[i],
                          ModalRoute.withName(directions[i]),
                          arguments: language,
                        );
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          tabs[i].name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Container(
                    color: myGrey,
                    child: new Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: myGrey,
                      ),
                      child: DropdownButton(
                        hint: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: language.flag,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              language.name,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        items: languages.map((Language language) {
                          return DropdownMenuItem(
                            value: language,
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: language.flag,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  language.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          onChanged(value);
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
