import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure GeneticAdmissibleObject where
  locus : Type u
  alleleFrequencies : Type u
  sampleSize : Nat
  equilibriumTest : Prop
  conclusion : equilibriumTest

structure AdmissibleClass where
  object : GeneticAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse