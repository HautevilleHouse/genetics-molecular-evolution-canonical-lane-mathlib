import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure PopulationGeneticsPackage where
  populationSize : Nat
  mutationRate : Type u
  selectionCoefficient : Type v
  effectivePopulationSize : Prop
  fixationProbability : Prop
  coalescentTime : Prop

def PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  effectivePopulationSizeClosed : P.effectivePopulationSize
  fixationProbabilityClosed : P.fixationProbability
  coalescentTimeClosed : P.coalescentTime

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.effectivePopulationSize ∧ P.fixationProbability ∧ P.coalescentTime

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage)
    (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P := by
  exact And.intro E.effectivePopulationSizeClosed
    (And.intro E.fixationProbabilityClosed E.coalescentTimeClosed)

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
