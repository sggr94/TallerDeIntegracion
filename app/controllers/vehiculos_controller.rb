class VehiculosController < ApplicationController
	def show
		@vehiculo = HTTParty.get("https://swapi.co/api/vehicles/#{params[:id]}/.json")
		@cabros = []
		@cine = []

		@vehiculo["pilots"].each do |i|
			@charac = HTTParty.get(i)
			@cabros.push(@charac)
		end

		@vehiculo["films"].each do |i|
			@peli = HTTParty.get(i)
			@cine.push(@peli)
		end
	end
end