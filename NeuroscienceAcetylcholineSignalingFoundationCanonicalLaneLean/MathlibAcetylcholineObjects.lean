import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure AcetylcholineNeuron where
  carrier : Type u
  morphology : TopologicalSpace carrier
  electrophysiology : Prop

structure AcetylcholineAdmittedObject where
  neuron : AcetylcholineNeuron
  receptorExpression : Prop
  signalingFunction : Prop
  conclusion : signalingFunction

structure AcetylcholineEndgameState where
  object : AcetylcholineAdmittedObject

def AcetylcholineWitnessClosed (O : AcetylcholineAdmittedObject) : Prop :=
  O.signalingFunction

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse