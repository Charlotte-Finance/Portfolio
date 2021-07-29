import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/models/language/language.dart';
import 'package:portfolio/utils/languages.dart';

part 'portfolio_event.dart';

part 'portfolio_state.dart';

class PortFolioBloc extends Bloc<PortFolioEvent, PortFolioState> {
  PortFolioBloc() : super(PortFolioLoaded(language: languageEn));

  @override
  Stream<PortFolioState> mapEventToState(
      PortFolioEvent event,
      ) async* {
    if (event is ChangeLanguage) {
      yield* _mapChangeLanguageToState(event);
    }
  }


  Stream<PortFolioState> _mapChangeLanguageToState(ChangeLanguage event) async* {
    yield PortFolioLoading();
    try {
      yield PortFolioLoaded(language: event.language);
    } catch (_) {
      yield PortFolioError(message: "Failed to fetch Home Page");
    }
  }
}
