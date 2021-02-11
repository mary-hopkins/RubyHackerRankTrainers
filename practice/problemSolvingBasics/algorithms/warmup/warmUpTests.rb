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

    def test_aVeryBigSum
      assert_equal 65, WarmUp.aVeryBigSum([11, 12, 13, 14, 15]), "aVeryBigSum([11, 12, 13, 14, 15]) should return 65"
      assert_equal 5000000015, WarmUp.aVeryBigSum([1000000001, 1000000002, 1000000003, 1000000004, 1000000005]), "aVeryBigSum([1000000001, 1000000002, 1000000003, 1000000004, 1000000005]) should return 5000000015"
    end

    def test_diagonalDifference
      assert_equal 15, WarmUp.diagonalDifference([[11, 2, 4], [4, 5, 6], [10, 8, -12]]), "diagonalDifference([11, 2, 4], [4, 5, 6], [10, 8, -12]) should return 15"
      assert_equal 7, WarmUp.diagonalDifference([[20, -7, 11], [3, -5, 6], [4, 8, -12]]), "diagonalDifference([[20, -7, 11], [3, -5, 6], [4, 8, -12]]) should return 7"
    end

    def test_plusMinus
      assert_equal ["0.500000", "0.333333", "0.166667"], WarmUp.plusMinus([-4, 3, -9, 0, 4, 1]), "plusMinus([-4, 3, -9, 0, 4, 1]) should return ['0.500000', '0.333333', '0.166667']"
      assert_equal ["0.333333", "0.166667", "0.500000"], WarmUp.plusMinus([0, 0, -9, 0, 4, 1]), "plusMinus([0, 0, -9, 0, 4, 1]) should return ['0.333333', '0.166667', '0.500000']"
    end

    def test_staircase
      assert_equal ['     #', '    ##', '   ###', '  ####', ' #####', '######'], WarmUp.staircase(6), "staircase(6) should return ['     #', '    ##', '   ###', '  ####', ' #####', '######']"
      assert_equal ['   #', '  ##', ' ###', '####',], WarmUp.staircase(4), "staircase(6) should return ['   #', '  ##', ' ###', '####']"
    end

    def test_miniMaxSum
      assert_equal "10 14", WarmUp.miniMaxSum([1, 2, 3, 4, 5]), "miniMaxSum([1, 2, 3, 4, 5]) should return '10 14'"
    end

    def test_birthdayCakeCandles
      assert_equal 2, WarmUp.birthdayCakeCandles([3, 2, 1, 3]), "birthdayCakeCandles([3, 2, 1, 3]) should return 2"
      assert_equal 3, WarmUp.birthdayCakeCandles([3, 2, 1, 3, 3]), "birthdayCakeCandles([3, 2, 1, 3, 3]) should return 3"
    end

    def test_timeConversion
      assert_equal '19:05:45', WarmUp.timeConversion('07:05:45PM'), "timeConversion('07:05:45PM') should return '19:05:45'"
    end


end