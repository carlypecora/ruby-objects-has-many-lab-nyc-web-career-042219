class Artist
	attr_accessor :name, :artist
	@@songs = []

	def initialize(name)
		@name = name
	end

	def add_song(song)
		song.artist = self
		@@songs << song
	end

	def songs
		@@songs
	end

	def add_song_by_name(song_name)
		song = Song.new(song_name)
		add_song(song)
	end

	def self.song_count
		@@songs.length
	end
end