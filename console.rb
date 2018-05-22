require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'


mt = Band.new("MouseTrap", "Pawne, IN")
b_s= Band.new("Brittany Spears", "Las Vegas, NV")
venue = Venue.new("TrapHouse", "Pawne, IN")
jj_stadium = Venue.new("JJ Stadium", "Jacksonville, FL")

mt.booking_a_gig(venue, "2018-05-22")
b_s.booking_a_gig(jj_stadium, "2018-05-22")

binding.pry

hi = 'hello'
