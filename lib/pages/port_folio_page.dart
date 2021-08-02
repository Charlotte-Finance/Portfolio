import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/blocs/portfolio_bloc.dart';
import 'package:portfolio/components/structure/structure.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/who_am_i.dart';

import 'contact.dart';
import 'cv.dart';
import 'my_projects.dart';

class PortFolioPage extends StatefulWidget {
  final Language language;

  const PortFolioPage({required this.language});

  @override
  State<StatefulWidget> createState() => PortFolioPageState(language: language);
}

class PortFolioPageState extends State<PortFolioPage> {
  Language language;

  PortFolioPageState({required this.language});

  void onChanged(Language language) {
    setState(() {
      this.language = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PortFolioBloc, PortFolioState>(
      builder: (context, state) {
        if (state is PortFolioHomePage) {
          return Structure(
            image: AssetImage('lib/assets/rainbow_keyboard.jpg'),
            language: this.language,
            onChanged: onChanged,
            child: HomePage(tab: this.language.tabs[0]),
          );
        } else if (state is PortFolioWhoAmI) {
          return Structure(
            image: AssetImage('lib/assets/white_desk.jpg'),
            language: this.language,
            onChanged: onChanged,
            child: WhoAmIPage(tab: this.language.tabs[1]),
          );
        } else if (state is PortFolioCV) {
          return Structure(
            image: AssetImage('lib/assets/keyboard.jpg'),
            language: this.language,
            onChanged: onChanged,
            child: CVPage(tab: this.language.tabs[2]),
          );
        } else if (state is PortFolioMyProjects) {
          return Structure(
            image: AssetImage('lib/assets/light_bulbs.jpg'),
            language: this.language,
            onChanged: onChanged,
            child: MyProjectsPage(tab: this.language.tabs[3]),
          );
        } else if (state is PortFolioContact) {
          return Structure(
            image: AssetImage('lib/assets/binary.jpg'),
            language: this.language,
            onChanged: onChanged,
            child: ContactPage(tab: this.language.tabs[4]),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
