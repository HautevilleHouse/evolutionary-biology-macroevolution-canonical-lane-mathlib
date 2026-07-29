import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure BiochemicalNetwork where
  species : ℕ
  reactions : ℕ
  stoichiometricMatrix : ℕ → ℕ → ℤ
  massActionKinetics : Prop
  steadyStates : Prop

structure NetworkDynamicsEvidence (N : BiochemicalNetwork) where
  massActionKineticsClosed : N.massActionKinetics
  steadyStatesClosed : N.steadyStates

def NetworkDynamicsClosed (N : BiochemicalNetwork) : Prop :=
  N.massActionKinetics ∧ N.steadyStates

theorem network_dynamics_closed_from_evidence (N : BiochemicalNetwork)
    (E : NetworkDynamicsEvidence N) : NetworkDynamicsClosed N := by
  exact And.intro E.massActionKineticsClosed E.steadyStatesClosed

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse