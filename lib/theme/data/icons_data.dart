part of mewnu;

class IconsData {
  final String fontFamily;
  final String? fontPackage;
  final IconCharactersData characters;
  final IconSizesData sizes;

  const IconsData({
    required this.fontFamily,
    required this.fontPackage,
    required this.characters,
    required this.sizes,
  });

  factory IconsData.standard() => IconsData(
        fontFamily: 'darwin_icons',
        fontPackage: 'darwinseguros_app',
        characters: IconCharactersData.standard(),
        sizes: IconSizesData.standard(),
      );
}

class IconCharactersData {
  const IconCharactersData();

  factory IconCharactersData.standard() => const IconCharactersData();
}

class IconSizesData {
  final double small;
  final double medium;
  final double large;

  const IconSizesData({
    required this.small,
    required this.medium,
    required this.large,
  });

  factory IconSizesData.standard() => const IconSizesData(
        small: 16.0,
        medium: 24.0,
        large: 32.0,
      );
}
