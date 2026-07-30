import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AChSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AChAdmittedObject where
  space : AChSpace
  receptorDensity : Prop
  vesicleRelease : Prop
  postsynapticResponse : Prop
  conclusion : receptorDensity ∧ vesicleRelease ∧ postsynapticResponse

structure AChEndgameState where
  object : AChAdmittedObject

def AChWitnessClosed (O : AChAdmittedObject) : Prop :=
  O.receptorDensity ∧ O.vesicleRelease ∧ O.postsynapticResponse

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse