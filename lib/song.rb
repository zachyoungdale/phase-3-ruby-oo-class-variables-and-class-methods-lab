class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def self.artists 
        @@artists.uniq
    end

    def self.genres 
        @@genres.uniq
    end

    def self.count 
        @@count
    end

    def self.artist_count
        artist_count = @@artists.tally
        artist_count
    end

    def self.genre_count
        genre_count = @@genres.tally
        genre_count
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
end