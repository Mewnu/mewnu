part of mewnu;

class MewnuIcon extends StatelessWidget {
  final String data;
  final Color? color;
  final MewnuIconSize size;

  const MewnuIcon.custom(
    this.data, {
    super.key,
    this.color,
    this.size = MewnuIconSize.medium,
  });

  const MewnuIcon.small(
    this.data, {
    super.key,
    this.color,
  }) : size = MewnuIconSize.small;

  const MewnuIcon.medium(
    this.data, {
    super.key,
    this.color,
  }) : size = MewnuIconSize.medium;

  const MewnuIcon.large(
    this.data, {
    super.key,
    this.color,
  }) : size = MewnuIconSize.large;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final color = this.color ?? theme.colorScheme?.surface;

    return Text(
      data,
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: size.resolve(theme),
        decoration: TextDecoration.none,
      ),
    );
  }
}

class MewnuAnimatedIcon extends StatelessWidget {
  const MewnuAnimatedIcon(
    this.data, {
    super.key,
    this.color,
    this.size = MewnuIconSize.small,
    this.duration = const Duration(milliseconds: 200),
  });

  final String data;
  final Color? color;
  final MewnuIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final color = this.color ?? theme.colorScheme?.surface;
    if (!isAnimated) {
      return MewnuIcon.custom(
        data,
        key: key,
        color: color,
        size: size,
      );
    }
    return AnimatedDefaultTextStyle(
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: size.resolve(theme),
        decoration: TextDecoration.none,
      ),
      duration: duration,
      child: Text(
        data,
      ),
    );
  }
}

enum MewnuIconSize {
  small,
  medium,
  large,
}

extension MewnuIconSizeExtension on MewnuIconSize {
  double resolve(MewnuThemeData theme) {
    final sizes = theme.icons.sizes;
    switch (this) {
      case MewnuIconSize.small:
        return sizes.small;
      case MewnuIconSize.medium:
        return sizes.medium;
      case MewnuIconSize.large:
        return sizes.large;
    }
  }
}
