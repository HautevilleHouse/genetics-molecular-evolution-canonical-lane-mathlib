import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  scoringMatrix : Type u
  gapPenalty : Prop
  dynamicProgrammingAlgorithm : Prop
  optimalAlignment : Prop
  homologyInference : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringMatrixClosed : S.scoringMatrix
  gapPenaltyClosed : S.gapPenalty
  dynamicProgrammingAlgorithmClosed : S.dynamicProgrammingAlgorithm
  optimalAlignmentClosed : S.optimalAlignment
  homologyInferenceClosed : S.homologyInference

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringMatrix ∧ S.gapPenalty ∧ S.dynamicProgrammingAlgorithm ∧
  S.optimalAlignment ∧ S.homologyInference

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.scoringMatrixClosed
    (And.intro E.gapPenaltyClosed
      (And.intro E.dynamicProgrammingAlgorithmClosed
        (And.intro E.optimalAlignmentClosed E.homologyInferenceClosed)))

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
