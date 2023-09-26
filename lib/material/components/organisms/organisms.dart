part of material;

class MaterialOrganisms {
  MaterialOrganisms();

  AppBar appBar({
    Color? backgroundColor,
    Widget? leading,
    Widget? title,
    List<Widget>? actions,
  }) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: leading,
      title: title,
      actions: actions,
    );
  }
}
