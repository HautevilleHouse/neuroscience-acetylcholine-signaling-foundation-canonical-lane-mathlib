import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "acetylcholine-signaling-foundation",
    theoremObject := "Acetylcholine signaling pathway closure",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedAcetylcholineClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_acetylcholine_endgame A

end NeuroscienceAcetylcholineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
