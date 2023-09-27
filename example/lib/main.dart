import 'package:example/components/atoms/card.dart';
import 'package:flutter/material.dart';
import 'package:mewnu/mewnu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MewnuBuilder.static(
      title: 'Mewnu Example',
      home: const HomePage(),
      designSystem: MewnuDesignSystem(
        lightTheme: MewnuThemeData.light(
          colors: MewnuColorsData(
            primarySwatch: MewnuColors.blue,
          ),
          icons: MewnuIconsData.standard(),
          images: MewnuImagesData.standard(),
          radius: const MewnuRadiusData.standard(),
          shadows: MewnuShadowsData.standard(),
          sizes: MewnuSizesData.standard(),
          spacings: MewnuSpacingsData.standard(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context;

    return c.templates.scaffold(
      appBar: c.appBar.standard(),
      body: c.atoms.container(
        decoration: c.decoration.boxDecoration(
          color: c.colorScheme?.background,
        ),
        child: c.listView.static(
          children: [
            c.padding.medium(
              child: c.atoms.container(
                decoration: c.decoration.boxDecoration(
                  color: c.colorScheme?.surface,
                ),
                child: c.atoms.container(
                  child: c.atoms
                      .card(
                        child: c.atoms.container(
                          height: 200,
                          decoration: c.painting.decoration.boxDecoration(
                            color: c.theme.colors?.primarySwatch,
                          ),
                          child: c.atoms.flex.column(
                            children: [
                              c.atoms.gap.large(),
                              c.atoms.painting.padding.extraLarge(
                                child: c.atoms.text.bodyLarge('EXAMPLE'),
                              ),
                            ],
                          ),
                        ),
                      )
                      .elevated(elevation: 100)
                      .outlined(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
