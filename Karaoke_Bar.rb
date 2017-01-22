class Karaoke_Bar

  attr_reader :entry_fee

  def initialize(entry_fee)
    @entry_fee = entry_fee
  end

  def can_pay(guest)
    return @entry_fee <= guest.money
  end

end