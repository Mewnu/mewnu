library mewnu;

import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart' as gap;
import 'package:flutter_svg/flutter_svg.dart';

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

class MewnuApp extends InheritedWidget {
  final DesignSystem designSystem;

  MewnuApp.static({
    super.key,
    required String title,
    required Widget home,
    required this.designSystem,
  }) : super(
          child: material.MaterialApp(
            title: title,
            debugShowCheckedModeBanner: false,
            theme: material.ThemeData(
              scaffoldBackgroundColor:
                  designSystem.lightTheme?.colors?.scaffoldBackgroundColor,
              typography: designSystem.lightTheme?.typographies?.typography,
              fontFamily: designSystem.lightTheme?.typographies?.fontFamily,
              useMaterial3: designSystem.lightTheme?.useMaterial3,
              brightness: designSystem.lightTheme?.brightness,
              primarySwatch: designSystem.lightTheme?.colors?.primarySwatch,
              colorScheme: designSystem.lightTheme?.colorScheme,
              textTheme: designSystem.lightTheme?.typographies,
            ),
            darkTheme: material.ThemeData(
              scaffoldBackgroundColor:
                  designSystem.darkTheme?.colors?.scaffoldBackgroundColor,
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

  MewnuApp.router({
    super.key,
    required String title,
    required RouterConfig<Object> routerConfig,
    required this.designSystem,
  }) : super(
          child: material.MaterialApp.router(
            title: title,
            debugShowCheckedModeBanner: false,
            theme: material.ThemeData(
              scaffoldBackgroundColor:
                  designSystem.lightTheme?.colors?.scaffoldBackgroundColor,
              typography: designSystem.lightTheme?.typographies?.typography,
              fontFamily: designSystem.lightTheme?.typographies?.fontFamily,
              useMaterial3: designSystem.lightTheme?.useMaterial3,
              brightness: designSystem.lightTheme?.brightness,
              primarySwatch: designSystem.lightTheme?.colors?.primarySwatch,
              colorScheme: designSystem.lightTheme?.colorScheme,
              textTheme: designSystem.lightTheme?.typographies,
            ),
            darkTheme: material.ThemeData(
              scaffoldBackgroundColor:
                  designSystem.darkTheme?.colors?.scaffoldBackgroundColor,
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

  static MewnuApp of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<MewnuApp>() as MewnuApp);
  }

  @override
  bool updateShouldNotify(MewnuApp oldWidget) {
    return designSystem != oldWidget.designSystem;
  }
}

extension BuildContextExtension on BuildContext {
  /// Builder
  MewnuApp get mewnu => MewnuApp.of(this);
  DesignSystem get designSystem => MewnuApp.of(this).designSystem;

  /// DesignSystem
  ThemeData get theme => MewnuApp.of(this).designSystem.theme;
  AtomicDesign get components => MewnuApp.of(this).designSystem.components;

  /// ThemeData
  IconsData get icons => MewnuApp.of(this).designSystem.theme.icons;
  ColorsData? get colors => MewnuApp.of(this).designSystem.theme.colors;
  ColorSchemeData? get colorScheme =>
      MewnuApp.of(this).designSystem.theme.colorScheme;
  TypographiesData? get typographies =>
      MewnuApp.of(this).designSystem.theme.typographies;
  RadiusData? get radius => MewnuApp.of(this).designSystem.theme.radius;
  SpacingsData? get spacings => MewnuApp.of(this).designSystem.theme.spacings;
  ShadowsData? get shadows => MewnuApp.of(this).designSystem.theme.shadows;
  DurationsData? get durations =>
      MewnuApp.of(this).designSystem.theme.durations;
  ImagesData? get images => MewnuApp.of(this).designSystem.theme.images;
  SizesData? get sizes => MewnuApp.of(this).designSystem.theme.sizes;

  /// Components
  Atoms get atoms => MewnuApp.of(this).designSystem.components.atoms;
  Container container() =>
      MewnuApp.of(this).designSystem.components.atoms.container();
  Molecules get molecules =>
      MewnuApp.of(this).designSystem.components.molecules;
  Organisms get organisms =>
      MewnuApp.of(this).designSystem.components.organisms;
  Templates get templates =>
      MewnuApp.of(this).designSystem.components.templates;

  /// Atoms
  Gaps get gap => MewnuApp.of(this).designSystem.components.atoms.gap;
  Paintings get painting =>
      MewnuApp.of(this).designSystem.components.atoms.painting;
  ListViews get listView =>
      MewnuApp.of(this).designSystem.components.atoms.listView;

  /// Paintings
  Decorations get decoration =>
      MewnuApp.of(this).designSystem.components.atoms.painting.decoration;
  Paddings get padding =>
      MewnuApp.of(this).designSystem.components.atoms.painting.padding;

  /// Molecules
  Buttons get button =>
      MewnuApp.of(this).designSystem.components.molecules.button;

  /// Organisms
  AppBars get appBar =>
      MewnuApp.of(this).designSystem.components.organisms.appBar;

  /// Templates

  /// Pages
}
