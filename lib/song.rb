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

  def self.create_by_name(song_name)
    s = Song.new
    s.name = song_name
    s.save
    s
  end

  def self.find_by_name(song_name)
    self.all.detect {|song| song == song_name}
  end

end

Song.create
Song.create_by_name("A Forest")
binding.pry
