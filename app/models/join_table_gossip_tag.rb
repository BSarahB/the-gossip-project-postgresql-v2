class JoinTableGossipTag < ApplicationRecord
	belongs_to :gossip #meme si elle sert de table jointe elle nest qu en relation 1N avec Gossip et Tag alors quentre eux ils sont NN
	belongs_to :tag
end
