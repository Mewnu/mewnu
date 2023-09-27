part of mewnu;

class ShadowsData {
  final BoxShadow large;

  const ShadowsData({required this.large});

  factory ShadowsData.standard() => ShadowsData(
        large: BoxShadow(
          blurRadius: 8.0,
          spreadRadius: 2.0,
          color: Colors.white.withOpacity(.4),
        ),
      );
}
