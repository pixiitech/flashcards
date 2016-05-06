# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create(prompt: "What is the command to create a rails project?", answer: "rails new <projectname>")
Question.create(prompt: "What does MVC stand for?", answer: "Model, View, Controller")
Question.create(prompt: "What is the command to create a model in Rails?", answer: "rails generate model <modelname> <fields>\ni.e., rails g model Lions name:string has_mane:boolean num_paws:integer")
Question.create(prompt: "What is the command to create a controller in Rails?", answer: "rails generate controller <controllername> <methods>")
Question.create(prompt: "Type the following phrase in snake case: Mary had a little lamb", answer: "mary_had_a_little_lamb")
Question.create(prompt: "Type the following phrase in camel case: The cat in the hat", answer: "TheCatInTheHat")
Question.create(prompt: "Which model statement indicates that the class has a foreign key?", answer: "belongs_to")
Question.create(prompt: "Which function creates a link in a rails view?", answer: "link_to\nSyntax: link_to 'Link Text', <path func or object>")
Question.create(prompt: "What function (used in views) would return the URL path to the 'create' method for the 'Article' class?", answer: "new_article_path")
Question.create(prompt: "What is the name of the database access framework underlying Rails?", answer: "ActiveRecord")
Question.create(prompt: "Which type of database is typically used with Heroku?", answer: "Postgre SQL")
Question.create(prompt: "What keyword is used in routes.rb for routing all standard view/edit/delete pages for a class (to save code)", answer: "resources :controllername")
Question.create(prompt: "Which Rails file directs internet traffic from a URL path to the corresponding controller/method?", answer: "routes.rb (located in config)")
Question.create(prompt: "What folder would images be stored in Rails?", answer: "app/assets/images")