import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Type
  signalingPathway : Type
  metabolicFlux : Type
  networkTopology : Prop
  feedbackLoops : Prop
  robustnessAnalysis : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  networkTopologyClosed : S.networkTopology
  feedbackLoopsClosed : S.feedbackLoops
  robustnessAnalysisClosed : S.robustnessAnalysis

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.networkTopology ∧ S.feedbackLoops ∧ S.robustnessAnalysis

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage)
    (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro E.networkTopologyClosed (And.intro E.feedbackLoopsClosed E.robustnessAnalysisClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse