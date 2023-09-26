part of mewnu;

class MewnuMolecules {
  MewnuMolecules();

  material.ElevatedButton elevatedButton({
    required void Function()? onPressed,
    required Widget? child,
  }) {
    return material.ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
