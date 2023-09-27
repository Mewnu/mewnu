part of mewnu;

class Icon extends StatelessWidget {
  final String data;
  final Color? color;
  final IconSize size;

  const Icon.custom(
    this.data, {
    super.key,
    this.color,
    this.size = IconSize.medium,
  });

  const Icon.small(
    this.data, {
    super.key,
    this.color,
  }) : size = IconSize.small;

  const Icon.medium(
    this.data, {
    super.key,
    this.color,
  }) : size = IconSize.medium;

  const Icon.large(
    this.data, {
    super.key,
    this.color,
  }) : size = IconSize.large;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final color = this.color ?? theme.colorScheme?.surface;

    return material.Text(
      data,
      style: material.TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: size.resolve(theme),
        decoration: TextDecoration.none,
      ),
    );
  }
}

class AnimatedIcon extends StatelessWidget {
  const AnimatedIcon(
    this.data, {
    super.key,
    this.color,
    this.size = IconSize.small,
    this.duration = const Duration(milliseconds: 200),
  });

  final String data;
  final Color? color;
  final IconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final color = this.color ?? theme.colorScheme?.surface;
    if (!isAnimated) {
      return Icon.custom(
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

enum IconSize {
  small,
  medium,
  large,
}

extension IconSizeExtension on IconSize {
  double resolve(ThemeData theme) {
    final sizes = theme.icons.sizes;
    switch (this) {
      case IconSize.small:
        return sizes.small;
      case IconSize.medium:
        return sizes.medium;
      case IconSize.large:
        return sizes.large;
    }
  }
}
