import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.AcetylcholinePerelmanAnalyticProof

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : HodgkinHuxleyCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : RiemannianCurvatureClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : HodgkinHuxleyCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := riemannian_curvature_closed_from_evidence G C.curvatureEvidence
  }

structure HamiltonDeTurckEvidenceTerms {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G} (H : HamiltonDeTurckCertificate F) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversAcetylcholineFlow : H.pullbackRecoversAcetylcholineFlow
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : AcetylcholinePDEClosed F

def HamiltonDeTurckCertificate.evidenceTerms {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G} (H : HamiltonDeTurckCertificate F) :
    HamiltonDeTurckEvidenceTerms H :=
  {
    gaugeChoice := H.gaugeChoiceClosed
    stronglyParabolicReduction := H.stronglyParabolicReductionClosed
    deTurckVectorField := H.deTurckVectorFieldClosed
    pullbackRecoversAcetylcholineFlow := H.pullbackRecoversAcetylcholineFlowClosed
    uniquenessCompatibility := H.uniquenessCompatibilityClosed
    flowClosed := acetylcholine_pde_closed_from_evidence F H.flowEvidence
  }

structure ShortTimeEvidenceTerms {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G} {S : ShortTimeExistencePackage F}
    (C : ShortTimeAnalyticCertificate S) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed S

def ShortTimeAnalyticCertificate.evidenceTerms {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G} {S : ShortTimeExistencePackage F}
    (C : ShortTimeAnalyticCertificate S) : ShortTimeEvidenceTerms C :=
  {
    parabolicRegularity := C.parabolicRegularityClosed
    localExistenceInterval := C.localExistenceIntervalClosed
    uniquenessOnOverlap := C.uniquenessOnOverlapClosed
    continuationCriterion := C.continuationCriterionClosed
    shortTimeClosed := short_time_existence_closed_from_evidence S C.shortTimeEvidence
  }

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
