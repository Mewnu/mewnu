part of mewnu;

class Gaps {
  Gaps();

  Gap none() {
    return const Gap.none();
  }

  Gap extraSmall() {
    return const Gap.extraSmall();
  }

  Gap small() {
    return const Gap.small();
  }

  Gap medium() {
    return const Gap.medium();
  }

  Gap large() {
    return const Gap.large();
  }

  Gap extraLarge() {
    return const Gap.extraLarge();
  }
}

enum GapSize {
  none,
  extraSmall,
  small,
  medium,
  large,
  extraLarge,
}

extension GapSizeExtension on GapSize {
  double size(ThemeData theme) {
    switch (this) {
      case GapSize.none:
        return 0;
      case GapSize.extraSmall:
        return theme.spacings.extraSmall;
      case GapSize.small:
        return theme.spacings.small;
      case GapSize.medium:
        return theme.spacings.medium;
      case GapSize.large:
        return theme.spacings.large;
      case GapSize.extraLarge:
        return theme.spacings.extraLarge;
    }
  }
}

class Gap extends StatelessWidget {
  final GapSize gapSize;
  final Color? color;

  const Gap.custom({
    super.key,
    this.color,
    this.gapSize = GapSize.none,
  });

  const Gap.none({
    super.key,
    this.color,
  }) : gapSize = GapSize.none;

  const Gap.extraSmall({
    super.key,
    this.color,
  }) : gapSize = GapSize.extraSmall;

  const Gap.small({
    super.key,
    this.color,
  }) : gapSize = GapSize.small;

  const Gap.medium({
    super.key,
    this.color,
  }) : gapSize = GapSize.medium;

  const Gap.large({
    super.key,
    this.color,
  }) : gapSize = GapSize.large;

  const Gap.extraLarge({
    super.key,
    this.color,
  }) : gapSize = GapSize.extraLarge;

  @override
  Widget build(BuildContext context) {
    return gap.Gap(
      gapSize.size(context.theme),
      color: color,
    );
  }
}
