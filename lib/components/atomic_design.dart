part of mewnu;

class MewnuAtomicDesign {
  final MewnuAtoms atoms;
  final MewnuMolecules molecules;
  final MewnuOrganisms organisms;
  final MewnuTemplates templates;

  MewnuAtomicDesign()
      : atoms = MewnuAtoms(),
        molecules = MewnuMolecules(),
        organisms = MewnuOrganisms(),
        templates = MewnuTemplates();
}
