import canonicalLaneMathlib.AdmissibleClass
import GeneticsMolecularEvolutionCanonicalLaneLean.BridgeLemmas
import GeneticsMolecularEvolutionCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneticsMolecularEvolutionCanonicalLaneLean

def ConstrainedGeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetics_endgame (A : AdmissibleClass) :
    ConstrainedGeneticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsMolecularEvolutionCanonicalLaneLean
end HautevilleHouse