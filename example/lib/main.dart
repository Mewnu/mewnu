import 'package:flutter/widgets.dart';
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
          durations: MewnuDurationsData.standard(),
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
      appBar: c.organisms.appBar(),
      body: c.atoms.container(
        decoration: c.paintings.boxDecoration(
          color: c.colorScheme?.background,
        ),
        child: c.atoms.listView.static(
          children: [
            c.atoms.padding(
              padding: c.paintings.edgeInsetsAll(8),
              child: c.atoms.container(
                decoration: c.paintings.boxDecoration(
                  color: c.colorScheme?.surface,
                ),
                child: c.atoms.container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
