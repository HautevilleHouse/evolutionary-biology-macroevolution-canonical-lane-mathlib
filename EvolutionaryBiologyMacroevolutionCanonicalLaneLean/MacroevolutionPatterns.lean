import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure MacroevolutionPatternsPackage where
  speciationRate : ℝ → ℝ
  extinctionRate : ℝ → ℝ
  fossilRecord : Type
  diversificationModel : Prop
  lineageSorting : Prop
  speciesDistribution : Prop

structure MacroevolutionPatternsEvidence (M : MacroevolutionPatternsPackage) where
  diversificationModelClosed : M.diversificationModel
  lineageSortingClosed : M.lineageSorting
  speciesDistributionClosed : M.speciesDistribution

def MacroevolutionPatternsClosed (M : MacroevolutionPatternsPackage) : Prop :=
  M.diversificationModel ∧ M.lineageSorting ∧ M.speciesDistribution

theorem macroevolution_patterns_closed_from_evidence (M : MacroevolutionPatternsPackage)
    (E : MacroevolutionPatternsEvidence M) : MacroevolutionPatternsClosed M := by
  exact And.intro E.diversificationModelClosed (And.intro E.lineageSortingClosed E.speciesDistributionClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse