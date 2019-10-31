class CitiesController < ApplicationController
	def show

		    # Méthode qui récupère la ville concernée et l'envoie à la view show (show.html.erb) pour affichage

	  @city = City.find(params[:id])	
	end
end
