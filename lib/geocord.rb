require "geocord/version"
require 'faraday'
require 'uri'
require 'json'

module Geocord
	GOOGLEAPIS = 'http://maps.googleapis.com/maps/api/geocode/json?address='
	CEPAPIS = 'http://correiosapi.apphb.com/cep/'
	class Cordinate
  	attr_accessor :latitude, :longitude
	end

	def self.process(address)
		uri = URI.encode("#{GOOGLEAPIS}#{address}&sensor=false")
		uri = URI.parse(uri)
		conn = Faraday.new(:url => uri)
		response = conn.get
		data = JSON.parse(response.body)
		if data['results'].size < 1
			return nil
		else
			cordinate = Array.new
				data['results'].each_with_index do |cord, index|
					cordinate[index] = {:endereco => cord['formatted_address'], :latitude => cord['geometry']['location']['lat'], :longitude => cord['geometry']['location']['lng']}
				end
			return cordinate
		end
	end

	def self.getCep(cep)
		cep = cep.delete('.').delete('-')
		uri = URI.encode("#{CEPAPIS}#{cep}")
		uri = URI.parse(uri)
		conn = Faraday.new(:url => uri)
		response = conn.get
		data = JSON.parse(response.body)
	  return endereco = {:cep => data['cep'], :tipo => data['tipoLogradouro'], :logradouro => data['logradouro'], :bairro => data['bairro'], :cidade => data['cidade'], :estado => data['estado']}
	end
	
end
