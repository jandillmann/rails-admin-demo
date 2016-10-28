# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

alice = User.create(email: 'alice@example.org', password: 's3cret')
bob = User.create(email: 'bob@example.org', password: 's3cret')

# Content from http://clickotron.com
Post.create(user: alice, title: "New President Is 'Hours Away' From Royal Pregnancy", body: "Learn about The New York Times political system that is built in the high road, with co-written by Paul Bush and the president on how early the region is and the future of the oil used in Japan.\r\n\r\nIn a surprise letter to the Senate Will Smith on March 18, the Obama administration made a point of putting private information in an address to the U.S. Men's Democratic Party that was expected to attack free trade, and it would raise U.S., among other states.")
Post.create(user: alice, title: "A Tour Of The Future Of Hot Dogs In The United States", body: "Every week in 2012, I get the love of my friend and have a battle with L.A. Magazine. You can read Justin Palin's. Here's the conversation: You can get to your house in a very different way.")
Post.create(user: bob, title: "Weird Things Couples Do On Valentine's Day", body: "And yet they've got a new level of new kids... all we have to pay for this: it's cool, ” said Today, \"People the fun.\" How many of us learn about Kim Kardashian? What's the best way to live and your lives?\r\n\r\nAfter years of research on the risk of the issues of money, crime bill could take place in New York state. Now is the right time for Americans to take a stand back toward each other.\r\n\r\nIt's easy as important to understand how much and what could be called a earlier thing. To tell and not to get in, we would be Google of being called the best and most happy person in the world.")
Post.create(user: bob, title: "Photo Of World's Most Controversial Money", body: "We can't let go of these days and we're already seeing T - U, which means we think the nation needs a business and understand why now is a good time to live. We believe that we need to look to the building and figure out how to create the world's biggest internet service.\r\n\r\nA new study could light your eye for a new, full new trailer full of you and your friends.")
