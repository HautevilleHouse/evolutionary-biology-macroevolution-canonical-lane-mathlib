import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure MacroevolutionaryPatternsPackage where
  fossilRecord : Type u
  speciationRate : ℝ
  extinctionRate : ℝ
  adaptiveRadiationEvents : List String
  diversityDynamicsModeled : Prop
  massExtinctionBoundaryCrossed : Prop

structure MacroevolutionaryPatternsEvidence (M : MacroevolutionaryPatternsPackage) where
  diversityDynamicsModeledClosed : M.diversityDynamicsModeled
  massExtinctionBoundaryCrossedClosed : M.massExtinctionBoundaryCrossed

def MacroevolutionaryPatternsClosed (M : MacroevolutionaryPatternsPackage) : Prop :=
  M.diversityDynamicsModeled ∧ M.massExtinctionBoundaryCrossed

theorem macroevolutionary_patterns_closed_from_evidence
    (M : MacroevolutionaryPatternsPackage) (E : MacroevolutionaryPatternsEvidence M) :
    MacroevolutionaryPatternsClosed M := by
  exact And.intro E.diversityDynamicsModeledClosed E.massExtinctionBoundaryCrossedClosed

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse