part of mewnu;

class ListViews {
  ListViews();

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
