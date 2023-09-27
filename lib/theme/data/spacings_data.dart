part of mewnu;

class SpacingsData {
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;

  const SpacingsData({
    required this.extraSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
  });

  factory SpacingsData.standard() => const SpacingsData(
        extraSmall: 4,
        small: 8,
        medium: 16,
        large: 24,
        extraLarge: 32,
      );

  EdgeInsetsSpacingData asInsets() => EdgeInsetsSpacingData(this);
}

class EdgeInsetsSpacingData {
  const EdgeInsetsSpacingData(this._spacing);

  material.EdgeInsets get extraSmall =>
      material.EdgeInsets.all(_spacing.extraSmall);
  material.EdgeInsets get small => material.EdgeInsets.all(_spacing.small);
  material.EdgeInsets get medium => material.EdgeInsets.all(_spacing.medium);
  material.EdgeInsets get large => material.EdgeInsets.all(_spacing.large);
  material.EdgeInsets get extraLarge =>
      material.EdgeInsets.all(_spacing.extraLarge);

  final SpacingsData _spacing;
}
