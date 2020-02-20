require 'pry'

class Song

attr_accessor :name,:artist,:genre

@@genres = []
@@count = 0
@@artists = []

def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@artists << artist

end

def self.count
    @@count
end

def self.genres
@@genres.uniq!
end

def self.artists
    @@artists.uniq!
end

def self.genre_count
  hash = {}
 
 @@genres.each do |n|
        hash[n] = @@genres.count(n)

    end
    hash
end

def self.artist_count
    hash = {}
 
    @@artists.each do |n|
           hash[n] = @@artists.count(n)
   end
   hash
end

end