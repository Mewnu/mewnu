part of mewnu;

class Paddings {
  Paddings();

  Padding extraSmall({Widget? child}) => Padding.extraSmall(child: child);

  Padding small({Widget? child}) => Padding.small(child: child);

  Padding medium({Widget? child}) => Padding.medium(child: child);

  Padding large({Widget? child}) => Padding.extraSmall(child: child);

  Padding extraLarge({Widget? child}) => Padding.extraLarge(child: child);
}

class EdgeInsets {
  final GapSize left;
  final GapSize top;
  final GapSize right;
  final GapSize bottom;

  const EdgeInsets.all(GapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const EdgeInsets.symmetric({
    GapSize vertical = GapSize.none,
    GapSize horizontal = GapSize.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const EdgeInsets.only({
    this.left = GapSize.none,
    this.top = GapSize.none,
    this.right = GapSize.none,
    this.bottom = GapSize.none,
  });

  const EdgeInsets.extraSmall()
      : left = GapSize.extraSmall,
        top = GapSize.extraSmall,
        right = GapSize.extraSmall,
        bottom = GapSize.extraSmall;

  const EdgeInsets.small()
      : left = GapSize.small,
        top = GapSize.small,
        right = GapSize.small,
        bottom = GapSize.small;

  const EdgeInsets.medium()
      : left = GapSize.medium,
        top = GapSize.medium,
        right = GapSize.medium,
        bottom = GapSize.medium;

  const EdgeInsets.large()
      : left = GapSize.large,
        top = GapSize.large,
        right = GapSize.large,
        bottom = GapSize.large;

  const EdgeInsets.extraLarge()
      : left = GapSize.extraLarge,
        top = GapSize.extraLarge,
        right = GapSize.extraLarge,
        bottom = GapSize.extraLarge;

  material.EdgeInsets toEdgeInsets(ThemeData theme) {
    return material.EdgeInsets.only(
      left: left.size(theme),
      top: top.size(theme),
      right: right.size(theme),
      bottom: bottom.size(theme),
    );
  }
}

class Padding extends StatelessWidget {
  final EdgeInsets padding;
  final Widget? child;

  const Padding.none({
    Key? key,
    this.child,
  })  : padding = const EdgeInsets.all(GapSize.none),
        super(key: key);

  const Padding.extraSmall({
    Key? key,
    this.child,
  })  : padding = const EdgeInsets.all(GapSize.extraSmall),
        super(key: key);

  const Padding.small({
    Key? key,
    this.child,
  })  : padding = const EdgeInsets.all(GapSize.small),
        super(key: key);

  const Padding.medium({
    Key? key,
    this.child,
  })  : padding = const EdgeInsets.all(GapSize.medium),
        super(key: key);

  const Padding.large({
    Key? key,
    this.child,
  })  : padding = const EdgeInsets.all(GapSize.large),
        super(key: key);

  const Padding.extraLarge({
    Key? key,
    this.child,
  })  : padding = const EdgeInsets.all(GapSize.extraLarge),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return material.Padding(
      padding: padding.toEdgeInsets(theme),
      child: child,
    );
  }
}
