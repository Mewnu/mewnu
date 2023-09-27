part of mewnu;

class AtomicDesign {
  final Atoms atoms;
  final Molecules molecules;
  final Organisms organisms;
  final Templates templates;

  AtomicDesign()
      : atoms = Atoms(),
        molecules = Molecules(),
        organisms = Organisms(),
        templates = Templates();
}
