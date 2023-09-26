part of mewnu;

class MewnuTypographiesData extends material.TextTheme {
  final String? fontFamily;
  final material.Typography? typography;

  const MewnuTypographiesData({
    this.fontFamily,
    this.typography,
    super.displayLarge,
    super.displayMedium,
    super.displaySmall,
    super.headlineLarge,
    super.headlineMedium,
    super.headlineSmall,
    super.titleLarge,
    super.titleMedium,
    super.titleSmall,
    super.bodyLarge,
    super.bodyMedium,
    super.bodySmall,
    super.labelLarge,
    super.labelMedium,
    super.labelSmall,
  });
}
