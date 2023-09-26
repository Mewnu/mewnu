part of mewnu;

class MewnuOrganisms {
  MewnuOrganisms();

  material.AppBar appBar({
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
}
