# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Horoscope.destroy_all
# UserHoroscope.destroy_all 

cat = User.create(name: "cat", birthdate: 19840224)
bob = User.create(name:"bob", birthdate: 19550316)
 
horoscope = Horoscope.create(user_id: cat.id, title: "new", text:"some text")
# hello = Horoscope.create(user_id: cat.id, title: "another", text:"some text")

horoscopes = [
    {"love" => "Today you will find the love of your life"},
    {"positivity" =>"You have nothing to lose bu being postive, but much more to lose by not being positive"},
    {"another one" => "today will be another awesome day"},
    {"why not?" => "Today you will be offered something very daring. Go for it! You only live once"},
    {"forget yesterday" => "Its gone, forget abouy it! Focus on making today great"},
    {"smile!" => "Smiling will always make you feel better"},
    {"money" => "money isn't everything, but today you will get a lot of it!"},
    {"have fun!" => "Today will be a great day to have fun!"},
    {"let go" => "Today you will realize that thing you've been holding onto is better to let go. You'll feel better"},
    {"what if?" => "What if you didn't worry at all today, try it out and see how great your day will be"},
    {"it's already yours" => " That thing you've wanted for so long is already yours, you just have to go get it!"}
]

horoscopes.each do |array|
    array.each do |name, horoscope|
    Horoscope.create(user_id: cat.id, title: name, text: horoscope )
    end
end

UserHoroscope.create(user_id: bob.id, horoscope_id:Horoscope.first.id)