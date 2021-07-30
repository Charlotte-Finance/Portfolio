import 'package:flutter/material.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/pages/error.dart';
import 'package:portfolio/pages/port_folio_page.dart';
import 'package:portfolio/utils/routes/routing_constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomePageRoute:
        if (args is Language) {
          return PageRouteBuilder(
            settings: RouteSettings(name: HomePageRoute),
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                PortFolioPage(language: args),
          );
        } else {
          return _errorRoute();
        }

      case WhoAmIRoute:
        if (args is Language) {
          return PageRouteBuilder(
            settings: RouteSettings(name: WhoAmIRoute),
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                PortFolioPage(language: args),
          );
        } else {
          return _errorRoute();
        }

      case CVRoute:
        if (args is Language) {
          return PageRouteBuilder(
            settings: RouteSettings(name: CVRoute),
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                PortFolioPage(language: args),
          );
        } else {
          return _errorRoute();
        }

      case MyProjectsRoute:
        if (args is Language) {
          return PageRouteBuilder(
            settings: RouteSettings(name: MyProjectsRoute),
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                PortFolioPage(language: args),
          );
        } else {
          return _errorRoute();
        }

      case ContactRoute:
        if (args is Language) {
          return PageRouteBuilder(
            settings: RouteSettings(name: ContactRoute),
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                PortFolioPage(language: args),
          );
        } else {
          return _errorRoute();
        }
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return PageRouteBuilder(
      settings: RouteSettings(name: ErrorRoute),
      transitionDuration: Duration(seconds: 0),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
      pageBuilder: (context, animation, secondaryAnimation) => ErrorPage());
}
