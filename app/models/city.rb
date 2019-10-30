class City < ApplicationRecord
		has_many :users #Relation 1N entre user et city (user aura belongs_to :city)
end
