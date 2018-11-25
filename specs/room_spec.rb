require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("Room 1")
  end

  def test_get_name()
    assert_equal("Room 1", @room.name())
  end

def test_get_entry_fee()
  assert_equal(10, @room.entry_fee())
end

  def test_room_empty()
    assert_equal("Room empty", @room.room_status)
  end

  def test_check_in_guest()
    guest = Guest.new("Adam", 20)

    @room.check_in_guest(guest)

    actual = @room.guests.include?(guest)
    assert_equal(true, actual)
end

def test_check_out_guest()
  guest = Guest.new("Adam", 20)
  @room.check_in_guest(guest)

  @room.check_out_guest(guest)

  actual = @room.guests.include?(guest)

  assert_equal(false, actual)
  assert_equal("Guest checked out, room now has 0 guests", @room.room_status)
end

def test_add_song_to_room()
  song = Song.new("Happy Birthday")

  @room.add_song_to_room(song)

  actual = @room.playlist.include?(song)
  assert_equal(true, actual)
end

def test_too_many_guests_check_in_fail()
  guest1 = Guest.new("Adam", 20)
  guest2 = Guest.new("Adam", 20)
  guest3 = Guest.new("Adam", 20)
  guest4 = Guest.new("Adam", 20)
  guest5 = Guest.new("Adam", 20)
  guest6 = Guest.new("Adam", 20)
  guest7 = Guest.new("Adam", 20)
  guest8 = Guest.new("Adam", 20)
  guest9 = Guest.new("Adam", 20)
  guest10 = Guest.new("Adam", 20)
  guest11 = Guest.new("Adam", 20)

    @room.check_in_guest(guest1)
    @room.check_in_guest(guest2)
    @room.check_in_guest(guest3)
    @room.check_in_guest(guest4)
    @room.check_in_guest(guest5)
    @room.check_in_guest(guest6)
    @room.check_in_guest(guest7)
    @room.check_in_guest(guest8)
    @room.check_in_guest(guest9)
    @room.check_in_guest(guest10)
    @room.check_in_guest(guest11)


    actual = @room.guests.count
    assert_equal(10, actual)
  end



end
