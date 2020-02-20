require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []

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

    def self.genre_count
        # create a hash based on the @@genres array, and add each unique element as a key
            # with a starting value of 0
        genre_count_hash = Hash[@@genres.collect {|item| [item, 0]}]
        # iterate through the @@genres array, and for every key in genre_count_hash that matches
            # an element in @@genres, add 1
        @@genres.each do |v|
            genre_count_hash[v] +=1
        end
        genre_count_hash
    end

    def self.artist_count
        # create a hash based on the @@artists array, and add each unique element as a key
            # with a starting value of 0
        artist_count_hash = Hash[@@artists.collect {|item| [item, 0]}]
        # iterate through the @@artists array, and for every key in artist_count_hash that matches
            # an element in @@artists, add 1
        @@artists.each do |v|
            artist_count_hash[v] +=1
        end
        artist_count_hash
    end

end