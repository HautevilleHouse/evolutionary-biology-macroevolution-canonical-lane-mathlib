import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure MacroevolutionaryCladogenesisPackage where
  speciationRate : Type u
  extinctionRate : Type v
  macroevolutionaryDynamics : Prop
  adaptiveRadiation : Prop
  phylogeneticTree : Type w
  diversificationRates : Prop

structure MacroevolutionaryCladogenesisEvidence (M : MacroevolutionaryCladogenesisPackage) where
  macroevolutionaryDynamicsClosed : M.macroevolutionaryDynamics
  adaptiveRadiationClosed : M.adaptiveRadiation
  diversificationRatesClosed : M.diversificationRates

def MacroevolutionaryCladogenesisClosed (M : MacroevolutionaryCladogenesisPackage) : Prop :=
  M.macroevolutionaryDynamics ∧ M.adaptiveRadiation ∧
  M.diversificationRates

theorem macroevolutionary_cladogenesis_closed_from_evidence
    (M : MacroevolutionaryCladogenesisPackage) (Ev : MacroevolutionaryCladogenesisEvidence M) :
    MacroevolutionaryCladogenesisClosed M := by
  exact And.intro Ev.macroevolutionaryDynamicsClosed
    (And.intro Ev.adaptiveRadiationClosed Ev.diversificationRatesClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse