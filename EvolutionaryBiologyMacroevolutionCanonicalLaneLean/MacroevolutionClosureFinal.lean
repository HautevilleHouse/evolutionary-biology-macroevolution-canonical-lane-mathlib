import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

def ConstrainedMacroevolutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_macroevolution_endgame (A : AdmissibleClass) :
    ConstrainedMacroevolutionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse