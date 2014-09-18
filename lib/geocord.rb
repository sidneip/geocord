require "geocord/version"
require 'faraday'
require 'uri'
require 'json'

module Geocord
	class Cordinate
  	attr_accessor :latitude, :longitude
	end

	def self.process(address)
		uri = URI.encode("http://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false")
		uri = URI.parse(uri)
		conn = Faraday.new(:url => uri)
		response = conn.get
		data = JSON.parse(response.body)
		if data['results'].size < 1
			return nil
		else
			cordinate = Cordinate.new
			cordinate.latitude  = data['results'][0]['geometry']['location']['lat']
			cordinate.longitude = data['results'][0]['geometry']['location']['lng'] 
			return cordinate
		end
	end
end
