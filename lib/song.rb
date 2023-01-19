require 'pry'
class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@artists_hash = {}
    @@genres = []
    @@genres_hash = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        artists_num = @@artists.tally
    end

    def self.genre_count
        genres_num = @@genres.tally
    end
       
end
