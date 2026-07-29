import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.domainWallEnergy

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse