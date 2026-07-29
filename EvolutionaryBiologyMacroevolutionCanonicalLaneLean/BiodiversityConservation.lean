import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure BiodiversityConservationPackage where
  alphaDiversity : Type
  betaDiversity : Type
  gammaDiversity : Type
  speciesAreaRelationship : Prop
  extinctionRisk : Prop
  conservationPriorities : Prop

structure BiodiversityConservationEvidence (B : BiodiversityConservationPackage) where
  speciesAreaRelationshipClosed : B.speciesAreaRelationship
  extinctionRiskClosed : B.extinctionRisk
  conservationPrioritiesClosed : B.conservationPriorities

def BiodiversityConservationClosed (B : BiodiversityConservationPackage) : Prop :=
  B.speciesAreaRelationship ∧ B.extinctionRisk ∧ B.conservationPriorities

theorem biodiversity_conservation_closed_from_evidence (B : BiodiversityConservationPackage)
    (E : BiodiversityConservationEvidence B) : BiodiversityConservationClosed B := by
  exact And.intro E.speciesAreaRelationshipClosed (And.intro E.extinctionRiskClosed E.conservationPrioritiesClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse