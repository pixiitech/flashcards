# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create(id: 1, prompt: "What is the command to create a rails project?", answer: "rails new <projectname>")
AnswerKeyword.create(text: "rails new", case_sensitive: false, order: 1, question_id: 1);

Question.create(id: 2, prompt: "What does MVC stand for?", answer: "Model, View, Controller")
AnswerKeyword.create(text: "model", case_sensitive: false, order: 1, question_id: 2);
AnswerKeyword.create(text: "view", case_sensitive: false, order: 2, question_id: 2);
AnswerKeyword.create(text: "controller", case_sensitive: false, order: 3, question_id: 2);

Question.create(id: 3, prompt: "What is the command to create a model in Rails?", answer: "rails generate model <modelname> <fields>\ni.e., rails g model Lions name:string has_mane:boolean num_paws:integer")
AnswerKeyword.create(text: "rails generate model", case_sensitive: false, order: 1, question_id: 3);
AnswerKeyword.create(text: "rails g model", case_sensitive: false, order: 1, question_id: 3);

Question.create(id: 4, prompt: "What is the command to create a controller in Rails?", answer: "rails generate controller <controllername> <methods>")
AnswerKeyword.create(text: "rails generate controller", case_sensitive: false, order: 1, question_id: 4);
AnswerKeyword.create(text: "rails g controller", case_sensitive: false, order: 1, question_id: 4);

Question.create(id: 5, prompt: "Type the following phrase in snake case: Mary had a little lamb", answer: "mary_had_a_little_lamb")
AnswerKeyword.create(text: "mary_had_a_little_lamb", case_sensitive: true, order: 1, question_id: 5);

Question.create(id: 6, prompt: "Type the following phrase in camel case: The cat in the hat", answer: "TheCatInTheHat")
AnswerKeyword.create(text: "TheCatInTheHat", case_sensitive: true, order: 1, question_id: 6);

Question.create(id: 7, prompt: "Which model statement indicates that the class has a foreign key?", answer: "belongs_to")
AnswerKeyword.create(text: "belongs_to", case_sensitive: false, order: 1, question_id: 7);

Question.create(id: 8, prompt: "Which function creates a link in a rails view?", answer: "link_to\nSyntax: link_to 'Link Text', <path func or object>")
AnswerKeyword.create(text: "link_to", case_sensitive: false, order: 1, question_id: 8);

Question.create(id: 9, prompt: "What function (used in views) would return the URL path to the 'create' method for the 'Article' class?", answer: "new_article_path")
AnswerKeyword.create(text: "new_article_path", case_sensitive: false, order: 1, question_id: 9);

Question.create(id: 10, prompt: "What is the name of the database access framework underlying Rails?", answer: "ActiveRecord")
AnswerKeyword.create(text: "activerecord", case_sensitive: false, order: 1, question_id: 10);

Question.create(id: 11, prompt: "Which type of database is typically used with Heroku?", answer: "Postgre SQL")
AnswerKeyword.create(text: "postgresql", case_sensitive: false, order: 1, question_id: 11);
AnswerKeyword.create(text: "postgre sql", case_sensitive: false, order: 1, question_id: 11);
AnswerKeyword.create(text: "pg", case_sensitive: false, order: 1, question_id: 11);

Question.create(id: 12, prompt: "What keyword is used in routes.rb for routing all standard view/edit/delete pages for a class (to save code)", answer: "resources :controllername")
AnswerKeyword.create(text: "resources", case_sensitive: false, order: 1, question_id: 12);

Question.create(id: 13, prompt: "Which Rails file directs internet traffic from a URL path to the corresponding controller/method?", answer: "routes.rb (located in config)")
AnswerKeyword.create(text: "routes.rb", case_sensitive: false, order: 1, question_id: 13);

Question.create(id: 14, prompt: "What folder would images be stored in Rails?", answer: "app/assets/images")
AnswerKeyword.create(text: "app/assets/images", case_sensitive: false, order: 1, question_id: 14);

Question.create(id: 15, prompt: "Which Rails file adds default data to the database?", answer: "seeds.rb (located in db)")
AnswerKeyword.create(text: "seeds.rb", case_sensitive: false, order: 1, question_id: 15);
