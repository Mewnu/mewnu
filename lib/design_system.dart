part of mewnu;

class DesignSystem {
  final material.Brightness brightness;
  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final AtomicDesign components;

  DesignSystem({
    this.brightness = material.Brightness.light,
    this.lightTheme,
    this.darkTheme,
  }) : components = AtomicDesign();

  ThemeData get theme =>
      (brightness == material.Brightness.light ? lightTheme : darkTheme) ??
      ThemeData.standard();
}
