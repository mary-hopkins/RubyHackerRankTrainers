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
end