part of mewnu;

extension ScaffoldExtension on material.Scaffold {
  material.Scaffold copyWith({
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? bottomNavigationBar,
  }) {
    return material.Scaffold(
      appBar: appBar ?? this.appBar,
      body: body ?? this.body,
      bottomNavigationBar: bottomNavigationBar ?? this.bottomNavigationBar,
    );
  }
}
