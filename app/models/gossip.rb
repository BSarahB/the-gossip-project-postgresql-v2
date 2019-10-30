class Gossip < ApplicationRecord
	#relation 1N avec User Comment et Like
    belongs_to :user
    has_many :comments
    has_many :join_table_gossip_tags
    has_many :tags, through: :join_table_gossip_tags #Relation NN entre Gossip et Tag d ou la necessite de passer par une table intermedaire table jointe.
	validates :title, length: {in:3..14} #on valide la presence du titre du gossip si ce dernier respecte une longueur comprise entre 3 et 14
    validates :content, presence: true #on impose la presence d un contenu pour valider le gossip
end
