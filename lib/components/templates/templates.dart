part of mewnu;

class MewnuTemplates {
  MewnuTemplates();

  material.Scaffold scaffold({
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? bottomNavigationBar,
  }) {
    return material.Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
