import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure SpinWavePackage (A : AdmissibleClass) where
  dispersionRelation : Prop
  exchangeInteraction : Prop
  dipolarInteraction : Prop
  waveDamping : Prop

structure SpinWaveEvidence {A : AdmissibleClass} (S : SpinWavePackage A) where
  dispersionRelationClosed : S.dispersionRelation
  exchangeInteractionClosed : S.exchangeInteraction
  dipolarInteractionClosed : S.dipolarInteraction
  waveDampingClosed : S.waveDamping

def SpinWavesClosed {A : AdmissibleClass} (S : SpinWavePackage A) : Prop :=
  S.dispersionRelation ∧ S.exchangeInteraction ∧ S.dipolarInteraction ∧ S.waveDamping

theorem spin_waves_closed_from_evidence {A : AdmissibleClass} (S : SpinWavePackage A) (E : SpinWaveEvidence S) : SpinWavesClosed S := by
  exact And.intro E.dispersionRelationClosed (And.intro E.exchangeInteractionClosed (And.intro E.dipolarInteractionClosed E.waveDampingClosed))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse