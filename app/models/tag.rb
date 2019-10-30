class Tag < ApplicationRecord
	#Tag a une relation NN avec Gossip donc on passe par la table jointe
	has_many :join_table_gossip_tags
	has_many :gossips, through: :join_table_gossip_tags
end
