part of material;

class MaterialAtomicDesign {
  final MaterialAtoms atoms;
  final MaterialMolecules molecules;
  final MaterialTemplates templates;
  final MaterialOrganisms organisms;

  MaterialAtomicDesign()
      : atoms = MaterialAtoms(),
        molecules = MaterialMolecules(),
        organisms = MaterialOrganisms(),
        templates = MaterialTemplates();
}
