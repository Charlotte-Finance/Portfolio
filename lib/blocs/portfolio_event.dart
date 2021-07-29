part of 'portfolio_bloc.dart';

abstract class PortFolioEvent extends Equatable {
  const PortFolioEvent();
}


class ChangeLanguage extends PortFolioEvent {
  final Language language;

  const ChangeLanguage({required this.language});

  @override
  List<Object> get props => [this.language];
}
