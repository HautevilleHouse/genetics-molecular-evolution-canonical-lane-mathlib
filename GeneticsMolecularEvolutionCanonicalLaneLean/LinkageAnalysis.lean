import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

structure LinkagePackage where
  loci : (String × String)
  recombinationFraction : Float
  lodScore : Float
  linkagePhaseKnown : Bool
  markerDistances : List (String × Float)
  mapFunction : String -- e.g., "Haldane", "Kosambi"
  significantLod : Prop
  significantLodTerm : significantLod

structure LinkageEvidence (L : LinkagePackage) where
  significantLodClosed : L.significantLod
  mapFunctionApplied : Prop
  mapFunctionAppliedTerm : mapFunctionApplied

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.significantLod

theorem linkage_closed_from_evidence (L : LinkagePackage) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact E.significantLodClosed

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse