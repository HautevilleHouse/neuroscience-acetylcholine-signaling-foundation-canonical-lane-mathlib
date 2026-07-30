import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingFoundation

structure AcetylcholineMetabolism where
  cholineAcetyltransferase : Type u
  acetylCoenzymeA : Type v
  acetylcholineSynthesis : Prop
  vesicularTransport : Prop
  acetylcholinesterase : Type w
  hydrolysisTermination : Prop

structure AcetylcholineMetabolismEvidence (M : AcetylcholineMetabolism) where
  acetylcholineSynthesisClosed : M.acetylcholineSynthesis
  vesicularTransportClosed : M.vesicularTransport
  hydrolysisTerminationClosed : M.hydrolysisTermination

def AcetylcholineMetabolismClosed (M : AcetylcholineMetabolism) : Prop :=
  M.acetylcholineSynthesis ∧ M.vesicularTransport ∧ M.hydrolysisTermination

theorem acetylcholine_metabolism_closed_from_evidence (M : AcetylcholineMetabolism) (E : AcetylcholineMetabolismEvidence M) : AcetylcholineMetabolismClosed M :=
  And.intro E.acetylcholineSynthesisClosed (And.intro E.vesicularTransportClosed E.hydrolysisTerminationClosed)

end NeuroscienceAcetylcholineSignalingFoundation
end HautevilleHouse