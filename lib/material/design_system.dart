part of material;

class MaterialDesignSystem {
  final ThemeData? themeData;
  // final ThemeData? darkThemeData;
  final MaterialThemeData theme;
  final MaterialAtomicDesign components;

  MaterialDesignSystem({
    required this.theme,
    // this.darkThemeData,
  })  : themeData = ThemeData(
          // colorScheme: designSystem.theme.colorScheme,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Lato',
          primarySwatch: Colors.yellow,
          brightness: Brightness.light,
        ),
        // theme = MaterialThemeData(),
        components = MaterialAtomicDesign();
}
