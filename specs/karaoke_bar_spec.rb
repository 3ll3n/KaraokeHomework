require("minitest/autorun")
require("minitest/rg")
require_relative("../Karaoke_Bar")
require_relative("../Guest")

class TestKaraokeBar < MiniTest::Test

  def setup
    @karaoke_bar = Karaoke_Bar.new(10)

    @guest = Guest.new("John Smith", 50)
    @guest2 = Guest.new("Jane Doe", 5)
  end

  def test_guest_can_pay_can_pay
    assert_equal(true, @karaoke_bar.can_pay(@guest))
  end

  def test_guest_can_pay_cannot_pay
    assert_equal(false, @karaoke_bar.can_pay(@guest2))
  end

end