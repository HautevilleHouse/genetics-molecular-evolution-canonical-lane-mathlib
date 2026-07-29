import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesSet : List String
  treeTopology : Prop
  branchLengths : Prop
  molecularClockHypothesis : Prop
  phylogeneticInference : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  molecularClockHypothesisClosed : P.molecularClockHypothesis
  phylogeneticInferenceClosed : P.phylogeneticInference

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.molecularClockHypothesis ∧ P.phylogeneticInference

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.molecularClockHypothesisClosed E.phylogeneticInferenceClosed))

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
