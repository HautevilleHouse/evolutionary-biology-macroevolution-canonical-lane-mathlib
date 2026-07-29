import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMacroevolutionCanonicalLaneLean

structure EvolutionaryAdmittedObject where
  population : Type
  environment : Type
  fitnessLandscape : Prop
  evolutionaryDynamics : Prop
  conclusion : evolutionaryDynamics

structure AdmissibleClass where
  object : EvolutionaryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  evolutionaryDynamics A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)
  where
    evolutionaryDynamics (obj : EvolutionaryAdmittedObject) : Prop := obj.evolutionaryDynamics

end EvolutionaryBiologyMacroevolutionCanonicalLaneLean
end HautevilleHouse