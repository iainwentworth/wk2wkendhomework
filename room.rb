class Room

  attr_reader :name, :entry_fee
  attr_accessor :guests, :capacity, :playlist, :room_status, :no_of_guests

  def initialize(name)
    @name = name
    @guests = []
    @no_of_guests = 0
    @max_capacity = 10
    @playlist = []
    @room_status = "Room empty"
    @entry_fee = 10
  end

  def check_in_guest(guest)

    return if room_full()
    return if guest_cannot_pay_entry_fee(guest)


    @guests << guest
    @no_of_guests += 1
    guest.cash -= @entry_fee
    @room_status = "Guest booked in, room now has #{@no_of_guests} guests"

end

def check_out_guest(guest)
  if @guests.include?(guest)
    @guests.delete(guest)
    @no_of_guests -= 1
    @room_status = "Guest checked out, room now has #{@no_of_guests} guests"
  end
end

  def room_full()
    @no_of_guests >= @max_capacity
  end


def guest_cannot_pay_entry_fee(guest)
 guest.cash < @entry_fee
end

  def add_song_to_room(song)
    @playlist << song
  end






end
