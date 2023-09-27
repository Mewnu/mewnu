part of mewnu;

class MewnuAppBars {
  MewnuAppBars();

  material.PreferredSizeWidget standard({
    Color? backgroundColor,
    Widget? leading,
    Widget? title,
    List<Widget>? actions,
  }) {
    return material.AppBar(
      backgroundColor: backgroundColor,
      leading: leading,
      title: title,
      actions: actions,
    );
  }

  material.SliverAppBar sliver({
    Widget? title,
  }) {
    return material.SliverAppBar(
      title: title,
    );
  }
}
