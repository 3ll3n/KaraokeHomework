require("minitest/autorun")
require("minitest/rg")

require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("John Smith")
    @guest2 = Guest.new("Jane Doe")
    @guest3 = Guest.new("James Brown")
  end

  def test_guest_name
    assert_equal("John Smith", @guest.name)
  end

end


