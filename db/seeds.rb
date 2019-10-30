require 'faker'



10.times do		
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)
end
puts "on cree 10 villes"

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.email, age: rand(18..99), city: City.all.sample)
end
puts "on cree 10 users avec la ville"

10.times do |index|
	Gossip.create(title: "Gossip#{index}",content: Faker::ChuckNorris.fact, user: User.all.sample)
end
puts "on cree 10 gossips avec user"


10.times do 		
	Tag.create(title: "##{Faker::Games::Pokemon.name}")
end
puts "on cree 10 tags"


1.upto(20) do |index|		
	JoinTableGossipTag.create(gossip: Gossip.find(index), tag: Tag.all.sample)	
end
puts "Fait la relation de 20 gossips avec des tags"

20.times do	
	Comment.create(content: Faker::Movies::Hobbit.quote, user: User.all.sample, gossip: Gossip.all.sample)
end
puts "on cree 20 comments"

20.times do 		
	if rand(0..10)%2==0 #ca nous donne donc une condition pair ou impair
		Like.create(user: User.all.sample, gossip: Gossip.all.sample)
	else
		Like.create(user: User.all.sample, comment: Comment.all.sample)
	end
end
puts "on cree 20 likes ou un like de comment ou de gossip"

puts "Notre database a bien ete creee"


