import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure MaxwellEquationsPackage where
  sourceFree : Prop
  noMagneticMonopole : Prop
  faradayLaw : Prop
  ampereLaw : Prop
  gaussElectric : Prop
  gaussMagnetic : Prop
  displacementCurrent : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  sourceFreeClosed : M.sourceFree
  noMagneticMonopoleClosed : M.noMagneticMonopole
  faradayLawClosed : M.faradayLaw
  ampereLawClosed : M.ampereLaw
  gaussElectricClosed : M.gaussElectric
  gaussMagneticClosed : M.gaussMagnetic
  displacementCurrentClosed : M.displacementCurrent

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.sourceFree ∧ M.noMagneticMonopole ∧ M.faradayLaw ∧
  M.ampereLaw ∧ M.gaussElectric ∧ M.gaussMagnetic ∧
  M.displacementCurrent

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence M) : MaxwellEquationsClosed M := by
  exact And.intro E.sourceFreeClosed
    (And.intro E.noMagneticMonopoleClosed
      (And.intro E.faradayLawClosed
        (And.intro E.ampereLawClosed
          (And.intro E.gaussElectricClosed
            (And.intro E.gaussMagneticClosed E.displacementCurrentClosed)))))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse