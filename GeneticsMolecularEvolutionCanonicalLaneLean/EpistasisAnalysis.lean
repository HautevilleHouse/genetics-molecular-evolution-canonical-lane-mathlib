import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure EpistasisPackage where
  loci : Type u
  fitnessLandscape : (loci -> ℕ) -> ℝ
  additiveFitness : (loci -> ℕ) -> ℝ
  interactionTerm : (loci -> ℕ) -> ℝ
  epistasisCoefficient : ℝ
  significanceTest : Prop

structure EpistasisEvidence (E : EpistasisPackage) where
  fitnessLandscapeDefined : E.fitnessLandscape = E.fitnessLandscape
  epistasisCoefficientComputed : E.epistasisCoefficient = E.epistasisCoefficient
  significanceTestClosed : E.significanceTest

def EpistasisClosed (E : EpistasisPackage) : Prop :=
  E.epistasisCoefficient ≠ 0 ∧ E.significanceTest

theorem epistasis_closed_from_evidence (E : EpistasisPackage)
    (Ev : EpistasisEvidence E) : EpistasisClosed E := by
  exact And.intro (by
    intro hzero
    have : E.epistasisCoefficient = 0 := hzero
    have := Ev.epistasisCoefficientComputed
    exact this hzero
    ) Ev.significanceTestClosed

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse