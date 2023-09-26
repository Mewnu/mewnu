part of mewnu;

class MewnuAtoms {
  final MewnuPaitings painting;
  final MewnuButtons button;
  final MewnuGaps gap;
  final MewnuListViews listView;

  MewnuAtoms()
      : painting = MewnuPaitings(),
        gap = MewnuGaps(),
        listView = MewnuListViews(),
        button = MewnuButtons();

  MewnuContainer container({
    BoxDecoration? decoration,
    Widget? child,
  }) {
    return MewnuContainer(
      decoration: decoration,
      child: child,
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

  MewnuCard card({
    Widget? child,
  }) {
    return MewnuCard(
      child: child,
    );
  }
}
