import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure NeuralFieldPackage where
  activationFunction : ℝ → ℝ
  connectivityKernel : ℝ → ℝ → ℝ
  externalInput : ℝ → ℝ
  fieldDynamics : ℝ → ℝ

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  stationaryState : N.fieldDynamics 0 = 0
  stabilityCondition : N.activationFunction 0 = 0
  kernelSymmetry : ∀ x y : ℝ, N.connectivityKernel x y = N.connectivityKernel y x

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.fieldDynamics 0 = 0 ∧ N.activationFunction 0 = 0 ∧
  ∀ x y : ℝ, N.connectivityKernel x y = N.connectivityKernel y x

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.stationaryState (And.intro E.stabilityCondition E.kernelSymmetry)

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse