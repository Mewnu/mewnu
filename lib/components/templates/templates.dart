part of mewnu;

class Templates {
  Templates();

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
