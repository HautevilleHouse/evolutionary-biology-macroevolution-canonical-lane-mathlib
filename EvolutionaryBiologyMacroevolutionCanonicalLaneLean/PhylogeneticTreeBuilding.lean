import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure PhylogeneticTree where
  numSpecies : ℕ
  topology : ℕ → ℕ → Prop
  branchLengths : ℕ → ℝ
  molecularClockHypothesis : Prop
  maximumLikelihoodEstimated : Prop

structure PhylogeneticTreeEvidence (T : PhylogeneticTree) where
  molecularClockHypothesisClosed : T.molecularClockHypothesis
  maximumLikelihoodEstimatedClosed : T.maximumLikelihoodEstimated

def PhylogeneticTreeClosed (T : PhylogeneticTree) : Prop :=
  T.molecularClockHypothesis ∧ T.maximumLikelihoodEstimated

theorem phylogenetic_tree_closed_from_evidence (T : PhylogeneticTree)
    (E : PhylogeneticTreeEvidence T) : PhylogeneticTreeClosed T := by
  exact And.intro E.molecularClockHypothesisClosed E.maximumLikelihoodEstimatedClosed

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse