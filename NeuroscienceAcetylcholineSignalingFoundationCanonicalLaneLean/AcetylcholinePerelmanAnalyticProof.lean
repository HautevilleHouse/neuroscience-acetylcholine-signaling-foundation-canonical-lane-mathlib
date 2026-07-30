import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.AcetylcholinePerelmanRoute

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure CurvatureAnalyticCertificate (G : HodgkinHuxleyCurvaturePackage) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs
  curvatureEvidence : RiemannianCurvatureEvidence G

def CurvatureAnalyticCertificateClosed {G : HodgkinHuxleyCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : Prop :=
  C.riemannTensorSymmetries ∧
  C.bianchiIdentities ∧
  C.ricciContractionLaw ∧
  C.scalarTraceLaw ∧
  C.curvatureEvolutionInputs ∧
  RiemannianCurvatureClosed G

theorem curvature_analytic_certificate_closed
    {G : HodgkinHuxleyCurvaturePackage} (C : CurvatureAnalyticCertificate G) :
    CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed
          (And.intro C.curvatureEvolutionInputsClosed
            (riemannian_curvature_closed_from_evidence G C.curvatureEvidence)))))

structure HamiltonDeTurckCertificate {G : HodgkinHuxleyCurvaturePackage}
    (F : AcetylcholinePDEPackage G) where
  gaugeChoice : Prop
  stronglyParabolicReduction : Prop
  deTurckVectorField : Prop
  pullbackRecoversAcetylcholineFlow : Prop
  uniquenessCompatibility : Prop
  gaugeChoiceClosed : gaugeChoice
  stronglyParabolicReductionClosed : stronglyParabolicReduction
  deTurckVectorFieldClosed : deTurckVectorField
  pullbackRecoversAcetylcholineFlowClosed : pullbackRecoversAcetylcholineFlow
  uniquenessCompatibilityClosed : uniquenessCompatibility
  flowEvidence : AcetylcholinePDEEvidence F

def HamiltonDeTurckCertificateClosed {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G} (H : HamiltonDeTurckCertificate F) : Prop :=
  H.gaugeChoice ∧
  H.stronglyParabolicReduction ∧
  H.deTurckVectorField ∧
  H.pullbackRecoversAcetylcholineFlow ∧
  H.uniquenessCompatibility ∧
  AcetylcholinePDEClosed F

theorem hamilton_de_turck_certificate_closed
    {G : HodgkinHuxleyCurvaturePackage} {F : AcetylcholinePDEPackage G}
    (H : HamiltonDeTurckCertificate F) :
    HamiltonDeTurckCertificateClosed H := by
  exact And.intro H.gaugeChoiceClosed
    (And.intro H.stronglyParabolicReductionClosed
      (And.intro H.deTurckVectorFieldClosed
        (And.intro H.pullbackRecoversAcetylcholineFlowClosed
          (And.intro H.uniquenessCompatibilityClosed
            (acetylcholine_pde_closed_from_evidence F H.flowEvidence)))))

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
