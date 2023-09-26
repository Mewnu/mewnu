part of mewnu;

class MewnuDurationsData {
  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  const MewnuDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory MewnuDurationsData.standard() => const MewnuDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );
}
