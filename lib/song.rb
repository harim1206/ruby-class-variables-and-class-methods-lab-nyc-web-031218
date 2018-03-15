require 'pry'

class Song

  attr_accessor :count, :artists, :genres, :name, :artist, :genre


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

  def self.genres
    @@genres.uniq{|x| x}

  end

  def self.artists
    @@artists.uniq{|x| x}
  end


  # arr.each_with_object({}) { |s,h| h["color#{idx.next}"] = s }

  def self.genre_count

    @@genres.each_with_object({}){ |genre, hash|
      hash[genre] = @@genres.count(genre)

      # binding.pry
    }
    # binding.pry

  end

  def self.artist_count

    @@artists.each_with_object({}){ |artist, hash|
      hash[artist] = @@artists.count(artist)

      # binding.pry
    }
    # binding.pry

  end




end

wham = Song.new("Everything she wants", "Wham!", "Balearic Pop")
jackson = Song.new("I believe in miracles", "Jackson Sisters", "Disco")
bell = Song.new("Ring my bell", "Anita Ward", "Disco")
p Song.genre_count
