part of mewnu;

class MewnuSpacingsData {
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;

  const MewnuSpacingsData({
    required this.extraSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
  });

  factory MewnuSpacingsData.standard() => const MewnuSpacingsData(
        extraSmall: 4,
        small: 8,
        medium: 16,
        large: 24,
        extraLarge: 32,
      );

  MewnuEdgeInsetsSpacingData asInsets() => MewnuEdgeInsetsSpacingData(this);
}

class MewnuEdgeInsetsSpacingData {
  const MewnuEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get extraSmall => EdgeInsets.all(_spacing.extraSmall);
  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get medium => EdgeInsets.all(_spacing.medium);
  EdgeInsets get large => EdgeInsets.all(_spacing.large);
  EdgeInsets get extraLarge => EdgeInsets.all(_spacing.extraLarge);

  final MewnuSpacingsData _spacing;
}
