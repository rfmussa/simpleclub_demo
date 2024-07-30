import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4c5c92),
      surfaceTint: Color(0xff4c5c92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffdce1ff),
      onPrimaryContainer: Color(0xff03174b),
      secondary: Color(0xff6f5d0e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffae287),
      onSecondaryContainer: Color(0xff221b00),
      tertiary: Color(0xff815512),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb7),
      onTertiaryContainer: Color(0xff2a1700),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff1a1b21),
      onSurfaceVariant: Color(0xff4c4639),
      outline: Color(0xff7e7667),
      outlineVariant: Color(0xffcfc5b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffb6c4ff),
      primaryFixed: Color(0xffdce1ff),
      onPrimaryFixed: Color(0xff03174b),
      primaryFixedDim: Color(0xffb6c4ff),
      onPrimaryFixedVariant: Color(0xff344479),
      secondaryFixed: Color(0xfffae287),
      onSecondaryFixed: Color(0xff221b00),
      secondaryFixedDim: Color(0xffddc66e),
      onSecondaryFixedVariant: Color(0xff544600),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff2a1700),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff653e00),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe3e2e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff304074),
      surfaceTint: Color(0xff4c5c92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6372aa),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff504200),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff867325),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5f3b00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9b6b28),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff1a1b21),
      onSurfaceVariant: Color(0xff484235),
      outline: Color(0xff655e50),
      outlineVariant: Color(0xff827a6b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffb6c4ff),
      primaryFixed: Color(0xff6372aa),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4a598f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff867325),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6c5b0b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9b6b28),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7f5310),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe3e2e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0b1e52),
      surfaceTint: Color(0xff4c5c92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff304074),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2a2200),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff504200),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff331d00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5f3b00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff282318),
      outline: Color(0xff484235),
      outlineVariant: Color(0xff484235),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffe9ebff),
      primaryFixed: Color(0xff304074),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff18295d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff504200),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff362c00),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5f3b00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff412700),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe3e2e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb6c4ff),
      surfaceTint: Color(0xffb6c4ff),
      onPrimary: Color(0xff1d2d61),
      primaryContainer: Color(0xff344479),
      onPrimaryContainer: Color(0xffdce1ff),
      secondary: Color(0xffddc66e),
      onSecondary: Color(0xff3a3000),
      secondaryContainer: Color(0xff544600),
      onSecondaryContainer: Color(0xfffae287),
      tertiary: Color(0xfff7bb70),
      onTertiary: Color(0xff462a00),
      tertiaryContainer: Color(0xff653e00),
      onTertiaryContainer: Color(0xffffddb7),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121318),
      onSurface: Color(0xffe3e2e9),
      onSurfaceVariant: Color(0xffcfc5b4),
      outline: Color(0xff989080),
      outlineVariant: Color(0xff4c4639),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e2e9),
      inversePrimary: Color(0xff4c5c92),
      primaryFixed: Color(0xffdce1ff),
      onPrimaryFixed: Color(0xff03174b),
      primaryFixedDim: Color(0xffb6c4ff),
      onPrimaryFixedVariant: Color(0xff344479),
      secondaryFixed: Color(0xfffae287),
      onSecondaryFixed: Color(0xff221b00),
      secondaryFixedDim: Color(0xffddc66e),
      onSecondaryFixedVariant: Color(0xff544600),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff2a1700),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff653e00),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1a1b21),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff292a2f),
      surfaceContainerHighest: Color(0xff34343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbbc9ff),
      surfaceTint: Color(0xffb6c4ff),
      onPrimary: Color(0xff001143),
      primaryContainer: Color(0xff7f8ec8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe1ca72),
      onSecondary: Color(0xff1c1600),
      secondaryContainer: Color(0xffa4903e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffcc074),
      onTertiary: Color(0xff231300),
      tertiaryContainer: Color(0xffbb8641),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121318),
      onSurface: Color(0xfffcfaff),
      onSurfaceVariant: Color(0xffd4cab8),
      outline: Color(0xffaba291),
      outlineVariant: Color(0xff8a8273),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e2e9),
      inversePrimary: Color(0xff36457a),
      primaryFixed: Color(0xffdce1ff),
      onPrimaryFixed: Color(0xff000d37),
      primaryFixedDim: Color(0xffb6c4ff),
      onPrimaryFixedVariant: Color(0xff233367),
      secondaryFixed: Color(0xfffae287),
      onSecondaryFixed: Color(0xff161100),
      secondaryFixedDim: Color(0xffddc66e),
      onSecondaryFixedVariant: Color(0xff413500),
      tertiaryFixed: Color(0xffffddb7),
      onTertiaryFixed: Color(0xff1c0e00),
      tertiaryFixedDim: Color(0xfff7bb70),
      onTertiaryFixedVariant: Color(0xff4e2f00),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1a1b21),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff292a2f),
      surfaceContainerHighest: Color(0xff34343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffcfaff),
      surfaceTint: Color(0xffb6c4ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffbbc9ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe1ca72),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfffcc074),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf6),
      outline: Color(0xffd4cab8),
      outlineVariant: Color(0xffd4cab8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e2e9),
      inversePrimary: Color(0xff15265a),
      primaryFixed: Color(0xffe2e6ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbbc9ff),
      onPrimaryFixedVariant: Color(0xff001143),
      secondaryFixed: Color(0xffffe68b),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe1ca72),
      onSecondaryFixedVariant: Color(0xff1c1600),
      tertiaryFixed: Color(0xffffe2c3),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfffcc074),
      onTertiaryFixedVariant: Color(0xff231300),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1a1b21),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff292a2f),
      surfaceContainerHighest: Color(0xff34343a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xffb6385f),
    value: Color(0xffb0397f),
    light: ColorFamily(
      color: Color(0xff884b6a),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd8e8),
      onColorContainer: Color(0xff380725),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff884b6a),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd8e8),
      onColorContainer: Color(0xff380725),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff884b6a),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd8e8),
      onColorContainer: Color(0xff380725),
    ),
    dark: ColorFamily(
      color: Color(0xfffdb0d4),
      onColor: Color(0xff521d3b),
      colorContainer: Color(0xff6d3352),
      onColorContainer: Color(0xffffd8e8),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xfffdb0d4),
      onColor: Color(0xff521d3b),
      colorContainer: Color(0xff6d3352),
      onColorContainer: Color(0xffffd8e8),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xfffdb0d4),
      onColor: Color(0xff521d3b),
      colorContainer: Color(0xff6d3352),
      onColorContainer: Color(0xffffd8e8),
    ),
  );

  /// Custom Color 2
  static const customColor2 = ExtendedColor(
    seed: Color(0xff0d9601),
    value: Color(0xff009454),
    light: ColorFamily(
      color: Color(0xff2d6a45),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c2),
      onColorContainer: Color(0xff00210e),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff2d6a45),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c2),
      onColorContainer: Color(0xff00210e),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff2d6a45),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c2),
      onColorContainer: Color(0xff00210e),
    ),
    dark: ColorFamily(
      color: Color(0xff95d5a7),
      onColor: Color(0xff00391d),
      colorContainer: Color(0xff10512e),
      onColorContainer: Color(0xffb1f1c2),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff95d5a7),
      onColor: Color(0xff00391d),
      colorContainer: Color(0xff10512e),
      onColorContainer: Color(0xffb1f1c2),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff95d5a7),
      onColor: Color(0xff00391d),
      colorContainer: Color(0xff10512e),
      onColorContainer: Color(0xffb1f1c2),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    customColor1,
    customColor2,
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
