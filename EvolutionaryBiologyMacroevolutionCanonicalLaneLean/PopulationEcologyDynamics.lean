import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure PopulationEcologyDynamicsPackage where
  speciesRichness : Type u
  logisticGrowth : Prop
  carryingCapacity : Prop
  interactionMatrix : Type v
  lotkaVolterraEquations : Prop
  coexistenceConditions : Prop

structure PopulationEcologyDynamicsEvidence (P : PopulationEcologyDynamicsPackage) where
  logisticGrowthClosed : P.logisticGrowth
  carryingCapacityClosed : P.carryingCapacity
  lotkaVolterraEquationsClosed : P.lotkaVolterraEquations
  coexistenceConditionsClosed : P.coexistenceConditions

def PopulationEcologyDynamicsClosed (P : PopulationEcologyDynamicsPackage) : Prop :=
  P.logisticGrowth ∧ P.carryingCapacity ∧
  P.lotkaVolterraEquations ∧ P.coexistenceConditions

theorem population_ecology_dynamics_closed_from_evidence
    (P : PopulationEcologyDynamicsPackage) (Ev : PopulationEcologyDynamicsEvidence P) :
    PopulationEcologyDynamicsClosed P := by
  exact And.intro Ev.logisticGrowthClosed
    (And.intro Ev.carryingCapacityClosed
      (And.intro Ev.lotkaVolterraEquationsClosed Ev.coexistenceConditionsClosed))

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse