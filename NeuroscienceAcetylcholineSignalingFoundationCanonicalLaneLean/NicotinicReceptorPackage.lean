import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.HodgkinHuxleyBridge

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure NicotinicReceptorSubunit where
  alphaSubunits : ℕ
  betaSubunits : ℕ
  gammaSubunit : Bool
  deltaSubunit : Bool
  epsilonSubunit : Bool

structure NicotinicReceptor (S : NicotinicReceptorSubunit) where
  pentamericStructure : Prop
  agonistBindingSites : ℕ
  ionChannelPermeable : Prop
  desensitizationRate : ℝ
  pentamericStructureTerm : pentamericStructure
  ionChannelPermeableTerm : ionChannelPermeable

structure NicotinicReceptorEvidence (S : NicotinicReceptorSubunit) (R : NicotinicReceptor S) where
  pentamericStructureClosed : R.pentamericStructure
  agonistBindingSitesClosed : R.agonistBindingSites = 2
  ionChannelPermeableClosed : R.ionChannelPermeable
  desensitizationRateClosed : R.desensitizationRate > 0

def NicotinicReceptorClosed (S : NicotinicReceptorSubunit) (R : NicotinicReceptor S) : Prop :=
  R.pentamericStructure ∧ (R.agonistBindingSites = 2) ∧ R.ionChannelPermeable ∧ (R.desensitizationRate > 0)

theorem nicotinic_receptor_closed_from_evidence (S : NicotinicReceptorSubunit) (R : NicotinicReceptor S)
    (E : NicotinicReceptorEvidence S R) : NicotinicReceptorClosed S R := by
  exact And.intro E.pentamericStructureClosed
    (And.intro E.agonistBindingSitesClosed
      (And.intro E.ionChannelPermeableClosed E.desensitizationRateClosed))

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse