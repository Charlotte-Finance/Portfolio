part of 'portfolio_bloc.dart';

abstract class PortFolioEvent extends Equatable {
  const PortFolioEvent();
}

class FetchHomePage extends PortFolioEvent {
  @override
  List<Object> get props => [];
}

class FetchWhoAmI extends PortFolioEvent {
  @override
  List<Object> get props => [];
}

class FetchCV extends PortFolioEvent {
  @override
  List<Object> get props => [];
}

class FetchMyProjects extends PortFolioEvent {
  @override
  List<Object> get props => [];
}

class FetchContact extends PortFolioEvent {
  @override
  List<Object> get props => [];
}
