part of material;

class MaterialAtoms {
  MaterialAtoms();

  Container container({
    BoxDecoration? decoration,
    Widget? child,
  }) {
    return Container(
      decoration: decoration,
      child: child,
    );
  }

  ListView listView({
    required List<Widget> children,
  }) {
    return ListView(
      children: children,
    );
  }

  Padding padding({
    required EdgeInsets padding,
    Widget? child,
  }) {
    return Padding(
      padding: padding,
      child: child,
    );
  }
}
