require 'pry'

class Song
  attr_accessor :name, :artist, :genre, :artist_count
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {@artist => @artist_count}
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
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
    genre_totals = {}
    @@genres.each do |genre|
    if !genre_totals[genre]
      genre_totals[genre] = 1
    else
      genre_totals[genre] += 1
    end
    end
    genre_totals
  end
  
  def self.artist_count
    artist_totals = {}
    @@artists.each do |artist|
      if !artist_totals[artist] 
        artist_totals[artist] = 1
      else
        artist_totals[artist] += 1
      end
    end
    artist_totals
  end
  
end