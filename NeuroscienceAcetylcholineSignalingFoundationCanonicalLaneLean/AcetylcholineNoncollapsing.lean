import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.AcetylcholinePerelmanEntropy

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure NoncollapsingPackage
    {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G}
    (Epkg : PerelmanEntropyPackage F) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence
    {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G}
    {Epkg : PerelmanEntropyPackage F} (N : NoncollapsingPackage Epkg) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed
    {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G}
    {Epkg : PerelmanEntropyPackage F} (N : NoncollapsingPackage Epkg) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {G : HodgkinHuxleyCurvaturePackage}
    {F : AcetylcholinePDEPackage G}
    {Epkg : PerelmanEntropyPackage F}
    (N : NoncollapsingPackage Epkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
