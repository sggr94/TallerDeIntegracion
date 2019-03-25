class PlanetasController < ApplicationController
	def show
		@planeta = HTTParty.get("https://swapi.co/api/planets/#{params[:id]}/.json")
		@cine = []
		@cabros = []
		
		@planeta["films"].each do |i|
			@peli = HTTParty.get(i)
			@cine.push(@peli)
		end

		@planeta["residents"].each do |i|
			@charac = HTTParty.get(i)
			@cabros.push(@charac)
		end
	end
end