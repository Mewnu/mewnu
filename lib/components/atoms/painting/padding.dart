part of mewnu;

class MewnuPaddings {
  MewnuPaddings();

  MewnuPadding extraSmall({Widget? child}) =>
      MewnuPadding.extraSmall(child: child);

  MewnuPadding small({Widget? child}) => MewnuPadding.small(child: child);

  MewnuPadding medium({Widget? child}) => MewnuPadding.medium(child: child);

  MewnuPadding large({Widget? child}) => MewnuPadding.extraSmall(child: child);

  MewnuPadding extraLarge({Widget? child}) =>
      MewnuPadding.extraLarge(child: child);
}

class MewnuEdgeInsets {
  final MewnuGapSize left;
  final MewnuGapSize top;
  final MewnuGapSize right;
  final MewnuGapSize bottom;

  const MewnuEdgeInsets.all(MewnuGapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const MewnuEdgeInsets.symmetric({
    MewnuGapSize vertical = MewnuGapSize.none,
    MewnuGapSize horizontal = MewnuGapSize.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const MewnuEdgeInsets.only({
    this.left = MewnuGapSize.none,
    this.top = MewnuGapSize.none,
    this.right = MewnuGapSize.none,
    this.bottom = MewnuGapSize.none,
  });

  const MewnuEdgeInsets.extraSmall()
      : left = MewnuGapSize.extraSmall,
        top = MewnuGapSize.extraSmall,
        right = MewnuGapSize.extraSmall,
        bottom = MewnuGapSize.extraSmall;

  const MewnuEdgeInsets.small()
      : left = MewnuGapSize.small,
        top = MewnuGapSize.small,
        right = MewnuGapSize.small,
        bottom = MewnuGapSize.small;

  const MewnuEdgeInsets.medium()
      : left = MewnuGapSize.medium,
        top = MewnuGapSize.medium,
        right = MewnuGapSize.medium,
        bottom = MewnuGapSize.medium;

  const MewnuEdgeInsets.large()
      : left = MewnuGapSize.large,
        top = MewnuGapSize.large,
        right = MewnuGapSize.large,
        bottom = MewnuGapSize.large;

  const MewnuEdgeInsets.extraLarge()
      : left = MewnuGapSize.extraLarge,
        top = MewnuGapSize.extraLarge,
        right = MewnuGapSize.extraLarge,
        bottom = MewnuGapSize.extraLarge;

  EdgeInsets toEdgeInsets(MewnuThemeData theme) {
    return EdgeInsets.only(
      left: left.size(theme),
      top: top.size(theme),
      right: right.size(theme),
      bottom: bottom.size(theme),
    );
  }
}

class MewnuPadding extends StatelessWidget {
  final MewnuEdgeInsets padding;
  final Widget? child;

  const MewnuPadding.none({
    Key? key,
    this.child,
  })  : padding = const MewnuEdgeInsets.all(MewnuGapSize.none),
        super(key: key);

  const MewnuPadding.extraSmall({
    Key? key,
    this.child,
  })  : padding = const MewnuEdgeInsets.all(MewnuGapSize.extraSmall),
        super(key: key);

  const MewnuPadding.small({
    Key? key,
    this.child,
  })  : padding = const MewnuEdgeInsets.all(MewnuGapSize.small),
        super(key: key);

  const MewnuPadding.medium({
    Key? key,
    this.child,
  })  : padding = const MewnuEdgeInsets.all(MewnuGapSize.medium),
        super(key: key);

  const MewnuPadding.large({
    Key? key,
    this.child,
  })  : padding = const MewnuEdgeInsets.all(MewnuGapSize.large),
        super(key: key);

  const MewnuPadding.extraLarge({
    Key? key,
    this.child,
  })  : padding = const MewnuEdgeInsets.all(MewnuGapSize.extraLarge),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: padding.toEdgeInsets(theme),
      child: child,
    );
  }
}
