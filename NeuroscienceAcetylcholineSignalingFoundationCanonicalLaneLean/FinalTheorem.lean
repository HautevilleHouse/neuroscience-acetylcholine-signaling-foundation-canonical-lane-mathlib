import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

def ConstrainedAcetylcholineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_acetylcholine_endgame (A : AdmissibleClass) : ConstrainedAcetylcholineClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse