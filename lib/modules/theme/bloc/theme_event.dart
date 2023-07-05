part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class ChangeThemeEvent extends ThemeEvent {
  // final int randInt;
  final bool boolTheme;

  ChangeThemeEvent({
    // required this.randInt,
    required this.boolTheme,
  });
}
