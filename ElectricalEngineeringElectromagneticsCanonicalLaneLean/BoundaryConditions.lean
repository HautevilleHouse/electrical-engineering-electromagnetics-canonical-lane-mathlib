import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure BoundaryConditionsPackage where
  continuityTangentialE : Prop
  continuityNormalB : Prop
  jumpTangentialH : Prop
  jumpNormalD : Prop
  perfectConductorSurface : Prop

structure BoundaryConditionsEvidence (B : BoundaryConditionsPackage) where
  continuityTangentialEClosed : B.continuityTangentialE
  continuityNormalBClosed : B.continuityNormalB
  jumpTangentialHClosed : B.jumpTangentialH
  jumpNormalDClosed : B.jumpNormalD
  perfectConductorSurfaceClosed : B.perfectConductorSurface

def BoundaryConditionsClosed (B : BoundaryConditionsPackage) : Prop :=
  B.continuityTangentialE ∧ B.continuityNormalB ∧
  B.jumpTangentialH ∧ B.jumpNormalD ∧
  B.perfectConductorSurface

theorem boundary_conditions_closed_from_evidence (B : BoundaryConditionsPackage)
    (E : BoundaryConditionsEvidence B) : BoundaryConditionsClosed B := by
  exact And.intro E.continuityTangentialEClosed
    (And.intro E.continuityNormalBClosed
      (And.intro E.jumpTangentialHClosed
        (And.intro E.jumpNormalDClosed E.perfectConductorSurfaceClosed)))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse