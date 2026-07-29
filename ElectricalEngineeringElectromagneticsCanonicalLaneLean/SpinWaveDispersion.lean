import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeConstant : ℝ
  saturationMagnetization : ℝ
  appliedField : ℝ
  waveVector : ℝ³
  frequency : ℝ
  dispersionRelation : ℝ → ℝ³ → ℝ
  exchangeTerm : ℝ
  dipolarTerm : ℝ
  anisotropyTerm : ℝ
  dampingTerm : ℝ
  dispersionRelationHolds : Prop

structure SpinWaveDispersionEvidence (S : SpinWaveDispersionPackage) where
  dispersionRelationHoldsClosed : S.dispersionRelationHolds

def SpinWaveDispersionClosed (S : SpinWaveDispersionPackage) : Prop :=
  S.dispersionRelationHolds

theorem spin_wave_dispersion_closed_from_evidence
    (S : SpinWaveDispersionPackage) (E : SpinWaveDispersionEvidence S) :
    SpinWaveDispersionClosed S := by
  exact E.dispersionRelationHoldsClosed

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse