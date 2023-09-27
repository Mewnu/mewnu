part of mewnu;

class ThemeData {
  final material.Brightness brightness;
  final bool? useMaterial3;
  final IconsData icons;
  final ColorsData? colors;
  final ColorSchemeData? colorScheme;
  final TypographiesData? typographies;
  final RadiusData radius;
  final SpacingsData spacings;
  final ShadowsData shadows;
  final DurationsData? durations;
  final ImagesData images;
  final SizesData sizes;

  const ThemeData.light({
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

  const ThemeData.dark({
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

  factory ThemeData.standard() => ThemeData.light(
        useMaterial3: true,
        icons: IconsData.standard(),
        colors: ColorsData.standard(),
        radius: const RadiusData.standard(),
        spacings: SpacingsData.standard(),
        shadows: ShadowsData.standard(),
        durations: DurationsData.standard(),
        images: ImagesData.standard(),
        sizes: SizesData.standard(),
      );
}
