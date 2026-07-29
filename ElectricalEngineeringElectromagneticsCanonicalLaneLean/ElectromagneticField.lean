import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure ElectromagneticFieldPackage where
  electricField : Type u
  magneticField : Type v
  chargeDensity : Type w
  currentDensity : Type x
  fieldRegularity : Prop
  sourceTermsDefined : Prop

structure ElectromagneticFieldEvidence (F : ElectromagneticFieldPackage) where
  fieldRegularityClosed : F.fieldRegularity
  sourceTermsDefinedClosed : F.sourceTermsDefined

def ElectromagneticFieldClosed (F : ElectromagneticFieldPackage) : Prop :=
  F.fieldRegularity ∧ F.sourceTermsDefined

theorem electromagnetic_field_closed_from_evidence (F : ElectromagneticFieldPackage)
    (E : ElectromagneticFieldEvidence F) : ElectromagneticFieldClosed F := by
  exact And.intro E.fieldRegularityClosed E.sourceTermsDefinedClosed

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse