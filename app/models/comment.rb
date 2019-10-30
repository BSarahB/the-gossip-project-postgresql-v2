class Comment < ApplicationRecord
	#un commentaire a une relation 1N avec User Gossip et Like 
	belongs_to :user
	belongs_to :gossip
	has_many :likes
end
