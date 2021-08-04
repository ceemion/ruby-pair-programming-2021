# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: "Fiyin"}, {name: "Jane Doe"}])

question_one = Question.create(title: "What is your name?", is_private: true, user: users.first)
Answer.create(body: "My name is Fiyin", question_id: question_one.id, user: users.first)
Answer.create(body: "Jane Doe is my name.", question_id: question_one.id, user: users.second)

question_two = Question.create(title: "What languages do you speak?", is_private: false, user: users.second)
Answer.create(body: "I speak English and French", question_id: question_two.id, user: users.second)
