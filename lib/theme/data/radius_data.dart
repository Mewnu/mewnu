part of mewnu;

class MewnuRadiusData {
  final Radius small;
  final Radius medium;
  final Radius large;

  const MewnuRadiusData({
    required this.small,
    required this.medium,
    required this.large,
  });

  const MewnuRadiusData.standard()
      : small = const Radius.circular(8),
        medium = const Radius.circular(12),
        large = const Radius.circular(20);

  MewnuBorderRadiusData get border => MewnuBorderRadiusData(this);
}

class MewnuBorderRadiusData {
  final MewnuRadiusData _radius;

  const MewnuBorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.medium);
  BorderRadius get large => BorderRadius.all(_radius.large);
}
