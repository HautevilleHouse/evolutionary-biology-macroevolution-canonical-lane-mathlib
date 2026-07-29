import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure DiversificationModel where
  speciationRate : ℝ
  extinctionRate : ℝ
  timeDependent : Prop
  diversificationEquation : ℝ → ℝ

structure DiversificationEvidence (D : DiversificationModel) where
  ratesPositive : D.speciationRate > 0 ∧ D.extinctionRate > 0
  equationClosed : D.timeDependent

def DiversificationClosed (D : DiversificationModel) : Prop :=
  (D.speciationRate > 0 ∧ D.extinctionRate > 0) ∧ D.timeDependent

theorem diversification_closed_from_evidence (D : DiversificationModel)
    (E : DiversificationEvidence D) : DiversificationClosed D := by
  exact And.intro E.ratesPositive E.equationClosed

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse