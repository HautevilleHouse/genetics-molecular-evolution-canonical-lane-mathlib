import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure MolecularClockPackage where
  geneSequences : List String
  calibrationPoint : Float -- time in millions of years
  substitutionRate : Float
  divergenceTimes : List Float
  clockAssumption : Bool
  likelihoodRatioTest : Prop
  clockValid : Prop
  clockValidTerm : clockValid

structure MolecularClockEvidence (M : MolecularClockPackage) where
  clockValidClosed : M.clockValid
  calibrationChecked : Prop
  calibrationCheckedTerm : calibrationChecked

def MolecularClockClosed (M : MolecularClockPackage) : Prop :=
  M.clockValid

theorem molecular_clock_closed_from_evidence (M : MolecularClockPackage) (E : MolecularClockEvidence M) :
    MolecularClockClosed M := by
  exact E.clockValidClosed

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse