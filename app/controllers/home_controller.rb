class HomeController < ApplicationController
	def index
		@episodio_4 = HTTParty.get("https://swapi.co/api/films/1/.json")
		@episodio_5 = HTTParty.get("https://swapi.co/api/films/2/.json")
		@episodio_6 = HTTParty.get("https://swapi.co/api/films/3/.json")
		@episodio_1 = HTTParty.get("https://swapi.co/api/films/4/.json")
		@episodio_2 = HTTParty.get("https://swapi.co/api/films/5/.json")
		@episodio_3 = HTTParty.get("https://swapi.co/api/films/6/.json")
		@episodio_7 = HTTParty.get("https://swapi.co/api/films/7/.json")
	end
end