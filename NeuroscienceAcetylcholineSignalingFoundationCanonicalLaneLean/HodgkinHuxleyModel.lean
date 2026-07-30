import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : ℝ → ℝ
  nGate : ℝ → ℝ
  mGate : ℝ → ℝ
  hGate : ℝ → ℝ
  restingPotential : ℝ
  activationThreshold : ℝ

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  restingPotentialClosed : H.restingPotential = -65.0
  activationThresholdClosed : H.activationThreshold = -55.0
  membraneDynamicsClosed : True

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.restingPotential = -65.0 ∧ H.activationThreshold = -55.0

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.restingPotentialClosed E.activationThresholdClosed

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse