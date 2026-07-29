import ElectricalEngineeringElectromagneticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure MagneticDomainWallPackage where
  exchangeEnergyDensity : Prop
  anisotropyEnergyDensity : Prop
  wallWidth : Prop
  wallEnergy : Prop

structure MagneticDomainWallEvidence (M : MagneticDomainWallPackage) where
  exchangeEnergyDensityClosed : M.exchangeEnergyDensity
  anisotropyEnergyDensityClosed : M.anisotropyEnergyDensity
  wallWidthClosed : M.wallWidth
  wallEnergyClosed : M.wallEnergy

def MagneticDomainWallClosed (M : MagneticDomainWallPackage) : Prop :=
  M.exchangeEnergyDensity ∧ M.anisotropyEnergyDensity ∧ M.wallWidth ∧ M.wallEnergy

theorem magnetic_domain_wall_closed_from_evidence (M : MagneticDomainWallPackage) (E : MagneticDomainWallEvidence M) : MagneticDomainWallClosed M := by
  exact And.intro E.exchangeEnergyDensityClosed (And.intro E.anisotropyEnergyDensityClosed (And.intro E.wallWidthClosed E.wallEnergyClosed))

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse