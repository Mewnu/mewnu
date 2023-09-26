library material;

import 'package:flutter/material.dart';

part 'design_system.dart';
part 'components/atomic_design.dart';
part 'components/atoms/atoms.dart';
part 'components/organisms/organisms.dart';
part 'components/molecules/molecules.dart';
part 'components/templates/templates.dart';
part 'theme/theme_data.dart';
part 'theme/data/painting.dart';
part 'theme/data/colors.dart';

class MaterialBuilder extends InheritedWidget {
  final MaterialDesignSystem designSystem;

  MaterialBuilder.router({
    super.key,
    String title = '',
    required RouterConfig<Object> routerConfig,
    required this.designSystem,
  }) : super(
          child: MaterialApp.router(
            title: title,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // colorScheme: designSystem.theme.colorScheme,
              scaffoldBackgroundColor: Colors.black,
              fontFamily: 'Lato',
              primarySwatch: Colors.yellow,
              brightness: Brightness.light,
            ),

            // designSystem.themeData,
            darkTheme: ThemeData(),
            // designSystem.darkThemeData,
            routerConfig: routerConfig,
          ),
        );

  static MaterialBuilder of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<MaterialBuilder>()
        as MaterialBuilder);
  }

  @override
  bool updateShouldNotify(MaterialBuilder oldWidget) {
    return designSystem != oldWidget.designSystem;
  }
}

extension BuildContextExtension on BuildContext {
  MaterialBuilder get material => MaterialBuilder.of(this);
  MaterialDesignSystem get designSystem =>
      MaterialBuilder.of(this).designSystem;
  MaterialColorsData get colors =>
      MaterialBuilder.of(this).designSystem.theme.colors;
  MaterialPaiting get painting =>
      MaterialBuilder.of(this).designSystem.theme.painting;
  MaterialAtomicDesign get components =>
      MaterialBuilder.of(this).designSystem.components;
  MaterialAtoms get atoms =>
      MaterialBuilder.of(this).designSystem.components.atoms;
  Container container() =>
      MaterialBuilder.of(this).designSystem.components.atoms.container();
  MaterialMolecules get molecules =>
      MaterialBuilder.of(this).designSystem.components.molecules;
  MaterialOrganisms get organisms =>
      MaterialBuilder.of(this).designSystem.components.organisms;
  MaterialTemplates get templates =>
      MaterialBuilder.of(this).designSystem.components.templates;
}
