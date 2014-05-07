# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode

# Create a Song class
# initialize it with 2 vars: song, band
# #play which "plays" a song

# create Playlist subclass
# Playlist initializes with 1 arg song class (which has 2 args)
# #add adds a track
# #num_of_tracks tells you the number of songs
# #remove removes a track from the playlist
# #includes?(track) tells you if the track is in the playlist
# #play_all plays all of the tracks
# #display shows the whole playlist

# Initial Solution
class Song

  def initialize(song, band)
    @@band = band
    @@song = song
  end

  def play
    puts "Playing '#{@@song}' by '#{@@band}'"
  end

end

class Playlist < Song

  def initialize(*songs)
    @songs = [*songs]
  end

  def add(*songs)
    @songs << [*songs]
    # p @songs
  end

  def num_of_tracks
    @songs.length
    p @songs.length
  end
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
