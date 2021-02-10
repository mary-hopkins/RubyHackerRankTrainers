require "test/unit"
require_relative './warmUp'

class WarmUpTest < Test::Unit::TestCase
    def test_solveMeFirst
      assert_equal 8, WarmUp.solveMeFirst(3,5), "WarmUp.solveMeFirst(3, 5) should return 8"
      assert_equal 1100, WarmUp.solveMeFirst(1000,100), "WarmUp.solveMeFirst(1000, 100) should return 1100"
      assert_equal 2, WarmUp.solveMeFirst(-3,5), "WarmUp.solveMeFirst(-3, 5) should return 2"
      assert_equal -5, WarmUp.solveMeFirst(10,-15), "WarmUp.solveMeFirst(10, -15) should return -5"
      assert_equal -25, WarmUp.solveMeFirst(-10,-15), "WarmUp.solveMeFirst(-10, -15) should return -25"
    end

    def test_simpleArraySum
      assert_equal 31, WarmUp.simpleArraySum([1, 2, 3, 4, 10, 11]), "WarmUp.simpleArraySum([1, 2, 3, 4, 10, 11]) should return 31"
    end

    def test_compareTriplets
      assert_equal [1, 1], WarmUp.compareTriplets([5, 6, 7], [3, 6, 10]), "compareTriplets([5, 6, 7], [3, 6, 10]) should return [1, 1]"
      assert_equal [2, 1], WarmUp.compareTriplets([17, 28, 30], [99, 16, 8]), "compareTriplets([17, 28, 30], [99, 16, 8]) should return [2, 1]"
    end

end