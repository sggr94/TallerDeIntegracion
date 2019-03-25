class EstrellasController < ApplicationController
	def show
		@estrella = HTTParty.get("https://swapi.co/api/starships/#{params[:id]}/.json")
		@cabros = []
		@cine = []

		@estrella["pilots"].each do |i|
			@charac = HTTParty.get(i)
			@cabros.push(@charac)
		end

		@estrella["films"].each do |i|
			@peli = HTTParty.get(i)
			@cine.push(@peli)
		end

	end
end