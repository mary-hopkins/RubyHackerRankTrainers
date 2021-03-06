require "test/unit"
require_relative './implementation'


class ImplementationTest < Test::Unit::TestCase
    def test_wiring
        assert_equal true, Implementation.wiring(), ".wiring() returns true"
    end

    def test_gradingStudents
        assert_equal [75, 67, 40, 33], Implementation.gradingStudents([73, 67, 38, 33]), "gradingStudents([73, 67, 38, 33]) should return [75, 67, 40, 33]"
        assert_equal [37, 40], Implementation.gradingStudents([37, 38]), "gradingStudents([37, 38]) should return [37, 40]"
    end

    def test_countApplesAndOranges
        assert_equal [1, 1], Implementation.countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6]), "countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6]) should return [1, 1]"
    end

    def test_kangaroo
        assert_equal "YES", Implementation.kangaroo(0, 3, 4, 2), "kangaroo(0, 3, 4, 2) returns 'YES'"
        assert_equal "NO", Implementation.kangaroo(0, 2, 5, 3), "kangaroo(0, 2, 5, 3) returns 'NO'"
    end

    def test_breakingRecords
        assert_equal [2, 4], Implementation.breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1]), "breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1]) returns [2, 4]"
        assert_equal [4, 0], Implementation.breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42]), "breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1]) returns [4, 0]"
    end

    def test_birthday
        assert_equal 2, Implementation.birthday([1, 2, 1, 3, 2], 3, 2), "birthday([1, 2, 1, 3, 2], 3, 2) returns 2"
        assert_equal 0, Implementation.birthday([1, 1, 1, 1, 1, 1], 3, 2), "birthday([1, 1, 1, 1, 1, 1], 3, 2) returns 0"
        assert_equal 1, Implementation.birthday([4], 4, 1), "birthday([4], 4, 1) returns 1"
    end

    def test_migratoryBirds
        assert_equal 4, Implementation.migratoryBirds([1, 4, 4, 4, 5, 3]), "migratoryBirds([1, 4, 4, 4, 5, 3]) returns 4"
        assert_equal 3, Implementation.migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]), "migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]) returns 3"
    end

    def test_hurdleRace
        assert_equal 2, Implementation.hurdleRace(4, [1, 6, 3, 5, 2]), "hurdleRace(4, [1, 6, 3, 5, 2]) returns 2"
        assert_equal 0, Implementation.hurdleRace(7, [2, 5, 4, 5, 2]), "hurdleRace(7, [2, 5, 4, 5, 2]) returns 0"
    end

    def test_happyLadybugs
        assert_equal "NO", Implementation.happyLadybugs("AABBC"), "happyLadybugs('AABBC') returns 'NO'"
        assert_equal "YES", Implementation.happyLadybugs("AABBC_C"), "happyLadybugs('AABBC_C') returns 'YES'"
        assert_equal "YES", Implementation.happyLadybugs("_"), "happyLadybugs('_') returns 'YES'"
        assert_equal "YES", Implementation.happyLadybugs("DD__FQ_QQF"), "happyLadybugs('DD__FQ_QQF') returns 'YES'"
        assert_equal "NO", Implementation.happyLadybugs("AABCBC"), "happyLadybugs('AABCBC') returns 'NO'"

        assert_equal "NO", Implementation.happyLadybugs("G"), "happyLadybugs('G') returns 'NO'"
        assert_equal "NO", Implementation.happyLadybugs("GR"), "happyLadybugs('GR') returns 'NO'"
        assert_equal "NO", Implementation.happyLadybugs("_GR_"), "happyLadybugs('_GR_') returns 'NO'"
        assert_equal "NO", Implementation.happyLadybugs("_R_G_"), "happyLadybugs('_R_G_') returns 'NO'"
        assert_equal "YES", Implementation.happyLadybugs("R_R_R"), "happyLadybugs('R_R_R') returns 'YES'"
        assert_equal "YES", Implementation.happyLadybugs("RRGGBBXX"), "happyLadybugs('RRGGBBXX') returns 'YES'"
        assert_equal "NO", Implementation.happyLadybugs("RRGGBBXY"), "happyLadybugs('RRGGBBXY') returns 'NO'"
    end

    def test_catAndMouse
        assert_equal "Cat B", Implementation.catAndMouse(1, 2, 3), "catAndMouse(1, 2, 3) will return Cat B"
        assert_equal "Mouse C", Implementation.catAndMouse(1, 3, 2), "catAndMouse(1, 3, 2) will return Mouse C"
    end

    def test_cavityMap
        assert_equal ['989', '1X1', '111'], Implementation.cavityMap(['989', '191', '111']), "cavityMap(['989', '191', '111']) returns ['989', '1X1', '111']"
        assert_equal ['1112', '1X12', '18X2', '1234'], Implementation.cavityMap(['1112', '1912', '1892', '1234']), "cavityMap(['1112', '1912', '1892', '1234']) returns ['1112', '1X12', '18X2', '1234']"
    end

    def test_bonAppetit
        assert_equal "5", Implementation.bonAppetit([3, 10, 2, 9], 1, 12), "bonAppetit([3, 10, 2, 9], 1, 12)) returns 5"
        assert_equal "Bon Appetit", Implementation.bonAppetit([3, 10, 2, 9], 1, 7), "bonAppetit([3, 10, 2, 9], 1, 12)) returns Bon Appetit" 
    end

    def test_designerPdfViewer
        assert_equal 9, Implementation.designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], "abc"), "designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 'abc') returns 9"
        assert_equal 28, Implementation.designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], "zaba"), "designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 'zaba') returns 28"
    end

    def test_utopianTree
        assert_equal 1, Implementation.untopianTree(0), "utopianTree(0) returns 1"
        assert_equal 2, Implementation.untopianTree(1), "utopianTree(1) returns 2"
        assert_equal 7, Implementation.untopianTree(4), "utopianTree(4) returns 7"
        assert_equal 6, Implementation.untopianTree(3), "utopianTree(3) returns 6"
    end

    def test_angryProfessor
        assert_equal "YES", Implementation.angryProfessor(3, [-1, -3, 4, 2]), "angryProfessor(3, [-1, -3, 4, 2]) returns 'YES'"
        assert_equal "NO", Implementation.angryProfessor(2, [0, -1, 2, 1]), "angryProfessor(2, [0, -1, 2, 1]) returns 'NO'"
        assert_equal "NO", Implementation.angryProfessor(4, [-93, -86, 49, -62, -90, -63, 40, 72, 11, 67]), "angryProfessor(4, [-93, -86, 49, -62, -90, -63, 40, 72, 11, 67]) returns 'NO'"
        assert_equal "YES", Implementation.angryProfessor(10, [23, -35, -2, 58, -67, -56, -42, -73, -19, 37]), "angryProfessor(10, [23, -35, -2, 58, -67, -56, -42, -73, -19, 37]) returns 'YES'"
    end

    def test_appendAndDelete
        assert_equal "Yes", Implementation.appendAndDelete("abc", "def", 6), "appendAndDelete('abc', 'def', 6) returns 'Yes'"
        assert_equal "Yes", Implementation.appendAndDelete("hackerhappy", "hackerrank", 9), "appendAndDelete('hackerhappy', 'hackerrank', 9 returns 'Yes'"
        assert_equal "Yes", Implementation.appendAndDelete("zzzzz", "zzzzzzz", 4), "appendAndDelete('zzzzz', 'zzzzzzz', 4) returns 'Yes'"
        assert_equal "No", Implementation.appendAndDelete("ashley", "ash", 2), "appendAndDelete('ashley', 'ash', 2) returns 'No'" 
    end

    def test_findDigits
        assert_equal 3, Implementation.findDigits(124), "findDigits(124) returns 3"
        assert_equal 3, Implementation.findDigits(111), "findDigits(111) returns 3"
        assert_equal 1, Implementation.findDigits(10), "findDigits(10) returns 1"
        assert_equal 2, Implementation.findDigits(12), "findDigits(12) returns 2"
        assert_equal 3, Implementation.findDigits(1012), "findDigits(1012) returns 3"
    end

    def test_minimumDistances
        assert_equal 3, Implementation.minimumDistances([7, 1, 3, 4, 1, 7]), "minimumDistances([7, 1, 3, 4, 1, 7]) returns 3"
        assert_equal -1,Implementation.minimumDistances([1, 2, 3, 4, 10]), "minimumDistances([1, 2, 3, 4, 10]) returns -1"
    end

    def test_divisibleSumPairs
        assert_equal 5, Implementation.divisibleSumPairs(6, 3, [1, 3, 2, 6, 1, 2]), "divisibleSumPairs() returns 5"
        assert_equal 3, Implementation.divisibleSumPairs(6, 5, [1, 2, 3, 4, 5, 6]), "divisibleSumPairs() returns 3"
    end
end