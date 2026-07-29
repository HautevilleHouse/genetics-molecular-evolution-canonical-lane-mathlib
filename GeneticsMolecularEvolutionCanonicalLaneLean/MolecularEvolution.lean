import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure MolecularEvolutionPackage where
  sequences : List String
  substitutionModel : Prop
  rateHeterogeneity : Prop
  selectionPressure : Prop
  evolutionaryRate : Prop

structure MolecularEvolutionEvidence (M : MolecularEvolutionPackage) where
  substitutionModelClosed : M.substitutionModel
  rateHeterogeneityClosed : M.rateHeterogeneity
  selectionPressureClosed : M.selectionPressure
  evolutionaryRateClosed : M.evolutionaryRate

def MolecularEvolutionClosed (M : MolecularEvolutionPackage) : Prop :=
  M.substitutionModel ∧ M.rateHeterogeneity ∧ M.selectionPressure ∧ M.evolutionaryRate

theorem molecular_evolution_closed_from_evidence (M : MolecularEvolutionPackage)
    (E : MolecularEvolutionEvidence M) : MolecularEvolutionClosed M := by
  exact And.intro E.substitutionModelClosed
    (And.intro E.rateHeterogeneityClosed
      (And.intro E.selectionPressureClosed E.evolutionaryRateClosed))

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
