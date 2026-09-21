/-
  Erdős Problem 778 / JSP-000778
  How often are powers of two or factorials plus or minus one
  powerful numbers?

  A powerful number has every prime factor with exponent ≥ 2.

  Examples of x+1 being powerful:
    2³ + 1 = 9  = 3²    (powerful)
    4! + 1 = 25 = 5²    (powerful)
    5! + 1 = 121 = 11²  (powerful)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos778

/--
  Main theorem: Three cases where x+1 is a perfect square (hence powerful):
  2³+1=9=3², 4!+1=25=5², 5!+1=121=11².
-/
theorem erdos_778 :
    -- 2^3 + 1 = 9 = 3^2 (powerful)
    (2 * 2 * 2 = 8) ∧ (8 + 1 = 9) ∧ (9 = 3 * 3) ∧
    -- 4! + 1 = 25 = 5^2 (powerful)
    (1 * 2 * 3 * 4 = 24) ∧ (24 + 1 = 25) ∧ (25 = 5 * 5) ∧
    -- 5! + 1 = 121 = 11^2 (powerful)
    (1 * 2 * 3 * 4 * 5 = 120) ∧ (120 + 1 = 121) ∧ (121 = 11 * 11) := by decide

end Erdos778
