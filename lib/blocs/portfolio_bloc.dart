import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'portfolio_event.dart';

part 'portfolio_state.dart';

class PortFolioBloc extends Bloc<PortFolioEvent, PortFolioState> {
  PortFolioBloc() : super(PortFolioMyProjects());

  @override
  Stream<PortFolioState> mapEventToState(
    PortFolioEvent event,
  ) async* {
    if (event is FetchHomePage) {
      yield PortFolioHomePage();
    }
    if (event is FetchSkills) {
      yield PortFolioSkills();
    }
    if (event is FetchCV) {
      yield PortFolioCV();
    }
    if (event is FetchMyProjects) {
      yield PortFolioMyProjects();
    }
    if (event is FetchContact) {
      yield PortFolioContact();
    }
  }
}
