part of 'theme_cubit.dart';

enum AppTheme {
  light,
  dark,
}

class ThemeState {
  final AppTheme appTheme;

  ThemeState({
    this.appTheme = AppTheme.dark,
  });

  factory ThemeState.initial() {
    return ThemeState();
  }

  ThemeState copyWith({
    AppTheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
