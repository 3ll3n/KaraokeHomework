require("minitest/autorun")
require("minitest/rg")

require_relative("../Room")
require_relative("../Guest")
require_relative("../Song")

class TestRooms < MiniTest::Test

  def setup

    @room = Room.new("Glitterball", 2)
    @room2 = Room.new("Microphone", 3)
    @room3 = Room.new("Theme Room", 4)

   @song = Song.new("I Will Survive", "Gloria Gaynor")
   @song2 = Song.new("Flashdance, What a Feeling", "Irene Cara")
   @song3 =Song.new("Fame", "Irene Cara")

    @guest = Guest.new("John Smith", 50)
    @guest2 = Guest.new("Jane Doe", 60)
    @guest3 = Guest.new("James Brown", 70)

  end

  def test_room_name
    assert_equal("Glitterball", @room.name)
  end

  def test_room_capacity
    assert_equal(3, @room2.capacity)
  end

  def test_initial_playlist_length
    assert_equal(0, @room.get_playlist_length)
  end

  def test_final_playlist_length
    @room.add_song(@song)
    assert_equal(1, @room.get_playlist_length )
  end

  def test_guest_count
    assert_equal(0, @room.guest_count)
  end

  def test_add_guest_to_room
    @room2.add_guest(@guest)
    assert_equal(1, @room2.guest_count)
  end

  def test_remove_guest_from_room
    @room2.add_guest(@guest)
    @room2.add_guest(@guest2)
    @room2.remove_guest(@guest)
    assert_equal(1, @room2.guest_count)
  end

  def test_at_full_capacity
    @room.add_guest(@guest)
    @room.add_guest(@guest2)
    assert_equal(true, @room.at_full_capacity)
  end

  def test_not_at_full_capacity
    @room.add_guest(@guest)
    assert_equal(false, @room.at_full_capacity)
  end

end