part of mewnu;

class MewnuDesignSystem {
  final material.Brightness brightness;
  final MewnuThemeData? lightTheme;
  final MewnuThemeData? darkTheme;
  final MewnuAtomicDesign components;

  MewnuDesignSystem({
    this.brightness = material.Brightness.light,
    this.lightTheme,
    this.darkTheme,
  }) : components = MewnuAtomicDesign();

  MewnuThemeData get theme =>
      (brightness == material.Brightness.light ? lightTheme : darkTheme) ??
      MewnuThemeData.standard();
}
