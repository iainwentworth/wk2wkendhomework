require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("George", 50)
  end

  def test_get_name()
    assert_equal("George", @guest.name())
  end

  def test_get_cash()
    assert_equal(50, @guest.cash)
  end

  def test_if_guest_song_on_playlist_then_guest_cheers()
    guest = Guest.new("Adam", 50)
    room = Room.new('Room1')
    song = Song.new("Born in the USA")

    guest.favourite_song = song
    room.add_song_to_room(song)

    actual = guest.if_guest_song_on_playlist_then_guest_cheers(room)

    assert_equal("Whoo!", actual)
  end






end
