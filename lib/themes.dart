import 'package:flutter/material.dart';

enum ThemeVariant { midnight, dusk, twilight }

class AppTheme {
  static ColorScheme _createScheme(
    ThemeVariant variant,
    Brightness brightness,
  ) {
    late Color primaryColor;
    late Color secondaryColor;
    late Color tertiaryColor;
    late Color onSecondaryColor;
    late Color onTertiaryColor;

    switch (variant) {
      case ThemeVariant.midnight:
        primaryColor = const Color(0xFF1E3A8A); // Dark Blue
        secondaryColor = const Color(0xFFFFD700); // Gold
        tertiaryColor = const Color(0xFFFFA500); // Orange
        onSecondaryColor = Colors.black;
        onTertiaryColor = Colors.black;
      case ThemeVariant.dusk:
        primaryColor = const Color(0xFF4A5568); // Slate Gray
        secondaryColor = const Color(0xFFFFC300); // Vivid Yellow
        tertiaryColor = const Color(0xFFFF8C00); // Dark Orange
        onSecondaryColor = Colors.black;
        onTertiaryColor = Colors.white;
      case ThemeVariant.twilight:
        primaryColor = const Color(0xFF553C9A); // Deep Purple
        secondaryColor = const Color(0xFFFFAA00); // Amber
        tertiaryColor = const Color(0xFFFF6600); // Bright Orange
        onSecondaryColor = Colors.black;
        onTertiaryColor = Colors.white;
    }

    final baseScheme = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: brightness,
    );

    // Calculate primary and secondary container colors
    final primaryContainer = brightness == Brightness.light
        ? primaryColor.withOpacity(0.1)
        : primaryColor.withOpacity(0.2);
    final secondaryContainer = brightness == Brightness.light
        ? secondaryColor.withOpacity(0.1)
        : secondaryColor.withOpacity(0.2);

    return baseScheme.copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: tertiaryColor,
      primaryContainer: primaryContainer,
      secondaryContainer: secondaryContainer,
      onSecondary:
          brightness == Brightness.light ? onSecondaryColor : Colors.white,
      onTertiary:
          brightness == Brightness.light ? onTertiaryColor : Colors.white,
    );
  }

  static ThemeData createTheme(
    ThemeVariant variant, {
    Brightness brightness = Brightness.dark,
    TextTheme? textTheme,
  }) {
    final colorScheme = _createScheme(variant, brightness);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: brightness,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
      ),
      cardTheme: CardTheme(
        color: colorScheme.surface,
        elevation: 1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: colorScheme.surfaceContainerHighest,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
      // You can add more component themes here as needed
    );
  }

  // Predefined themes (dark by default)
  static ThemeData midnight({TextTheme? textTheme}) =>
      createTheme(ThemeVariant.midnight, textTheme: textTheme);
  static ThemeData dusk({TextTheme? textTheme}) =>
      createTheme(ThemeVariant.dusk, textTheme: textTheme);
  static ThemeData twilight({TextTheme? textTheme}) =>
      createTheme(ThemeVariant.twilight, textTheme: textTheme);

  // Light versions
  static ThemeData midnightLight({TextTheme? textTheme}) => createTheme(
        ThemeVariant.midnight,
        brightness: Brightness.light,
        textTheme: textTheme,
      );
  static ThemeData duskLight({TextTheme? textTheme}) => createTheme(
        ThemeVariant.dusk,
        brightness: Brightness.light,
        textTheme: textTheme,
      );
  static ThemeData twilightLight({TextTheme? textTheme}) => createTheme(
        ThemeVariant.twilight,
        brightness: Brightness.light,
        textTheme: textTheme,
      );
}
