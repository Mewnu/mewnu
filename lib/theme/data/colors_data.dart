part of mewnu;

class Colors {
  static const blackChocolate = Color(0x1919190A);
  static const brightGray = Color(0xFFEAEAEA);
  static const cultured = Color(0xFFF4F4F4);
  static const debianRed = Color(0xFFd80f58);
  static const eerieBlack = Color(0xFF191919);
  static const electricPink = Color(0xFFFE1F6F);
  static const gainsboro = Color(0xFFD9D9DC);
  static const lavenderGray = Color(0xFFC7C7CD);
  static const maroonX11 = Color(0xFFC23166);
  static const mediumTurquoise = Color(0xFF4DDCCA);
  static const nickel = Color(0xFF707075);
  static const pastelOrange = Color(0xFFFEBC43);
  static const spanishGray = Color(0xFF9E9E9E);
  static const taupeGray = Color(0xFF86868B);
  static const white = Color(0xFFffffff);

  /// Material Colors
  static const blue = material.Colors.blue;
  static const int _shadeEletricPink = 0xFFFF1F70;
  static const material.MaterialColor shadeEletricPink =
      material.MaterialColor(_shadeEletricPink, <int, Color>{
    50: Color(0xFFFFE4EE),
    100: Color(0xFFFFBCD4),
    200: Color(0xFFFF8FB8),
    300: Color(0xFFFF629B),
    400: Color(0xFFFF4185),
    500: Color(_shadeEletricPink),
    600: Color(0xFFFF1B68),
    700: Color(0xFFFF175D),
    800: Color(0xFFFF1253),
    900: Color(0xFFFF0A41),
  });
}

class ColorsData {
  final material.MaterialColor? primarySwatch;
  final material.Color? scaffoldBackgroundColor;

  ColorsData({
    this.primarySwatch,
    this.scaffoldBackgroundColor,
  });

  factory ColorsData.standard() => ColorsData(
        primarySwatch: Colors.blue,
      );
}

class ColorSchemeData extends material.ColorScheme {
  const ColorSchemeData({
    required super.brightness,
    required super.primary,
    required super.onPrimary,
    super.primaryContainer,
    super.onPrimaryContainer,
    required super.secondary,
    required super.onSecondary,
    super.secondaryContainer,
    super.onSecondaryContainer,
    super.tertiary,
    super.onTertiary,
    super.tertiaryContainer,
    super.onTertiaryContainer,
    required super.error,
    required super.onError,
    super.errorContainer,
    super.onErrorContainer,
    required super.background,
    required super.onBackground,
    required super.surface,
    required super.onSurface,
    super.surfaceVariant,
    super.onSurfaceVariant,
    super.outline,
    super.outlineVariant,
    super.shadow,
    super.scrim,
    super.inverseSurface,
    super.onInverseSurface,
    super.inversePrimary,
    super.surfaceTint,
  });
}
