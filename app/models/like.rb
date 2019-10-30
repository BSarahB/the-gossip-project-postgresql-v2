class Like < ApplicationRecord
	belongs_to :user #relation 1N entre Like et user , et avec comment et gossip
	belongs_to :comment, optional: true
	belongs_to :gossip, optional: true #mis en optional pour pouvoir faire Like.create sans avoir derreurs et sans necessairement avoir de relation obligatoire
end
