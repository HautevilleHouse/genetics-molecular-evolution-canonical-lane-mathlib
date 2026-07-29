import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesSet : Type u
  molecularData : Type v
  evolutionaryModel : Type w
  treeTopology : Prop
  branchLengths : Prop
  likelihoodComputation : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  evolutionaryModelClosed : P.evolutionaryModel
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodComputationClosed : P.likelihoodComputation
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.evolutionaryModel ∧ P.treeTopology ∧ P.branchLengths ∧
  P.likelihoodComputation ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.evolutionaryModelClosed
    (And.intro E.treeTopologyClosed
      (And.intro E.branchLengthsClosed
        (And.intro E.likelihoodComputationClosed E.bootstrapSupportClosed)))

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse
