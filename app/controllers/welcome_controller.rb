class WelcomeController < ApplicationController
	def show
  	#ce code nest pas necessaire, il nous permettait juste d afficher dans le terminal le retour du params
  	 puts "$" * 60
     puts  params[:id]
     puts "$" * 60
  	end

end
