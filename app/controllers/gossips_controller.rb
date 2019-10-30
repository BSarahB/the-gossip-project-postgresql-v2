class GossipsController < ApplicationController

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
	  puts @gossips = Gossip.all
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    @gossip = Gossip.find(params[:id])

  end

  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @gossip = Gossip.new
  end

  def create
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)

    #on verifie que le formulaire envoie bien les params saisis code entre les puts $ non necessaire , mais qui nous permet de checker au debut 
    puts "$" * 60
    puts "ceci est le contenu de params et signifie que le formulaire pointe bien sur create :"
    puts params
    puts "$" * 60

    #le code suivant est le code a rentrer dans $ rails c afin de creer en BDD un user test un gossip test qui a donc ce user associe. et on check si il y les rollbacks et si ca marche bien
    #u = User.new(first_name:"Sarah", last_name:"B", age:33, description:"unknowm", email:"sarah@sarah.com", city_id:City.all.sample.id)
    #u.save
    #@gossip = Gossip.new(title: params[:title], content: params[:content], user_id: u.id)
    #puis @gossip.save 
    #sil n y a pas de rollbacks notre save est bien effectue et notre @gossip sauve en BDD

    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 3) #dans rails c on recoit le message g.errors.messages
 #=> {:user=>["must exist"], :title=>["is too short (minimum is 3 characters)"], :content=>["can't be blank"]}

    if @gossip.save # essaie de sauvegarder en base @gossip
      flash[:success] = "The super potin was succesfully saved !"
    # si ça marche, il redirige vers la page d'index du site
        redirect_to root_path #redirect_to va passer root GET    /   gossips#index cf $ rails routes | grep root

  else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :new
  end
end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end

end
