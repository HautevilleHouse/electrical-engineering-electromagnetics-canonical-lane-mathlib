import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure WavePropagationPackage where
  waveEquation : Prop
  phaseVelocity : Prop
  groupVelocity : Prop
  dispersionRelation : Prop
  polarization : Prop

structure WavePropagationEvidence (W : WavePropagationPackage) where
  waveEquationClosed : W.waveEquation
  phaseVelocityClosed : W.phaseVelocity
  groupVelocityClosed : W.groupVelocity
  dispersionRelationClosed : W.dispersionRelation
  polarizationClosed : W.polarization

def WavePropagationClosed (W : WavePropagationPackage) : Prop :=
  W.waveEquation ∧ W.phaseVelocity ∧ W.groupVelocity ∧
  W.dispersionRelation ∧ W.polarization

theorem wave_propagation_closed_from_evidence (W : WavePropagationPackage)
    (E : WavePropagationEvidence W) : WavePropagationClosed W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.phaseVelocityClosed
      (And.intro E.groupVelocityClosed
        (And.intro E.dispersionRelationClosed E.polarizationClosed)))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse