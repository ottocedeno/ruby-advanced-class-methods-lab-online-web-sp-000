require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    s = Song.new
    s.save
    s
  end

  def self.new_by_name(song_name)
    s = Song.new
    s.name = song_name
    s
  end

  def self.create_by_name
  end
  
end

Song.create
Song.new_by_name("A Forest")
binding.pry
