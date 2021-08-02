part of 'portfolio_bloc.dart';

abstract class PortFolioState extends Equatable {
  const PortFolioState();
}

class PortFolioLoading extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioHomePage extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioSkills extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioCV extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioMyProjects extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioContact extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioError extends PortFolioState {
  final String message;

  const PortFolioError({required this.message});

  @override
  List<Object> get props => [this.message];
}
