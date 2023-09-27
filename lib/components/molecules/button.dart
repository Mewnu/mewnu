part of mewnu;

class MewnuButtons {
  MewnuButtons();

  material.ElevatedButton elevated({
    required void Function()? onPressed,
    required Widget child,
  }) {
    return material.ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }

  material.TextButton text({
    required void Function()? onPressed,
    required Widget child,
  }) {
    return material.TextButton(
      onPressed: onPressed,
      child: child,
    );
  }

  material.OutlinedButton outlined({
    required void Function()? onPressed,
    required Widget child,
  }) {
    return material.OutlinedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
