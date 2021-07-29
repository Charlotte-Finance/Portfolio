import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageEmpty());

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
  ) async* {
    if (event is FetchHomePage) {
      yield* _mapFetchHomePageToState(event);
    }
  }

  Stream<HomePageState> _mapFetchHomePageToState(FetchHomePage event) async* {
    yield HomePageLoading();
    try {
      yield HomePageLoaded();
    } catch (_) {
      yield HomePageError(message: "Failed to fetch Home Page");
    }
  }
}
