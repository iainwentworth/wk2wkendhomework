class Guest

  attr_reader :name
  attr_accessor :cash, :favourite_song

  def initialize(name, cash)
    @name = name
    @cash = cash
    @favourite_song = nil
  end

    def if_guest_song_on_playlist_then_guest_cheers(room)
      if room.playlist.include?(@favourite_song)
        return "Whoo!"
      end
      return nil
    end










end
