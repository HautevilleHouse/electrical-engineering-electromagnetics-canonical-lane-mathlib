import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure IsingModelPackage where
  latticeType : Type
  spinConfiguration : latticeType → ℤ₂
  couplingConstant : ℝ
  externalField : ℝ
  hamiltonian : (latticeType → ℤ₂) → ℝ
  partitionFunction : ℝ
  criticalTemperature : ℝ
  phaseTransitionExists : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  phaseTransitionExistsClosed : I.phaseTransitionExists

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.phaseTransitionExists

theorem ising_model_closed_from_evidence
    (I : IsingModelPackage) (E : IsingModelEvidence I) :
    IsingModelClosed I := by
  exact E.phaseTransitionExistsClosed

theorem ising_model_bridge (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse