import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure AcetylcholineReceptorPackage where
  receptorType : Type u
  ligandBinding : Prop
  channelGating : Prop
  ionSelectivity : Prop
  desensitization : Prop

structure AcetylcholineReceptorEvidence (R : AcetylcholineReceptorPackage) where
  ligandBindingClosed : R.ligandBinding
  channelGatingClosed : R.channelGating
  ionSelectivityClosed : R.ionSelectivity
  desensitizationClosed : R.desensitization

def AcetylcholineReceptorClosed (R : AcetylcholineReceptorPackage) : Prop :=
  R.ligandBinding ∧ R.channelGating ∧ R.ionSelectivity ∧ R.desensitization

theorem acetylcholine_receptor_closed_from_evidence
    (R : AcetylcholineReceptorPackage) (E : AcetylcholineReceptorEvidence R) :
    AcetylcholineReceptorClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.channelGatingClosed
      (And.intro E.ionSelectivityClosed E.desensitizationClosed))

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
