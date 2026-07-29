import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure EpidemiologySIRPackage where
  susceptible : ℕ
  infected : ℕ
  recovered : ℕ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquationsSatisfied : Prop
  herdImmunityReached : Prop

structure EpidemiologySIREvidence (E : EpidemiologySIRPackage) where
  sirEquationsSatisfiedClosed : E.sirEquationsSatisfied
  herdImmunityReachedClosed : E.herdImmunityReached

def EpidemiologySIRClosed (E : EpidemiologySIRPackage) : Prop :=
  E.sirEquationsSatisfied ∧ E.herdImmunityReached

theorem epidemiology_sir_closed_from_evidence
    (E : EpidemiologySIRPackage) (Ev : EpidemiologySIREvidence E) :
    EpidemiologySIRClosed E := by
  exact And.intro Ev.sirEquationsSatisfiedClosed Ev.herdImmunityReachedClosed

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse