module GossipsHelper
	#pas necessaire ici je crois mais je le laisse au cas ou...flemme de tester fatigue, necessaire sure dans sessions_helper.erb
	def current_user
    User.find_by(id: session[:user_id])
  end
end
