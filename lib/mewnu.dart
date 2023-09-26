library mewnu;

import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'components/atoms/container.dart';

part 'components/atomic_design.dart';
part 'components/atoms/atoms.dart';
part 'components/atoms/list_view.dart';
part 'components/atoms/text.dart';
part 'components/atoms/padding.dart';
part 'components/atoms/button.dart';
part 'components/atoms/card.dart';
part 'components/atoms/gap.dart';
part 'components/atoms/icon.dart';
part 'components/atoms/painting.dart';
part 'components/molecules/molecules.dart';
part 'components/organisms/organisms.dart';
part 'components/templates/templates.dart';
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
  MewnuBuilder get mewnu => MewnuBuilder.of(this);
  MewnuDesignSystem get designSystem => MewnuBuilder.of(this).designSystem;
  MewnuThemeData get theme => MewnuBuilder.of(this).designSystem.theme;
  material.ColorScheme? get colorScheme =>
      MewnuBuilder.of(this).designSystem.theme?.colorScheme;
  MewnuPaitings get paintings =>
      MewnuBuilder.of(this).designSystem.components.atoms.painting;
  MewnuAtomicDesign get components =>
      MewnuBuilder.of(this).designSystem.components;
  MewnuAtoms get atoms => MewnuBuilder.of(this).designSystem.components.atoms;
  Container container() =>
      MewnuBuilder.of(this).designSystem.components.atoms.container();
  MewnuMolecules get molecules =>
      MewnuBuilder.of(this).designSystem.components.molecules;
  MewnuOrganisms get organisms =>
      MewnuBuilder.of(this).designSystem.components.organisms;
  MewnuTemplates get templates =>
      MewnuBuilder.of(this).designSystem.components.templates;
}
