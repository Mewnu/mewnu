part of mewnu;

class MewnuTemplates {
  MewnuTemplates();

  MewnuScaffold scaffold({
    PreferredSizeWidget? appBar,
    Widget? body,
  }) {
    return MewnuScaffold(
      appBar: appBar,
      body: body,
    );
  }
}

class MewnuScaffold extends material.Scaffold {
  const MewnuScaffold({
    super.key,
    super.appBar,
    super.body,
    super.bottomNavigationBar,
  });
}
