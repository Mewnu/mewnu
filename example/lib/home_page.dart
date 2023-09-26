import 'package:flutter/material.dart';
import 'package:mewnu/mewnu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return context.templates.scaffold(
      appBar: context.organisms.appBar(),
      body: context.atoms.container(
        decoration: context.painting.boxDecoration(
          color: context.colors.blue,
        ),
        child: context.atoms.listView(
          children: [
            context.atoms.padding(
              padding: context.painting.edgeInsetsAll(8),
              child: context.atoms.container(
                decoration: context.painting.boxDecoration(
                  color: context.colors.black,
                ),
                child: context.atoms.container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
