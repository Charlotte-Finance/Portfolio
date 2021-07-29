part of 'portfolio_bloc.dart';

abstract class PortFolioState extends Equatable {
  const PortFolioState();
}

class PortFolioLoading extends PortFolioState {
  @override
  List<Object> get props => [];
}

class PortFolioLoaded extends PortFolioState {
  final Language language;

  const PortFolioLoaded({required this.language});
  @override
  List<Object> get props => [this.language];
}

class PortFolioError extends PortFolioState {
  final String message;

  const PortFolioError({required this.message});

  @override
  List<Object> get props => [this.message];
}
