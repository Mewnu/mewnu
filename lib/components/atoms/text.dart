part of mewnu;

class MewnuTexts {
  MewnuTexts();

  MewnuText standard(String data) {
    return MewnuText.standard(data);
  }

  MewnuText displayLarge(String data) {
    return MewnuText.displayLarge(data);
  }

  MewnuText displayMedium(String data) {
    return MewnuText.displayMedium(data);
  }

  MewnuText displaySmall(String data) {
    return MewnuText.displaySmall(data);
  }

  MewnuText headlineLarge(String data) {
    return MewnuText.headlineLarge(data);
  }

  MewnuText headlineMedium(String data) {
    return MewnuText.headlineMedium(data);
  }

  MewnuText headlineSmall(String data) {
    return MewnuText.headlineSmall(data);
  }

  MewnuText titleSmall(String data) {
    return MewnuText.titleSmall(data);
  }

  MewnuText bodyLarge(String data) {
    return MewnuText.bodyLarge(data);
  }

  MewnuText bodySmall(String data) {
    return MewnuText.bodySmall(data);
  }

  MewnuText labelLarge(String data) {
    return MewnuText.labelLarge(data);
  }

  MewnuText labelMedium(String data) {
    return MewnuText.labelMedium(data);
  }

  MewnuText labelSmall(String data) {
    return MewnuText.labelSmall(data);
  }
}

class MewnuText extends material.StatelessWidget {
  final String data;
  final MewnuTextTypographyType? typographyType;

  const MewnuText(
    this.data, {
    super.key,
    this.typographyType,
  });

  const MewnuText.standard(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.displayLarge;

  const MewnuText.displayLarge(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.displayLarge;

  const MewnuText.displayMedium(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.displayMedium;

  const MewnuText.displaySmall(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.displaySmall;

  const MewnuText.headlineLarge(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.headlineLarge;

  const MewnuText.headlineMedium(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.headlineMedium;

  const MewnuText.headlineSmall(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.headlineSmall;

  const MewnuText.titleLarge(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.titleLarge;

  const MewnuText.titleMedium(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.titleMedium;

  const MewnuText.titleSmall(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.titleSmall;

  const MewnuText.bodyLarge(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.bodyLarge;

  const MewnuText.bodyMedium(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.bodyMedium;

  const MewnuText.bodySmall(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.bodySmall;

  const MewnuText.labelLarge(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.labelLarge;

  const MewnuText.labelMedium(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.labelMedium;

  const MewnuText.labelSmall(
    this.data, {
    super.key,
  }) : typographyType = MewnuTextTypographyType.labelSmall;

  @override
  material.Widget build(material.BuildContext context) {
    return Text(
      data,
      style: typographyType?.textStyle(context.theme),
    );
  }
}

enum MewnuTextTypographyType {
  standard,
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

extension MewnuTextTypographyTypeExtension on MewnuTextTypographyType {
  TextStyle? textStyle(MewnuThemeData theme) {
    switch (this) {
      case MewnuTextTypographyType.standard:
        return null;
      case MewnuTextTypographyType.displayLarge:
        return theme.typographies?.displayLarge;
      case MewnuTextTypographyType.displayMedium:
        return theme.typographies?.displayMedium;
      case MewnuTextTypographyType.displaySmall:
        return theme.typographies?.displaySmall;
      case MewnuTextTypographyType.headlineLarge:
        return theme.typographies?.headlineLarge;
      case MewnuTextTypographyType.headlineMedium:
        return theme.typographies?.headlineMedium;
      case MewnuTextTypographyType.headlineSmall:
        return theme.typographies?.headlineSmall;
      case MewnuTextTypographyType.titleLarge:
        return theme.typographies?.titleLarge;
      case MewnuTextTypographyType.titleMedium:
        return theme.typographies?.titleMedium;
      case MewnuTextTypographyType.titleSmall:
        return theme.typographies?.titleSmall;
      case MewnuTextTypographyType.bodyLarge:
        return theme.typographies?.bodyLarge;
      case MewnuTextTypographyType.bodyMedium:
        return theme.typographies?.bodyMedium;
      case MewnuTextTypographyType.bodySmall:
        return theme.typographies?.bodySmall;
      case MewnuTextTypographyType.labelLarge:
        return theme.typographies?.labelLarge;
      case MewnuTextTypographyType.labelMedium:
        return theme.typographies?.labelMedium;
      case MewnuTextTypographyType.labelSmall:
        return theme.typographies?.labelSmall;
    }
  }
}
