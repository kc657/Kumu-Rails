# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Classroom.create({name: "Puppy Training", description: "Train your puppy into becoming a Jedi"})
Classroom.create({name: "Basket Weaving", description: "There is no greater thrill"})

Post.create({name: "Choosing The Proper Yarn Carefully", description: "Not all Yarns are created equal", url: "news.ycombinator.com/news"})
Post.create({name: "Best styles of Puppy Lightsabers", description: "Don't go with the red one.", url: "www.reddit.com/r/explainlikeimfive/"})
Post.create({name: "Markdown Test", description:"This is a Markdown TEST!",content: "# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
", url: "www.reddit.com/r/explainlikeimfive/"})
