import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure EvolutionaryGameDynamicsPackage where
  populationState : Type u
  payoffMatrix : Type v
  replicatorEquation : Prop
  evolutionaryStableStrategy : Prop
  nashEquilibrium : Prop
  dynamicsConvergence : Prop

structure EvolutionaryGameDynamicsEvidence (E : EvolutionaryGameDynamicsPackage) where
  replicatorEquationClosed : E.replicatorEquation
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  nashEquilibriumClosed : E.nashEquilibrium
  dynamicsConvergenceClosed : E.dynamicsConvergence

def EvolutionaryGameDynamicsClosed (E : EvolutionaryGameDynamicsPackage) : Prop :=
  E.replicatorEquation ∧ E.evolutionaryStableStrategy ∧
  E.nashEquilibrium ∧ E.dynamicsConvergence

theorem evolutionary_game_dynamics_closed_from_evidence
    (E : EvolutionaryGameDynamicsPackage) (Ev : EvolutionaryGameDynamicsEvidence E) :
    EvolutionaryGameDynamicsClosed E := by
  exact And.intro Ev.replicatorEquationClosed
    (And.intro Ev.evolutionaryStableStrategyClosed
      (And.intro Ev.nashEquilibriumClosed Ev.dynamicsConvergenceClosed))

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse