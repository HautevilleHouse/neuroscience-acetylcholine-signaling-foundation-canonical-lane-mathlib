import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

structure AdmissibleClass where
  object : AcetylcholineReceptor
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (AcetylcholineReceptorClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse