part of mewnu;

class MewnuThemeData {
  final material.Brightness brightness;
  final bool? useMaterial3;
  final MewnuIconsData icons;
  final MewnuColorsData? colors;
  final MewnuColorSchemeData? colorScheme;
  final MewnuTypographiesData? typographies;
  final MewnuRadiusData radius;
  final MewnuSpacingsData spacings;
  final MewnuShadowsData shadows;
  final MewnuDurationsData? durations;
  final MewnuImagesData images;
  final MewnuSizesData sizes;

  const MewnuThemeData.light({
    this.useMaterial3,
    required this.icons,
    this.colors,
    this.colorScheme,
    this.typographies,
    required this.radius,
    required this.spacings,
    required this.shadows,
    this.durations,
    required this.images,
    required this.sizes,
  }) : brightness = material.Brightness.light;

  const MewnuThemeData.dark({
    this.useMaterial3,
    required this.icons,
    this.colors,
    this.colorScheme,
    this.typographies,
    required this.radius,
    required this.spacings,
    required this.shadows,
    this.durations,
    required this.images,
    required this.sizes,
  }) : brightness = material.Brightness.dark;

  factory MewnuThemeData.standard() => MewnuThemeData.light(
        useMaterial3: true,
        icons: MewnuIconsData.standard(),
        colors: MewnuColorsData.standard(),
        radius: const MewnuRadiusData.standard(),
        spacings: MewnuSpacingsData.standard(),
        shadows: MewnuShadowsData.standard(),
        durations: MewnuDurationsData.standard(),
        images: MewnuImagesData.standard(),
        sizes: MewnuSizesData.standard(),
      );
}
