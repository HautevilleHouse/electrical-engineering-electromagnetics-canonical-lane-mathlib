import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringElectromagneticsCanonicalLaneLean.MaxwellEquations
import ElectricalEngineeringElectromagneticsCanonicalLaneLean.ElectromagneticField
import ElectricalEngineeringElectromagneticsCanonicalLaneLean.WavePropagation
import ElectricalEngineeringElectromagneticsCanonicalLaneLean.BoundaryConditions
import ElectricalEngineeringElectromagneticsCanonicalLaneLean.ConstitutiveRelations

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MaxwellEquationsClosed A.maxwell ∧ ElectromagneticFieldClosed A.field ∧
  WavePropagationClosed A.wave ∧ BoundaryConditionsClosed A.boundary ∧
  ConstitutiveRelationsClosed A.constitutive

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  let M := A.maxwellEvidence
  let F := A.fieldEvidence
  let W := A.waveEvidence
  let B := A.boundaryEvidence
  let C := A.constitutiveEvidence
  And.intro (maxwell_equations_closed_from_evidence A.maxwell M)
    (And.intro (electromagnetic_field_closed_from_evidence A.field F)
      (And.intro (wave_propagation_closed_from_evidence A.wave W)
        (And.intro (boundary_conditions_closed_from_evidence A.boundary B)
          (constitutive_relations_closed_from_evidence A.constitutive C))))

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedElectromagneticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_electromagnetic_endgame (A : AdmissibleClass) :
    ConstrainedElectromagneticClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse