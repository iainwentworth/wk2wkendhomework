require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

def setup()
@song = Song.new("Born in the USA")
end

def test_get_name()
  assert_equal("Born in the USA", @song.name())
end





end
