part of mewnu;

class RadiusData {
  final Radius small;
  final Radius medium;
  final Radius large;

  const RadiusData({
    required this.small,
    required this.medium,
    required this.large,
  });

  const RadiusData.standard()
      : small = const Radius.circular(8),
        medium = const Radius.circular(12),
        large = const Radius.circular(20);

  BorderRadiusData get border => BorderRadiusData(this);
}

class BorderRadiusData {
  final RadiusData _radius;

  const BorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.medium);
  BorderRadius get large => BorderRadius.all(_radius.large);
}
