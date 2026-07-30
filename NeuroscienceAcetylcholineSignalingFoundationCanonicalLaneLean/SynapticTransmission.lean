import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

structure SynapticTransmission where
  presynapticTerminal : Type u
  synapticCleft : Type v
  neurotransmitterRelease : Prop
  postsynapticReceptorBinding : Prop
  signalTermination : Prop
  quantalRelease : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmission) where
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  postsynapticReceptorBindingClosed : S.postsynapticReceptorBinding
  signalTerminationClosed : S.signalTermination
  quantalReleaseClosed : S.quantalRelease

def SynapticTransmissionClosed (S : SynapticTransmission) : Prop :=
  S.neurotransmitterRelease ∧ S.postsynapticReceptorBinding ∧ S.signalTermination ∧ S.quantalRelease

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmission) (E : SynapticTransmissionEvidence S) : SynapticTransmissionClosed S :=
  And.intro E.neurotransmitterReleaseClosed (And.intro E.postsynapticReceptorBindingClosed (And.intro E.signalTerminationClosed E.quantalReleaseClosed))

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse