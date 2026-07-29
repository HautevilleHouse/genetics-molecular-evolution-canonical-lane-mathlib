import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure GenomicSequence where
  nucleotides : List (Fin 4)
  lengthPositive : length > 0

definition aligned (a b : GenomicSequence) : Prop := False

theorem alignment_bridge (a b : GenomicSequence) : aligned a b ∨ ¬ aligned a b := by
  apply em

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
