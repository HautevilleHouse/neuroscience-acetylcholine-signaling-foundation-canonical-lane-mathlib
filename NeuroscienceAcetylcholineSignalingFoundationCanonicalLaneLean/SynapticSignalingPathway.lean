import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure SynapticSignalingPackage where
  presynapticRelease : Prop
  synapticCleftDiffusion : Prop
  postsynapticResponse : Prop
  signalTermination : Prop

structure SynapticSignalingEvidence (S : SynapticSignalingPackage) where
  presynapticReleaseClosed : S.presynapticRelease
  synapticCleftDiffusionClosed : S.synapticCleftDiffusion
  postsynapticResponseClosed : S.postsynapticResponse
  signalTerminationClosed : S.signalTermination

def SynapticSignalingClosed (S : SynapticSignalingPackage) : Prop :=
  S.presynapticRelease ∧ S.synapticCleftDiffusion ∧
  S.postsynapticResponse ∧ S.signalTermination

theorem synaptic_signaling_closed_from_evidence
    (S : SynapticSignalingPackage) (E : SynapticSignalingEvidence S) :
    SynapticSignalingClosed S := by
  exact And.intro E.presynapticReleaseClosed
    (And.intro E.synapticCleftDiffusionClosed
      (And.intro E.postsynapticResponseClosed E.signalTerminationClosed))

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
