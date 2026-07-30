import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : ℕ → ℝ
  postsynapticActivity : ℕ → ℝ
  weightChange : ℝ
  learningRate : ℝ

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  correlationRule : (H.presynapticActivity 0 * H.postsynapticActivity 0) > 0
  weightUpdateClosed : H.weightChange = H.learningRate * (H.presynapticActivity 0 * H.postsynapticActivity 0)

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  (H.presynapticActivity 0 * H.postsynapticActivity 0) > 0 ∧
  H.weightChange = H.learningRate * (H.presynapticActivity 0 * H.postsynapticActivity 0)

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.correlationRule E.weightUpdateClosed

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse