import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ElectricalEngineeringElectromagneticsCanonicalLaneLean

structure MagneticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MagneticAdmittedObject where
  space : MagneticSpace
  spontaneousMagnetization : Prop
  domainWallEnergy : Prop
  spinWaveDispersion : Prop
  conclusion : spontaneousMagnetization ∧ domainWallEnergy ∧ spinWaveDispersion

structure MagneticEndgameState where
  object : MagneticAdmittedObject

def MagneticWitnessClosed (O : MagneticAdmittedObject) : Prop :=
  O.conclusion

end ElectricalEngineeringElectromagneticsCanonicalLaneLean
end HautevilleHouse