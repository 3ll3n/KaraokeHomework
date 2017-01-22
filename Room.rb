class Room

  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity

    @guests = []
    @playlist = []
  end

  def get_playlist_length
    return @playlist.count
  end

  def add_song(song)
    @playlist.push(song)
  end

  def guest_count
    return @guests.count
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

end