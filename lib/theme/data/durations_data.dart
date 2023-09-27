part of mewnu;

class DurationsData {
  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  const DurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory DurationsData.standard() => const DurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );
}
