import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

structure AcetylcholineReceptor where
  receptorType : Type u
  subunitComposition : Type v
  ionSelectivity : Prop
  ligandBindingDomain : Prop
  channelGatingMechanism : Prop
  desensitizationProperty : Prop

structure AcetylcholineReceptorEvidence (R : AcetylcholineReceptor) where
  ionSelectivityClosed : R.ionSelectivity
  ligandBindingDomainClosed : R.ligandBindingDomain
  channelGatingMechanismClosed : R.channelGatingMechanism
  desensitizationPropertyClosed : R.desensitizationProperty

def AcetylcholineReceptorClosed (R : AcetylcholineReceptor) : Prop :=
  R.ionSelectivity ∧ R.ligandBindingDomain ∧ R.channelGatingMechanism ∧ R.desensitizationProperty

theorem acetylcholinereceptor_closed_from_evidence (R : AcetylcholineReceptor) (E : AcetylcholineReceptorEvidence R) : AcetylcholineReceptorClosed R :=
  And.intro E.ionSelectivityClosed (And.intro E.ligandBindingDomainClosed (And.intro E.channelGatingMechanismClosed E.desensitizationPropertyClosed))

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse