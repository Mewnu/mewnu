part of mewnu;

extension CardExtension on material.Card {
  material.Card copyWith({
    Color? color,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    ShapeBorder? shape,
    bool? borderOnForeground,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    bool? semanticContainer,
    Widget? child,
  }) {
    return material.Card(
      color: color ?? this.color,
      shadowColor: shadowColor ?? this.shadowColor,
      surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      borderOnForeground: borderOnForeground ?? this.borderOnForeground,
      margin: margin ?? this.margin,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      semanticContainer: semanticContainer ?? this.semanticContainer,
      child: child ?? this.child,
    );
  }
}