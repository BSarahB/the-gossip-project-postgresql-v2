class SessionsController < ApplicationController
  #On na pas d objet Session a proprement parler. mais on a besoin du controller pour executer les methodes create et 

  def new
    #va nous permettre d afficher le formulaire tag pour le log in, (apres avoir fait la creation de l utilisateur)
  end

  def create
    # Méthode qui créé une session  à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige ici vers gossips#index
  
  # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Vous etes connecte!'
      redirect_to gossips_path 
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy #methode du logout
    session.delete(:user_id)
    flash[:success] = 'Vous etes deconnecte'
    redirect_to gossips_path
  end

end