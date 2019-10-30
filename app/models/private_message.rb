class PrivateMessage < ApplicationRecord
	#ici on implemente la methode class_name
	belongs_to :sender, class_name: "User" #1message appartient a un sender qui en fait une class User grace a la methode class_name
	belongs_to :recipient, class_name: "User" #1message appartient a un receveur qui est en fait une classe User ""
end
