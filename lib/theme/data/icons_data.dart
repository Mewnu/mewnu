part of mewnu;

class MewnuIconsData {
  final String fontFamily;
  final String? fontPackage;
  final MewnuIconCharactersData characters;
  final MewnuIconSizesData sizes;

  const MewnuIconsData({
    required this.fontFamily,
    required this.fontPackage,
    required this.characters,
    required this.sizes,
  });

  factory MewnuIconsData.standard() => MewnuIconsData(
        fontFamily: 'darwin_icons',
        fontPackage: 'darwinseguros_app',
        characters: MewnuIconCharactersData.standard(),
        sizes: MewnuIconSizesData.standard(),
      );
}

class MewnuIconCharactersData {
  const MewnuIconCharactersData();

  factory MewnuIconCharactersData.standard() => const MewnuIconCharactersData();
}

class MewnuIconSizesData {
  final double small;
  final double medium;
  final double large;

  const MewnuIconSizesData({
    required this.small,
    required this.medium,
    required this.large,
  });

  factory MewnuIconSizesData.standard() => const MewnuIconSizesData(
        small: 16.0,
        medium: 24.0,
        large: 32.0,
      );
}
