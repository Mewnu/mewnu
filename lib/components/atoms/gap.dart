part of mewnu;

class MewnuGaps {
  MewnuGaps();

  MewnuGap none() {
    return const MewnuGap.none();
  }

  MewnuGap extraSmall() {
    return const MewnuGap.extraSmall();
  }

  MewnuGap small() {
    return const MewnuGap.small();
  }

  MewnuGap medium() {
    return const MewnuGap.medium();
  }

  MewnuGap large() {
    return const MewnuGap.large();
  }

  MewnuGap extraLarge() {
    return const MewnuGap.extraLarge();
  }
}

enum MewnuGapSize {
  none,
  extraSmall,
  small,
  medium,
  large,
  extraLarge,
}

extension MewnuGapSizeExtension on MewnuGapSize {
  double size(MewnuThemeData theme) {
    switch (this) {
      case MewnuGapSize.none:
        return 0;
      case MewnuGapSize.extraSmall:
        return theme.spacings.extraSmall;
      case MewnuGapSize.small:
        return theme.spacings.small;
      case MewnuGapSize.medium:
        return theme.spacings.medium;
      case MewnuGapSize.large:
        return theme.spacings.large;
      case MewnuGapSize.extraLarge:
        return theme.spacings.extraLarge;
    }
  }
}

class MewnuGap extends StatelessWidget {
  final MewnuGapSize gapSize;
  final Color? color;

  const MewnuGap.custom({
    super.key,
    this.color,
    this.gapSize = MewnuGapSize.none,
  });

  const MewnuGap.none({
    super.key,
    this.color,
  }) : gapSize = MewnuGapSize.none;

  const MewnuGap.extraSmall({
    super.key,
    this.color,
  }) : gapSize = MewnuGapSize.extraSmall;

  const MewnuGap.small({
    super.key,
    this.color,
  }) : gapSize = MewnuGapSize.small;

  const MewnuGap.medium({
    super.key,
    this.color,
  }) : gapSize = MewnuGapSize.medium;

  const MewnuGap.large({
    super.key,
    this.color,
  }) : gapSize = MewnuGapSize.large;

  const MewnuGap.extraLarge({
    super.key,
    this.color,
  }) : gapSize = MewnuGapSize.extraLarge;

  @override
  Widget build(BuildContext context) {
    return Gap(
      gapSize.size(context.theme),
      color: color,
    );
  }
}
