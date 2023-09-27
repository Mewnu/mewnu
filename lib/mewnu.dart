library mewnu;

import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

part 'components/atomic_design.dart';
part 'components/atoms/atoms.dart';
part 'components/atoms/flex/column.dart';
part 'components/atoms/flex/flex.dart';
part 'components/atoms/container.dart';
part 'components/atoms/list_view.dart';
part 'components/atoms/text.dart';
part 'components/atoms/painting/padding.dart';
part 'components/molecules/button.dart';
part 'components/atoms/card.dart';
part 'components/atoms/painting/decoration.dart';
part 'components/atoms/gap.dart';
part 'components/atoms/icon.dart';
part 'components/atoms/painting/painting.dart';
part 'components/molecules/molecules.dart';
part 'components/organisms/organisms.dart';
part 'components/organisms/app_bar.dart';
part 'components/templates/templates.dart';
part 'components/templates/scaffold.dart';
part 'design_system.dart';
part 'theme/data/colors_data.dart';
part 'theme/data/durations_data.dart';
part 'theme/data/icons_data.dart';
part 'theme/data/images_data.dart';
part 'theme/data/radius_data.dart';
part 'theme/data/shadows_data.dart';
part 'theme/data/sizes_data.dart';
part 'theme/data/spacings_data.dart';
part 'theme/data/typographies_data.dart';
part 'theme/theme_data.dart';

class MewnuBuilder extends InheritedWidget {
  final MewnuDesignSystem designSystem;

  MewnuBuilder.static({
    super.key,
    required String title,
    required Widget home,
    required this.designSystem,
  }) : super(
          child: material.MaterialApp(
            title: title,
            debugShowCheckedModeBanner: false,
            theme: material.ThemeData(
              typography: designSystem.lightTheme?.typographies?.typography,
              fontFamily: designSystem.lightTheme?.typographies?.fontFamily,
              useMaterial3: designSystem.lightTheme?.useMaterial3,
              brightness: designSystem.lightTheme?.brightness,
              primarySwatch: designSystem.lightTheme?.colors?.primarySwatch,
              colorScheme: designSystem.lightTheme?.colorScheme,
              textTheme: designSystem.lightTheme?.typographies,
            ),
            darkTheme: material.ThemeData(
              typography: designSystem.darkTheme?.typographies?.typography,
              fontFamily: designSystem.darkTheme?.typographies?.fontFamily,
              useMaterial3: designSystem.darkTheme?.useMaterial3,
              brightness: designSystem.darkTheme?.brightness,
              primarySwatch: designSystem.darkTheme?.colors?.primarySwatch,
              colorScheme: designSystem.darkTheme?.colorScheme,
              textTheme: designSystem.darkTheme?.typographies,
            ),
            home: home,
          ),
        );

  MewnuBuilder.router({
    super.key,
    required String title,
    required RouterConfig<Object> routerConfig,
    required this.designSystem,
  }) : super(
          child: material.MaterialApp.router(
            title: title,
            debugShowCheckedModeBanner: false,
            theme: material.ThemeData(
              typography: designSystem.lightTheme?.typographies?.typography,
              fontFamily: designSystem.lightTheme?.typographies?.fontFamily,
              useMaterial3: designSystem.lightTheme?.useMaterial3,
              brightness: designSystem.lightTheme?.brightness,
              primarySwatch: designSystem.lightTheme?.colors?.primarySwatch,
              colorScheme: designSystem.lightTheme?.colorScheme,
              textTheme: designSystem.lightTheme?.typographies,
            ),
            darkTheme: material.ThemeData(
              typography: designSystem.darkTheme?.typographies?.typography,
              fontFamily: designSystem.darkTheme?.typographies?.fontFamily,
              useMaterial3: designSystem.darkTheme?.useMaterial3,
              brightness: designSystem.darkTheme?.brightness,
              primarySwatch: designSystem.darkTheme?.colors?.primarySwatch,
              colorScheme: designSystem.darkTheme?.colorScheme,
              textTheme: designSystem.darkTheme?.typographies,
            ),
            routerConfig: routerConfig,
          ),
        );

  static MewnuBuilder of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<MewnuBuilder>()
        as MewnuBuilder);
  }

  @override
  bool updateShouldNotify(MewnuBuilder oldWidget) {
    return designSystem != oldWidget.designSystem;
  }
}

extension BuildContextExtension on BuildContext {
  /// Builder
  MewnuBuilder get mewnu => MewnuBuilder.of(this);
  MewnuDesignSystem get designSystem => MewnuBuilder.of(this).designSystem;

  /// DesignSystem
  MewnuThemeData get theme => MewnuBuilder.of(this).designSystem.theme;
  MewnuAtomicDesign get components =>
      MewnuBuilder.of(this).designSystem.components;

  /// ThemeData
  MewnuIconsData get icons => MewnuBuilder.of(this).designSystem.theme.icons;
  MewnuColorsData? get colors =>
      MewnuBuilder.of(this).designSystem.theme.colors;
  MewnuColorSchemeData? get colorScheme =>
      MewnuBuilder.of(this).designSystem.theme.colorScheme;
  MewnuTypographiesData? get typographies =>
      MewnuBuilder.of(this).designSystem.theme.typographies;
  MewnuRadiusData? get radius =>
      MewnuBuilder.of(this).designSystem.theme.radius;
  MewnuSpacingsData? get spacings =>
      MewnuBuilder.of(this).designSystem.theme.spacings;
  MewnuShadowsData? get shadows =>
      MewnuBuilder.of(this).designSystem.theme.shadows;
  MewnuDurationsData? get durations =>
      MewnuBuilder.of(this).designSystem.theme.durations;
  MewnuImagesData? get images =>
      MewnuBuilder.of(this).designSystem.theme.images;
  MewnuSizesData? get sizes => MewnuBuilder.of(this).designSystem.theme.sizes;

  /// Components
  MewnuAtoms get atoms => MewnuBuilder.of(this).designSystem.components.atoms;
  Container container() =>
      MewnuBuilder.of(this).designSystem.components.atoms.container();
  MewnuMolecules get molecules =>
      MewnuBuilder.of(this).designSystem.components.molecules;
  MewnuOrganisms get organisms =>
      MewnuBuilder.of(this).designSystem.components.organisms;
  MewnuTemplates get templates =>
      MewnuBuilder.of(this).designSystem.components.templates;

  /// Atoms
  MewnuGaps get gap => MewnuBuilder.of(this).designSystem.components.atoms.gap;
  MewnuPaintings get painting =>
      MewnuBuilder.of(this).designSystem.components.atoms.painting;
  MewnuListViews get listView =>
      MewnuBuilder.of(this).designSystem.components.atoms.listView;

  /// Paintings
  MewnuDecorations get decoration =>
      MewnuBuilder.of(this).designSystem.components.atoms.painting.decoration;
  MewnuPaddings get padding =>
      MewnuBuilder.of(this).designSystem.components.atoms.painting.padding;

  /// Molecules
  MewnuButtons get button =>
      MewnuBuilder.of(this).designSystem.components.molecules.button;

  /// Organisms
  MewnuAppBars get appBar =>
      MewnuBuilder.of(this).designSystem.components.organisms.appBar;

  /// Templates

  /// Pages
}
