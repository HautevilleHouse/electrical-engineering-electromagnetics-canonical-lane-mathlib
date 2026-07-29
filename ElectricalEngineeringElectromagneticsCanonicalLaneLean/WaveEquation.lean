import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure WaveEquationPackage where
  waveSpeed : ℝ
  sourceTerm : Type u
  initialConditions : Prop
  boundaryConditions : Prop
  dAlembertSolution : Prop
  greenFunction : Prop

structure WaveEquationEvidence (W : WaveEquationPackage) where
  initialConditionsClosed : W.initialConditions
  boundaryConditionsClosed : W.boundaryConditions
  dAlembertSolutionClosed : W.dAlembertSolution
  greenFunctionClosed : W.greenFunction

def WaveEquationClosed (W : WaveEquationPackage) : Prop :=
  W.initialConditions ∧ W.boundaryConditions ∧ W.dAlembertSolution ∧ W.greenFunction

theorem wave_equation_closed_from_evidence (W : WaveEquationPackage) (E : WaveEquationEvidence W) :
    WaveEquationClosed W :=
  exact And.intro E.initialConditionsClosed (And.intro E.boundaryConditionsClosed (And.intro E.dAlembertSolutionClosed E.greenFunctionClosed))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse
