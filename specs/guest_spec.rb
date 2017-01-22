require("minitest/autorun")
require("minitest/rg")

require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("John Smith", 50)
    @guest2 = Guest.new("Jane Doe", 60)
    @guest3 = Guest.new("James Brown", 70)
  end

  def test_guest_name
    assert_equal("John Smith", @guest.name)
  end

  def test_guest_total_money
    assert_equal(50, @guest.money)
  end

  def test_guest_spend_money
    assert_equal(40, @guest.spend_money(10))
  end

end


