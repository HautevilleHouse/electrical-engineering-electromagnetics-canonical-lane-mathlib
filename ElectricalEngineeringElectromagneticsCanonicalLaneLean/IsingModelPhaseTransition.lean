import ElectricalEngineeringElectromagneticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure IsingModelPhaseTransitionPackage where
  spinLattice : Prop
  couplingConstant : Prop
  temperature : Prop
  criticalTemperature : Prop
  spontaneousMagnetization : Prop

structure IsingModelPhaseTransitionEvidence (I : IsingModelPhaseTransitionPackage) where
  spinLatticeClosed : I.spinLattice
  couplingConstantClosed : I.couplingConstant
  temperatureClosed : I.temperature
  criticalTemperatureClosed : I.criticalTemperature
  spontaneousMagnetizationClosed : I.spontaneousMagnetization

def IsingModelPhaseTransitionClosed (I : IsingModelPhaseTransitionPackage) : Prop :=
  I.spinLattice ∧ I.couplingConstant ∧ I.temperature ∧ I.criticalTemperature ∧ I.spontaneousMagnetization

theorem ising_model_phase_transition_closed_from_evidence (I : IsingModelPhaseTransitionPackage) (E : IsingModelPhaseTransitionEvidence I) : IsingModelPhaseTransitionClosed I := by
  exact And.intro E.spinLatticeClosed (And.intro E.couplingConstantClosed (And.intro E.temperatureClosed (And.intro E.criticalTemperatureClosed E.spontaneousMagnetizationClosed)))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse