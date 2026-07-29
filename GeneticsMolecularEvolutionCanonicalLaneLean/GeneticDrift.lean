import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure GeneticDriftProcess where
  effectivePopulationSize : Nat
  variance : ℚ
  alleleFrequencyChange : ℚ

definition driftClosed (G : GeneticDriftProcess) : Prop := G.variance = (G.effectivePopulationSize : ℚ)⁻¹

theorem drift_closed_from_evidence (G : GeneticDriftProcess) : driftClosed G := by
  exact G.variance

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
