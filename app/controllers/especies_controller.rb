class EspeciesController < ApplicationController
	def show
		@especie = HTTParty.get("https://swapi.co/api/species/#{params[:id]}/.json")
		@cine = []
		@cabros = []

		@especie["films"].each do |i|
			@peli = HTTParty.get(i)
			@cine.push(@peli)
		end

		@especie["people"].each do |i|
			@charac = HTTParty.get(i)
			@cabros.push(@charac)
		end
	end
end
