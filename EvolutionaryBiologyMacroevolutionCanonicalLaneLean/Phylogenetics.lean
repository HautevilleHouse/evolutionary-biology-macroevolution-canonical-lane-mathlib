import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure PhylogeneticsPackage where
  phylogeneticTree : Type
  molecularClock : Prop
  ancestralReconstruction : Prop
  treeEstimation : Prop
  evolutionaryDistance : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  molecularClockClosed : P.molecularClock
  ancestralReconstructionClosed : P.ancestralReconstruction
  treeEstimationClosed : P.treeEstimation
  evolutionaryDistanceClosed : P.evolutionaryDistance

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.molecularClock ∧ P.ancestralReconstruction ∧ P.treeEstimation ∧ P.evolutionaryDistance

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.ancestralReconstructionClosed (And.intro E.treeEstimationClosed E.evolutionaryDistanceClosed))

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse