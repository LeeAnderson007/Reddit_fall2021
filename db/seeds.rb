# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Sub.destroy_all
Topic.destroy_all
# 10.times do
#   x = Faker::Verb.simple_present
#   y = Faker::Verb.ing_form
#   z = Faker::Verb.base
#   s = Sub.create(name: "#{x} #{y} #{z}")
#   4.times do
#     s.topics.create(name: Faker::Verb.simple_present, body: Faker::Quote.famous_last_words)
#   end
# end
# puts "seeded #{Sub.all.size} Subs"
# puts "first sub name: #{Sub.first.name}"
# puts "seeded #{Topic.all.size} Topics"
# puts "first topic name: #{Sub.first.topics.first.name}"
programming = Sub.create(name: "Programming")
bob_ross = Sub.create(name: "Bob Ross")
music = Sub.create(name: "Music")

js = programming.topics.create(name:"Javascript", body:'Js is the language od the web and totes my faves')
programming.topics.create(name:"Ruby", body:'Ruby is the language of the rails')

Topic.create(name:'all about happy trees', body:"bob roos likes to paint trees", sub_id:bob_ross.id)
Topic.create(name:'all about happy Mountains', body:"bob ross likes to paint Mountains", sub_id:bob_ross.id)

music.topics.create(name:'80s synth', body:'totes mcgee my friend')
music.topics.create(name:'90s synth', body:'does this exist?')

js.comments.create(body:"yes, i aggrre", flagged:false)     # flagged: rand(2)even?
js.comments.create(body:"#*$&%^$ js", flagged:true)
