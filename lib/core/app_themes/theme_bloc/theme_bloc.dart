import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  // final SharedPreferences storage;
  // ThemeBloc({required this.storage}) : super(const ThemeState()) {
  ThemeBloc() : super(const ThemeState()) {
    on<ToggleThemeEvent>((event, emit) async {
      final newThemeMode = event.thememode == 'system'
          ? ThemeMode.system
          : event.thememode == 'light'
              ? ThemeMode.light
              : ThemeMode.dark;

      emit(ThemeState(themeMode: newThemeMode));
      // await storage.setString('thememode', event.thememode);
    });

    on<InitializeThemeEvent>((event, emit) {
      // final thememode = storage.getString('thememode');

      // if (thememode != null) {
      //   final newThemeMode = thememode == 'system'
      //       ? ThemeMode.system
      //       : thememode == 'light'
      //           ? ThemeMode.light
      //           : ThemeMode.dark;

      //   emit(ThemeState(themeMode: newThemeMode));
      // // } else {
      emit(const ThemeState(themeMode: ThemeMode.system));
      // }
    });
  }
}
