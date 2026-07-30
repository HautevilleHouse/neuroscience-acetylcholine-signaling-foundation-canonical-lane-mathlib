import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

structure NeuromuscularJunction where
  motorNeuronTerminal : Type u
  muscleEndPlate : Type v
  synapticSignalTransmission : Prop
  endPlatePotential : Prop
  muscleContractionTrigger : Prop
  safetyFactor : Prop

structure NeuromuscularJunctionEvidence (N : NeuromuscularJunction) where
  synapticSignalTransmissionClosed : N.synapticSignalTransmission
  endPlatePotentialClosed : N.endPlatePotential
  muscleContractionTriggerClosed : N.muscleContractionTrigger
  safetyFactorClosed : N.safetyFactor

def NeuromuscularJunctionClosed (N : NeuromuscularJunction) : Prop :=
  N.synapticSignalTransmission ∧ N.endPlatePotential ∧ N.muscleContractionTrigger ∧ N.safetyFactor

theorem neuromuscular_junction_closed_from_evidence (N : NeuromuscularJunction) (E : NeuromuscularJunctionEvidence N) : NeuromuscularJunctionClosed N :=
  And.intro E.synapticSignalTransmissionClosed (And.intro E.endPlatePotentialClosed (And.intro E.muscleContractionTriggerClosed E.safetyFactorClosed))

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse