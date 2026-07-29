import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure PopulationDynamicsPackage where
  carryingCapacity : ℕ
  growthRate : ℝ
  initialPopulation : ℕ
  logisticEquationSatisfied : Prop
  equilibriumStable : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticEquationSatisfiedClosed : P.logisticEquationSatisfied
  equilibriumStableClosed : P.equilibriumStable

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticEquationSatisfied ∧ P.equilibriumStable

theorem population_dynamics_closed_from_evidence
    (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.logisticEquationSatisfiedClosed E.equilibriumStableClosed

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse