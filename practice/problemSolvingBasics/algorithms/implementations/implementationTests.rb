require "test/unit"
require_relative './implementation'


class ImplementationTest < Test::Unit::TestCase
    def test_wiring
        assert_equal true, Implementation.wiring(), ".wiring() returns true"
    end

end