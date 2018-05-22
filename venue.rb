class Venue
  attr_reader :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city

    @@all << self
  end

  def concerts
    # Find all concerts that have been performed at THIS venue
    Concert.all.select {|concert| concert.venue == self }
  end

  def bands
    # Find ALL bands that played at THIS venue
    #  - Find all the concerts that have been performed at this venue
    #  - Find all the bands that were at that concert
    self.concerts.map{ |concert| concert.band }
  end

  def self.all
    @@all
  end
end
