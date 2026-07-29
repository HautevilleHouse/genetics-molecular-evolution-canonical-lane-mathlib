import canonicalLaneMathlib.AdmissibleClass
import GeneticsMolecularEvolutionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse