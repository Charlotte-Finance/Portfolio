import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/pages/port_folio_page.dart';
import 'package:portfolio/utils/language/languages.dart';
import 'package:portfolio/utils/routes/route_generator.dart';
import 'package:portfolio/utils/routes/routing_constants.dart';

import 'blocs/portfolio_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => PortFolioBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateInitialRoutes: (route) {
        return [
          PageRouteBuilder(
            settings: RouteSettings(name: HomePageRoute),
            transitionDuration: Duration(seconds: 0),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                PortFolioPage(language: languageEn),
          ),
        ];
      },
    );
  }
}
