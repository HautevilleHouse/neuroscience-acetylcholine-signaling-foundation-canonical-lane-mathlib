import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  naiChannelDynamics : Prop
  kChannelDynamics : Prop
  voltageClampData : Prop
  actionPotentialSimulation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance = 1.0
  sodiumConductanceClosed : H.sodiumConductance = 120.0
  potassiumConductanceClosed : H.potassiumConductance = 36.0
  leakConductanceClosed : H.leakConductance = 0.3
  naiChannelDynamicsClosed : H.naiChannelDynamics
  kChannelDynamicsClosed : H.kChannelDynamics
  voltageClampDataClosed : H.voltageClampData
  actionPotentialSimulationClosed : H.actionPotentialSimulation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance = 1.0 ∧ H.sodiumConductance = 120.0 ∧
  H.potassiumConductance = 36.0 ∧ H.leakConductance = 0.3 ∧
  H.naiChannelDynamics ∧ H.kChannelDynamics ∧
  H.voltageClampData ∧ H.actionPotentialSimulation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.sodiumConductanceClosed
      (And.intro E.potassiumConductanceClosed
        (And.intro E.leakConductanceClosed
          (And.intro E.naiChannelDynamicsClosed
            (And.intro E.kChannelDynamicsClosed
              (And.intro E.voltageClampDataClosed E.actionPotentialSimulationClosed))))))

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse