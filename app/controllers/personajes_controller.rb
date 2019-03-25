class PersonajesController < ApplicationController
	def show
		@personaje = HTTParty.get("https://swapi.co/api/people/#{params[:id]}/.json")
		@ser = []
		@mundo = HTTParty.get(@personaje["homeworld"])
		@cine = []
		@muerte = []
		@auto = []

		@personaje["films"].each do |i|
			@peli = HTTParty.get(i)
			@cine.push(@peli)
		end

		@personaje["species"].each do |j|
			@seres = HTTParty.get(j)
			@ser.push(@seres)
		end

		@personaje["starships"].each do |k|
			@estre = HTTParty.get(k)
			@muerte.push(@estre)
		end

		@personaje["vehicles"].each do |l|
			@vehi = HTTParty.get(l)
			@auto.push(@vehi)
		end
	end
end