part of material;

class MaterialMolecules {
  MaterialMolecules();

  ElevatedButton elevatedButton({
    required void Function()? onPressed,
    required Widget? child,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
