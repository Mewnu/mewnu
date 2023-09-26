part of material;

class MaterialTemplates {
  MaterialTemplates();

  Scaffold scaffold({
    PreferredSizeWidget? appBar,
    Widget? body,
  }) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
