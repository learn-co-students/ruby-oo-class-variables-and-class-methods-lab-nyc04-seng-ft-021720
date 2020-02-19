class Song
    attr_accessor :name, :artist, :genre 

    @@count = 0 
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end 


    def self.count()
        @@count
    end 

    def self.artists()
       unique_artists = @@artists.uniq!
        unique_artists
    end 

    def self.genres()
       unique_genre = @@genres.uniq!
        unique_genre
    end 

    def self.genre_count()
        @@genres.each do |genre|
            if @@genre_count[genre]
                @@genre_count[genre] += 1 
            else 
                @@genre_count[genre] = 1
            end 
        end 
        @@genre_count
    end 

    def self.artist_count()
        @@artists.each do |artist|
            if @@artist_count[artist]
                @@artist_count[artist] += 1 
            else 
                @@artist_count[artist] = 1
            end 
        end 
        @@artist_count
    end 
end 