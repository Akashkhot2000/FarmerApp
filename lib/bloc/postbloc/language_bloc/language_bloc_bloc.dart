import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project_structure/bloc/postbloc/language_bloc/language_bloc_event.dart';
import 'package:flutter_project_structure/bloc/postbloc/language_bloc/language_bloc_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState(locale: 'en')) {
    on<ChangeLanguage>((event, emit) {
      emit(LanguageState(locale: event.locale));
    });
  }
}
