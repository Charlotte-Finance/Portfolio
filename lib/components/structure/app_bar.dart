import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/blocs/portfolio_bloc.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/models/language/language_item.dart';
import 'package:portfolio/utils/languages.dart';
import 'package:portfolio/utils/routes/routing_constants.dart';

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
  List<LanguageItem> languageItems = [languageItemEn, languageItemFr];

  MyAppBarState(
      {required this.language, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    language = widget.language;
    List<String> tabs = [
      language.tab.homePageTab,
      language.tab.whoAmITab,
      language.tab.cvTab,
      language.tab.myProjectsTab,
      language.tab.contactTab
    ];
    return Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
      child: Row(
        children: <Widget>[
          for (int i = 0; i < tabs.length; i++) ...[
            Expanded(
              child: AnimatedContainer(
                height: AppBar().preferredSize.height,
                duration: Duration(seconds: 2),
                curve: Curves.easeIn,
                child: Material(
                  color: Colors.white.withOpacity(0.2),
                  child: InkWell(
                    onTap: () {
                      if (tabs[i] == "Language") {
                      } else {
                        print(directions[i]);
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          directions[i],
                          ModalRoute.withName(directions[i]),
                          arguments: language,
                        );
                      }
                    },
                    onHover: (value) {},
                    child: Container(
                      child: Center(
                        child: Text(
                          tabs[i],
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
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
              child: DropdownButton(
                hint: Text(
                  "Language",
                  style: TextStyle(color: Colors.white),
                ),
                items: languageItems.map((LanguageItem language) {
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
                              image: language.image,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          language.name,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value == languageItemEn) {
                    onChanged(languageEn);
                  }
                  if (value == languageItemFr) {
                    onChanged(languageFr);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
