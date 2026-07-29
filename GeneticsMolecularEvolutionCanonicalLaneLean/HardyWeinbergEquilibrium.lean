import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : Nat
  alleleFrequencies : Type u
  genotypeFrequencies : Type v
  randomMatingAssumption : Prop
  largePopulationAssumption : Prop
  noSelectionMutationMigration : Prop
  equilibriumFormula : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  randomMatingAssumptionClosed : H.randomMatingAssumption
  largePopulationAssumptionClosed : H.largePopulationAssumption
  noSelectionMutationMigrationClosed : H.noSelectionMutationMigration
  equilibriumFormulaClosed : H.equilibriumFormula

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.randomMatingAssumption ∧ H.largePopulationAssumption ∧
  H.noSelectionMutationMigration ∧ H.equilibriumFormula

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.randomMatingAssumptionClosed
    (And.intro E.largePopulationAssumptionClosed
      (And.intro E.noSelectionMutationMigrationClosed E.equilibriumFormulaClosed))

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
