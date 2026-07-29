import ElectricalEngineeringElectromagneticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure SpinWaveSpectrumPackage where
  exchangeConstant : Prop
  anisotropyField : Prop
  dispersionRelation : Prop
  magnonFrequency : Prop

structure SpinWaveSpectrumEvidence (S : SpinWaveSpectrumPackage) where
  exchangeConstantClosed : S.exchangeConstant
  anisotropyFieldClosed : S.anisotropyField
  dispersionRelationClosed : S.dispersionRelation
  magnonFrequencyClosed : S.magnonFrequency

def SpinWaveSpectrumClosed (S : SpinWaveSpectrumPackage) : Prop :=
  S.exchangeConstant ∧ S.anisotropyField ∧ S.dispersionRelation ∧ S.magnonFrequency

theorem spin_wave_spectrum_closed_from_evidence (S : SpinWaveSpectrumPackage) (E : SpinWaveSpectrumEvidence S) : SpinWaveSpectrumClosed S := by
  exact And.intro E.exchangeConstantClosed (And.intro E.anisotropyFieldClosed (And.intro E.dispersionRelationClosed E.magnonFrequencyClosed))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse