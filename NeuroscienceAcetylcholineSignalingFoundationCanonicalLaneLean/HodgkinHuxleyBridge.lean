import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ
  nGate : ℝ
  mGate : ℝ
  hGate : ℝ
  conductanceNa : ℝ
  conductanceK : ℝ
  conductanceL : ℝ
  reversalNa : ℝ
  reversalK : ℝ
  reversalL : ℝ
  stimulus : ℝ

structure HodgkinHuxleySystem (H : HodgkinHuxleyModel) where
  potentialODE : Prop
  nGateODE : Prop
  mGateODE : Prop
  hGateODE : Prop
  initialConditions : H.membranePotential = -65 ∧ H.nGate = 0.3177 ∧ H.mGate = 0.0529 ∧ H.hGate = 0.5961
  actionPotentialGenerated : Prop
  actionPotentialGeneratedTerm : actionPotentialGenerated

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) (S : HodgkinHuxleySystem H) where
  potentialODEClosed : S.potentialODE
  nGateODEClosed : S.nGateODE
  mGateODEClosed : S.mGateODE
  hGateODEClosed : S.hGateODE
  initialConditionsClosed : S.initialConditions
  actionPotentialGeneratedClosed : S.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) (S : HodgkinHuxleySystem H) : Prop :=
  S.potentialODE ∧ S.nGateODE ∧ S.mGateODE ∧ S.hGateODE ∧ S.initialConditions ∧ S.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (S : HodgkinHuxleySystem H)
    (E : HodgkinHuxleyEvidence H S) : HodgkinHuxleyClosed H S := by
  exact And.intro E.potentialODEClosed
    (And.intro E.nGateODEClosed
      (And.intro E.mGateODEClosed
        (And.intro E.hGateODEClosed
          (And.intro E.initialConditionsClosed E.actionPotentialGeneratedClosed))))

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse