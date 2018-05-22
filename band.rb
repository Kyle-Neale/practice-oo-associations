class Band

  attr_accessor :name
  attr_reader :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown

    @@all << self
  end

  def booking_a_gig(venue, date)
    # venue - Venue Object
    # date - String
    # date, band, venue
    Concert.new(date, self, venue)
  end

  def concerts
    Concert.all.select{ |concert| concert.band == self}
  end

  def venues
    # We want to find our venues from concerts that we have performed in
    #  - concert **where I have played in**
    #  - venue - every concert has a venue
    self.concerts.map do |concert| concert.venue end
  end

  def self.all_introductions
    # Band should have a method Band.all_introductions
    # that puts out a message of "Hello, we are
    # {insert band name here} and we're from
    # {insert hometown here}" for each band
    self.all.each do |band|
      puts "Hello, we're #{band.name} and we're from #{band.hometown}"
    end
  end

  def self.all
    @@all
  end
end
