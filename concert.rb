class Concert

  attr_reader :band, :venue, :date

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue

    @@all << self
  end

  def hometown_show?
    #Concert should have a
    # method Concert#hometown_show?
    #that returns true if the
    # concert is in the band's hometown

    self.band.hometown == self.venue.city
  end

  def self.all
    @@all
  end
end
