import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure AcetylcholineSynapse where
  carrier : Type
  membranePotential : Type
  neurotransmitterRelease : Prop

structure AdmittedSynapticObject where
  synapse : AcetylcholineSynapse
  receptorActivation : Prop
  secondMessengerCascade : Prop
  conclusion : receptorActivation

structure AcetylcholineEndgameState where
  object : AdmittedSynapticObject

def AcetylcholineWitnessClosed (O : AdmittedSynapticObject) : Prop :=
  O.receptorActivation

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
