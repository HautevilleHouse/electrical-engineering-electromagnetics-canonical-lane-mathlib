import ElectricalEngineeringElectromagneticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type
  spinConfig : lattice → ℤ₂
  hamiltonian : (lattice → ℤ₂) → ℝ
  partitionFunction : (lattice → ℤ₂) → ℝ
  criticalTemperature : ℝ

structure IsingModelEvidence (I : IsingModelPackage) where
  hamiltonianClosed : I.hamiltonian ≠ (λ _ => 0)
  partitionFunctionClosed : I.partitionFunction ≠ (λ _ => 0)
  criticalTemperatureClosed : I.criticalTemperature > 0

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.hamiltonian ≠ (λ _ => 0) ∧ I.partitionFunction ≠ (λ _ => 0) ∧ I.criticalTemperature > 0

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) :
    IsingModelClosed I := by
  exact And.intro E.hamiltonianClosed
    (And.intro E.partitionFunctionClosed E.criticalTemperatureClosed)

def IsingModelBridge (A : AdmissibleClass) : Prop :=
  IsingModelClosed (──_)  -- Placeholder

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse
