part of mewnu;

class MewnuShadowsData {
  final BoxShadow large;

  const MewnuShadowsData({required this.large});

  factory MewnuShadowsData.standard() => MewnuShadowsData(
        large: BoxShadow(
          blurRadius: 8.0,
          spreadRadius: 2.0,
          color: MewnuColors.white.withOpacity(.4),
        ),
      );
}
