import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure ConstitutiveRelationsPackage where
  permittivity : Prop
  permeability : Prop
  conductivity : Prop
  linearMaterial : Prop
  isotropicMedium : Prop

structure ConstitutiveRelationsEvidence (C : ConstitutiveRelationsPackage) where
  permittivityClosed : C.permittivity
  permeabilityClosed : C.permeability
  conductivityClosed : C.conductivity
  linearMaterialClosed : C.linearMaterial
  isotropicMediumClosed : C.isotropicMedium

def ConstitutiveRelationsClosed (C : ConstitutiveRelationsPackage) : Prop :=
  C.permittivity ∧ C.permeability ∧ C.conductivity ∧
  C.linearMaterial ∧ C.isotropicMedium

theorem constitutive_relations_closed_from_evidence (C : ConstitutiveRelationsPackage)
    (E : ConstitutiveRelationsEvidence C) : ConstitutiveRelationsClosed C := by
  exact And.intro E.permittivityClosed
    (And.intro E.permeabilityClosed
      (And.intro E.conductivityClosed
        (And.intro E.linearMaterialClosed E.isotropicMediumClosed)))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse