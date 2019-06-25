require 'pry'

class Genre

  attr_accessor :name, :artist, :genre
  @@all = []
  @artist = []
  @songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
    song.genre
    end
  end

  def artists
    Song.all.map{|song| song.artist}
  end
end
