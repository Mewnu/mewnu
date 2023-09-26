part of mewnu;

class MewnuListViews {
  MewnuListViews();

  ListView static({
    required List<Widget> children,
  }) {
    return ListView(
      children: children,
    );
  }

  ListView builder({
    int? itemCount,
  }) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return const Placeholder();
      },
    );
  }
}
