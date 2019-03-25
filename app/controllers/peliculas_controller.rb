class PeliculasController < ApplicationController
	def show
		@pelicula = HTTParty.get("https://swapi.co/api/films/#{params[:id]}/.json")
		@cabros = []
		@mundos = []
		@muerte = []

		@pelicula["characters"].each do |i|
			@charac = HTTParty.get(i)
			@cabros.push(@charac)
		end

		@pelicula["planets"].each do |j|
			@plan = HTTParty.get(j)
			@mundos.push(@plan)
		end

		@pelicula["starships"].each do |k|
			@estre = HTTParty.get(k)
			@muerte.push(@estre)
		end
	end
end