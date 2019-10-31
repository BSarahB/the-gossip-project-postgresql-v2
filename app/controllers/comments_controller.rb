class CommentsController < ApplicationController

	def new
 # Méthode qui crée un COMMENTAIRE vide et l'envoie à une view new.html.erb (de comments) qui affiche le formulaire pour 'le remplir' (new.html.erb)
	    @comment = Comment.new

	end

	def create


     # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
     # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
	#on verifie que le formulaire envoie bien les params saisis code entre les puts $ non necessaire , mais qui nous permet de checker au debut 
   	  puts "*" * 100
   	  puts "ceci est le contenu de params formulaire comments et signifie que le formulaire pointe bien sur create :"
      puts params
      puts "*" * 100
   	 #OK ca envoie bien ici 


      @comment = Comment.new(content: params[:content], user: User.find_by(id: session[:user_id]), gossip_id: params[:gossip_id])
      if @comment.save
        flash[:success] = 'Le commentaire a ete cree avec succes'
        redirect_to(@comment.gossip)
        else
          redirect_to gossips_path
      end
    end

end
