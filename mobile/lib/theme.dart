import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff865319),
      surfaceTint: Color(0xff865319),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdcbf),
      onPrimaryContainer: Color(0xff2d1600),
      secondary: Color(0xff735a42),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdcbf),
      onSecondaryContainer: Color(0xff291806),
      tertiary: Color(0xff596339),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdde8b4),
      onTertiaryContainer: Color(0xff171e00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f5),
      onBackground: Color(0xff211a14),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff211a14),
      surfaceVariant: Color(0xfff2dfd1),
      onSurfaceVariant: Color(0xff51443a),
      outline: Color(0xff837469),
      outlineVariant: Color(0xffd5c3b6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f28),
      inverseOnSurface: Color(0xfffdeee3),
      inversePrimary: Color(0xfffdb876),
      primaryFixed: Color(0xffffdcbf),
      onPrimaryFixed: Color(0xff2d1600),
      primaryFixedDim: Color(0xfffdb876),
      onPrimaryFixedVariant: Color(0xff6a3c01),
      secondaryFixed: Color(0xffffdcbf),
      onSecondaryFixed: Color(0xff291806),
      secondaryFixedDim: Color(0xffe2c0a4),
      onSecondaryFixedVariant: Color(0xff59422d),
      tertiaryFixed: Color(0xffdde8b4),
      onTertiaryFixed: Color(0xff171e00),
      tertiaryFixedDim: Color(0xffc1cc99),
      onTertiaryFixedVariant: Color(0xff414b24),
      surfaceDim: Color(0xffe6d7cd),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1e7),
      surfaceContainer: Color(0xfffaebe0),
      surfaceContainerHigh: Color(0xfff5e5db),
      surfaceContainerHighest: Color(0xffefe0d5),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff643800),
      surfaceTint: Color(0xff865319),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa0682d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff553e29),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8b6f57),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3d4720),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6f794e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f5),
      onBackground: Color(0xff211a14),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff211a14),
      surfaceVariant: Color(0xfff2dfd1),
      onSurfaceVariant: Color(0xff4d4136),
      outline: Color(0xff6a5d51),
      outlineVariant: Color(0xff87786c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f28),
      inverseOnSurface: Color(0xfffdeee3),
      inversePrimary: Color(0xfffdb876),
      primaryFixed: Color(0xffa0682d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff835017),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8b6f57),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff705740),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6f794e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff566037),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d7cd),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1e7),
      surfaceContainer: Color(0xfffaebe0),
      surfaceContainerHigh: Color(0xfff5e5db),
      surfaceContainerHighest: Color(0xffefe0d5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff361c00),
      surfaceTint: Color(0xff865319),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff643800),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff311e0b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff553e29),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1d2503),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3d4720),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f5),
      onBackground: Color(0xff211a14),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff2dfd1),
      onSurfaceVariant: Color(0xff2c2219),
      outline: Color(0xff4d4136),
      outlineVariant: Color(0xff4d4136),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f28),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe8d6),
      primaryFixed: Color(0xff643800),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff452500),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff553e29),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3c2915),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3d4720),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff27300c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d7cd),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1e7),
      surfaceContainer: Color(0xfffaebe0),
      surfaceContainerHigh: Color(0xfff5e5db),
      surfaceContainerHighest: Color(0xffefe0d5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdb876),
      surfaceTint: Color(0xfffdb876),
      onPrimary: Color(0xff4a2800),
      primaryContainer: Color(0xff6a3c01),
      onPrimaryContainer: Color(0xffffdcbf),
      secondary: Color(0xffe2c0a4),
      onSecondary: Color(0xff412c18),
      secondaryContainer: Color(0xff59422d),
      onSecondaryContainer: Color(0xffffdcbf),
      tertiary: Color(0xffc1cc99),
      onTertiary: Color(0xff2b340f),
      tertiaryContainer: Color(0xff414b24),
      onTertiaryContainer: Color(0xffdde8b4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff19120c),
      onBackground: Color(0xffefe0d5),
      surface: Color(0xff19120c),
      onSurface: Color(0xffefe0d5),
      surfaceVariant: Color(0xff51443a),
      onSurfaceVariant: Color(0xffd5c3b6),
      outline: Color(0xff9e8e81),
      outlineVariant: Color(0xff51443a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefe0d5),
      inverseOnSurface: Color(0xff372f28),
      inversePrimary: Color(0xff865319),
      primaryFixed: Color(0xffffdcbf),
      onPrimaryFixed: Color(0xff2d1600),
      primaryFixedDim: Color(0xfffdb876),
      onPrimaryFixedVariant: Color(0xff6a3c01),
      secondaryFixed: Color(0xffffdcbf),
      onSecondaryFixed: Color(0xff291806),
      secondaryFixedDim: Color(0xffe2c0a4),
      onSecondaryFixedVariant: Color(0xff59422d),
      tertiaryFixed: Color(0xffdde8b4),
      onTertiaryFixed: Color(0xff171e00),
      tertiaryFixedDim: Color(0xffc1cc99),
      onTertiaryFixedVariant: Color(0xff414b24),
      surfaceDim: Color(0xff19120c),
      surfaceBright: Color(0xff403830),
      surfaceContainerLowest: Color(0xff130d07),
      surfaceContainerLow: Color(0xff211a14),
      surfaceContainer: Color(0xff261e18),
      surfaceContainerHigh: Color(0xff312822),
      surfaceContainerHighest: Color(0xff3c332c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbe7f),
      surfaceTint: Color(0xfffdb876),
      onPrimary: Color(0xff251100),
      primaryContainer: Color(0xffc08446),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe6c5a8),
      onSecondary: Color(0xff231303),
      secondaryContainer: Color(0xffa98b71),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc5d09d),
      onTertiary: Color(0xff121900),
      tertiaryContainer: Color(0xff8b9667),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff19120c),
      onBackground: Color(0xffefe0d5),
      surface: Color(0xff19120c),
      onSurface: Color(0xfffffaf8),
      surfaceVariant: Color(0xff51443a),
      onSurfaceVariant: Color(0xffd9c7ba),
      outline: Color(0xffb0a093),
      outlineVariant: Color(0xff8f8074),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefe0d5),
      inverseOnSurface: Color(0xff312822),
      inversePrimary: Color(0xff6b3d02),
      primaryFixed: Color(0xffffdcbf),
      onPrimaryFixed: Color(0xff1e0d00),
      primaryFixedDim: Color(0xfffdb876),
      onPrimaryFixedVariant: Color(0xff522d00),
      secondaryFixed: Color(0xffffdcbf),
      onSecondaryFixed: Color(0xff1d0d01),
      secondaryFixedDim: Color(0xffe2c0a4),
      onSecondaryFixedVariant: Color(0xff47321d),
      tertiaryFixed: Color(0xffdde8b4),
      onTertiaryFixed: Color(0xff0d1300),
      tertiaryFixedDim: Color(0xffc1cc99),
      onTertiaryFixedVariant: Color(0xff313a15),
      surfaceDim: Color(0xff19120c),
      surfaceBright: Color(0xff403830),
      surfaceContainerLowest: Color(0xff130d07),
      surfaceContainerLow: Color(0xff211a14),
      surfaceContainer: Color(0xff261e18),
      surfaceContainerHigh: Color(0xff312822),
      surfaceContainerHighest: Color(0xff3c332c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffffaf8),
      surfaceTint: Color(0xfffdb876),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbe7f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe6c5a8),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff7ffd5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffc5d09d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff19120c),
      onBackground: Color(0xffefe0d5),
      surface: Color(0xff19120c),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff51443a),
      onSurfaceVariant: Color(0xfffffaf8),
      outline: Color(0xffd9c7ba),
      outlineVariant: Color(0xffd9c7ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefe0d5),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff412300),
      primaryFixed: Color(0xffffe2c9),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbe7f),
      onPrimaryFixedVariant: Color(0xff251100),
      secondaryFixed: Color(0xffffe2c9),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe6c5a8),
      onSecondaryFixedVariant: Color(0xff231303),
      tertiaryFixed: Color(0xffe1ecb8),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc5d09d),
      onTertiaryFixedVariant: Color(0xff121900),
      surfaceDim: Color(0xff19120c),
      surfaceBright: Color(0xff403830),
      surfaceContainerLowest: Color(0xff130d07),
      surfaceContainerLow: Color(0xff211a14),
      surfaceContainer: Color(0xff261e18),
      surfaceContainerHigh: Color(0xff312822),
      surfaceContainerHighest: Color(0xff3c332c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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
