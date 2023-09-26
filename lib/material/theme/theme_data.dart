part of material;

class MaterialThemeData {
  final MaterialColorsData colors;
  final MaterialPaiting painting;
  Color? scaffoldBackgroundColor;

  MaterialThemeData()
      : colors = MaterialColorsData(),
        painting = MaterialPaiting();
}
