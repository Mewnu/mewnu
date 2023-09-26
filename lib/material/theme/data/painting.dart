part of material;

class MaterialPaiting {
  BoxDecoration boxDecoration({
    Color? color,
  }) {
    return BoxDecoration(
      color: color,
    );
  }

  EdgeInsets edgeInsetsAll(double value) => EdgeInsets.all(value);
}
