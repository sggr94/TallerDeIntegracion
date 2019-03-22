class PeliculasController < ApplicationController
	def show
		@pelicula = HTTParty.get("https://swapi.co/api/films/#{params[:id]}/.json")
	end
end