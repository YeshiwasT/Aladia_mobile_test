part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class ToggleThemeEvent extends ThemeEvent {
  final String thememode;

  ToggleThemeEvent({required this.thememode});
}

class InitializeThemeEvent extends ThemeEvent {
  InitializeThemeEvent();
}
