import 'package:equatable/equatable.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguage extends LanguageEvent {
  final String locale;

  const ChangeLanguage(this.locale);

  @override
  List<Object> get props => [locale];
}
