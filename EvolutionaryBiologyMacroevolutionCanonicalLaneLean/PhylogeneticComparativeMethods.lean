import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure PhylogeneticComparativeMethodsPackage where
  tree : Type u
  traitData : Type v
  brownianMotionModel : Prop
  phylogeneticSignalDetected : Prop
  evolutionaryRateEstimated : Prop

structure PhylogeneticComparativeMethodsEvidence (P : PhylogeneticComparativeMethodsPackage) where
  brownianMotionModelClosed : P.brownianMotionModel
  phylogeneticSignalDetectedClosed : P.phylogeneticSignalDetected
  evolutionaryRateEstimatedClosed : P.evolutionaryRateEstimated

def PhylogeneticComparativeMethodsClosed (P : PhylogeneticComparativeMethodsPackage) : Prop :=
  P.brownianMotionModel ∧ P.phylogeneticSignalDetected ∧ P.evolutionaryRateEstimated

theorem phylogenetic_comparative_methods_closed_from_evidence
    (P : PhylogeneticComparativeMethodsPackage) (E : PhylogeneticComparativeMethodsEvidence P) :
    PhylogeneticComparativeMethodsClosed P := by
  exact And.intro E.brownianMotionModelClosed
    (And.intro E.phylogeneticSignalDetectedClosed E.evolutionaryRateEstimatedClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse