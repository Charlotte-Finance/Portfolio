part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageEmpty extends HomePageState {
  @override
  List<Object> get props => [];
}

class HomePageLoading extends HomePageState {
  @override
  List<Object> get props => [];
}

class HomePageLoaded extends HomePageState {
  @override
  List<Object> get props => [];
}

class HomePageError extends HomePageState {
  final String message;

  const HomePageError({required this.message});

  @override
  List<Object> get props => [this.message];
}
