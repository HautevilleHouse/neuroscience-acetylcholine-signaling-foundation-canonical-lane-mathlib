import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

structure HodgkinHuxleyDynamics where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakChannel : Type x
  capacitance : Prop
  conductanceEquations : Prop
  actionPotentialPropagation : Prop

structure HodgkinHuxleyDynamicsEvidence (D : HodgkinHuxleyDynamics) where
  capacitanceClosed : D.capacitance
  conductanceEquationsClosed : D.conductanceEquations
  actionPotentialPropagationClosed : D.actionPotentialPropagation

def HodgkinHuxleyDynamicsClosed (D : HodgkinHuxleyDynamics) : Prop :=
  D.capacitance ∧ D.conductanceEquations ∧ D.actionPotentialPropagation

theorem hodgkin_huxley_dynamics_closed_from_evidence (D : HodgkinHuxleyDynamics) (E : HodgkinHuxleyDynamicsEvidence D) : HodgkinHuxleyDynamicsClosed D :=
  And.intro E.capacitanceClosed (And.intro E.conductanceEquationsClosed E.actionPotentialPropagationClosed)

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse