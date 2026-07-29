import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategies : Type u
  payoffMatrix : Type v
  replicatorDynamicsConverges : Prop
  nashEquilibriumReached : Prop
  essStable : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsConvergesClosed : E.replicatorDynamicsConverges
  nashEquilibriumReachedClosed : E.nashEquilibriumReached
  essStableClosed : E.essStable

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.replicatorDynamicsConverges ∧ E.nashEquilibriumReached ∧ E.essStable

theorem evolutionary_game_theory_closed_from_evidence
    (E : EvolutionaryGameTheoryPackage) (Ev : EvolutionaryGameTheoryEvidence E) :
    EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.replicatorDynamicsConvergesClosed
    (And.intro Ev.nashEquilibriumReachedClosed Ev.essStableClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse