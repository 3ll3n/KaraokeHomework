require("minitest/autorun")
require("minitest/rg")

require_relative("../Song")

class TestSongs < MiniTest::Test

def setup

  @song = Song.new("I Will Survive", "Gloria Gaynor")
  @song2 = Song.new("Flashdance, What a Feeling", "Irene Cara")
  @song3 =Song.new("Fame", "Irene Cara")

end

  def test_song_name
    assert_equal("Fame", @song3.name)
  end

  def test_song_artist
    assert_equal("Irene Cara", @song2.artist)
  end

end