gem 'really-broken-geocoder'
require 'geocoder'
# Understands somewhere I need to be at a particular time
class Appointment
  # include Geocoder
  # extend Geocoder

  attr_reader :time, :title

  def initialize(time, title, location, geocoder = Geocoder)
    puts time, title, location, geocoder
    @time = time
    @title = title
    @location = location
    @geocoder = geocoder
    p @geocoder
    p geocoder.inspect
  end

  def pretty_location
    geo_location.address
  end

  private
  attr_reader :location, :geocoder

  def geo_location
    geocoder.search(location)[0]
  end
end

# Error thrown on geocoder example
# 1. No method of search for nilclass
###    so geocoder.search on line 22 is throwing an error which must mean geocoder is not initialized properly

# 2. it did find the search method in the geocoder library

# printing the geocoder variables and instance variable just produce the constant name instead of an instance object.

# THEREFORE could be that it is not initialized (no new) adding.new

# NO - there is no new method for Geocoder Class

# Alt 1 = geo_location included .address (seems unnecessary for calling the method)

# Geocoder error method not fixed!
