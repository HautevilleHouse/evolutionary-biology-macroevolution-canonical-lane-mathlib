import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.evolutionaryDynamics

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse