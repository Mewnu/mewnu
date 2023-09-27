part of mewnu;

class Texts {
  Texts();

  Text standard(String data) {
    return Text.standard(data);
  }

  Text displayLarge(String data) {
    return Text.displayLarge(data);
  }

  Text displayMedium(String data) {
    return Text.displayMedium(data);
  }

  Text displaySmall(String data) {
    return Text.displaySmall(data);
  }

  Text headlineLarge(String data) {
    return Text.headlineLarge(data);
  }

  Text headlineMedium(String data) {
    return Text.headlineMedium(data);
  }

  Text headlineSmall(String data) {
    return Text.headlineSmall(data);
  }

  Text titleSmall(String data) {
    return Text.titleSmall(data);
  }

  Text bodyLarge(String data) {
    return Text.bodyLarge(data);
  }

  Text bodySmall(String data) {
    return Text.bodySmall(data);
  }

  Text labelLarge(String data) {
    return Text.labelLarge(data);
  }

  Text labelMedium(String data) {
    return Text.labelMedium(data);
  }

  Text labelSmall(String data) {
    return Text.labelSmall(data);
  }
}

class Text extends material.StatelessWidget {
  final String data;
  final TextTypographyType? typographyType;

  const Text(
    this.data, {
    super.key,
    this.typographyType,
  });

  const Text.standard(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.displayLarge;

  const Text.displayLarge(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.displayLarge;

  const Text.displayMedium(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.displayMedium;

  const Text.displaySmall(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.displaySmall;

  const Text.headlineLarge(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.headlineLarge;

  const Text.headlineMedium(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.headlineMedium;

  const Text.headlineSmall(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.headlineSmall;

  const Text.titleLarge(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.titleLarge;

  const Text.titleMedium(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.titleMedium;

  const Text.titleSmall(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.titleSmall;

  const Text.bodyLarge(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.bodyLarge;

  const Text.bodyMedium(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.bodyMedium;

  const Text.bodySmall(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.bodySmall;

  const Text.labelLarge(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.labelLarge;

  const Text.labelMedium(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.labelMedium;

  const Text.labelSmall(
    this.data, {
    super.key,
  }) : typographyType = TextTypographyType.labelSmall;

  @override
  material.Widget build(material.BuildContext context) {
    return material.Text(
      data,
      style: typographyType?.textStyle(context.theme),
    );
  }
}

enum TextTypographyType {
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

extension TextTypographyTypeExtension on TextTypographyType {
  TextStyle? textStyle(ThemeData theme) {
    switch (this) {
      case TextTypographyType.standard:
        return null;
      case TextTypographyType.displayLarge:
        return theme.typographies?.displayLarge;
      case TextTypographyType.displayMedium:
        return theme.typographies?.displayMedium;
      case TextTypographyType.displaySmall:
        return theme.typographies?.displaySmall;
      case TextTypographyType.headlineLarge:
        return theme.typographies?.headlineLarge;
      case TextTypographyType.headlineMedium:
        return theme.typographies?.headlineMedium;
      case TextTypographyType.headlineSmall:
        return theme.typographies?.headlineSmall;
      case TextTypographyType.titleLarge:
        return theme.typographies?.titleLarge;
      case TextTypographyType.titleMedium:
        return theme.typographies?.titleMedium;
      case TextTypographyType.titleSmall:
        return theme.typographies?.titleSmall;
      case TextTypographyType.bodyLarge:
        return theme.typographies?.bodyLarge;
      case TextTypographyType.bodyMedium:
        return theme.typographies?.bodyMedium;
      case TextTypographyType.bodySmall:
        return theme.typographies?.bodySmall;
      case TextTypographyType.labelLarge:
        return theme.typographies?.labelLarge;
      case TextTypographyType.labelMedium:
        return theme.typographies?.labelMedium;
      case TextTypographyType.labelSmall:
        return theme.typographies?.labelSmall;
    }
  }
}
