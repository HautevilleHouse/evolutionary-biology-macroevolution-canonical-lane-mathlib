import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure EpidemiologyModelsPackage where
  susceptible : ℝ → ℝ
  infected : ℝ → ℝ
  recovered : ℝ → ℝ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquations : Prop
  basicReproductiveNumber : Prop
  endemicEquilibrium : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  sirEquationsClosed : E.sirEquations
  basicReproductiveNumberClosed : E.basicReproductiveNumber
  endemicEquilibriumClosed : E.endemicEquilibrium

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.sirEquations ∧ E.basicReproductiveNumber ∧ E.endemicEquilibrium

theorem epidemiology_models_closed_from_evidence (E : EpidemiologyModelsPackage)
    (Ev : EpidemiologyModelsEvidence E) : EpidemiologyModelsClosed E := by
  exact And.intro Ev.sirEquationsClosed (And.intro Ev.basicReproductiveNumberClosed Ev.endemicEquilibriumClosed)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse