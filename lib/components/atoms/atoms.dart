part of mewnu;

class MewnuAtoms {
  final MewnuPaintings painting;
  final MewnuGaps gap;
  final MewnuListViews listView;
  final MewnuTexts text;
  final MewnuFlexes flex;

  MewnuAtoms()
      : painting = MewnuPaintings(),
        gap = MewnuGaps(),
        text = MewnuTexts(),
        flex = MewnuFlexes(),
        listView = MewnuListViews();

  Container container({
    BoxDecoration? decoration,
    Widget? child,
    // super.key,
    // this.alignment,
    // this.padding,
    // this.color,
    // this.decoration,
    // this.foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    // this.margin,
    // this.transform,
    // this.transformAlignment,
    // this.child,
    // this.clipBehavior = Clip.none,
  }) {
    return Container(
      decoration: decoration,
      height: height,
      width: width,
      child: child,
    );
  }

  material.Card card({
    Color? color,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    ShapeBorder? shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    bool semanticContainer = true,
    Widget? child,
  }) {
    return material.Card(
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      shape: shape,
      borderOnForeground: borderOnForeground,
      margin: margin,
      clipBehavior: clipBehavior,
      semanticContainer: semanticContainer,
      child: child,
    );
  }
}
