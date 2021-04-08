require "test/unit"
require_relative './strings'

class StringAlgorithmsTest < Test::Unit::TestCase

    def test_camelcase
        assert_equal 5, StringAlgorithms.camelcase("saveChangesInTheEditor"), "camelcase('saveChangesInTheEditor) returns 5"
        assert_equal 3, StringAlgorithms.camelcase("thisIsA"), "camelcase('thisIsA') returns 3"
        assert_equal 1, StringAlgorithms.camelcase("this"), "camelcase('this') returns 1"
        assert_equal 7, StringAlgorithms.camelcase("thisIsATestOfTheFucntion"), "camelcase('thisIsATestOfTheFunction') returns 7"
    end

end