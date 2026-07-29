import ElectricalEngineeringElectromagneticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure ExchangeInteractionPackage where
  nearestNeighborCoupling : Prop
  exchangeIntegral : Prop
  spinOperator : Prop
  heisenbergHamiltonian : Prop

structure ExchangeInteractionEvidence (E : ExchangeInteractionPackage) where
  nearestNeighborCouplingClosed : E.nearestNeighborCoupling
  exchangeIntegralClosed : E.exchangeIntegral
  spinOperatorClosed : E.spinOperator
  heisenbergHamiltonianClosed : E.heisenbergHamiltonian

def ExchangeInteractionClosed (E : ExchangeInteractionPackage) : Prop :=
  E.nearestNeighborCoupling ∧ E.exchangeIntegral ∧ E.spinOperator ∧ E.heisenbergHamiltonian

theorem exchange_interaction_closed_from_evidence (E : ExchangeInteractionPackage) (Ev : ExchangeInteractionEvidence E) : ExchangeInteractionClosed E := by
  exact And.intro Ev.nearestNeighborCouplingClosed (And.intro Ev.exchangeIntegralClosed (And.intro Ev.spinOperatorClosed Ev.heisenbergHamiltonianClosed))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse