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

Tenant.create([
  {name: 'William', api_key: 'e098e507-c546-4c58-9b6b-32c026c530fa'},
  {name: 'Angelika', api_key: '6af2c485-b9b9-434b-a98c-7dc08bafd12b'},
  {name: 'Goldschmidt', api_key: '7c6c0f37-0675-423a-8426-c3ecd9fe212f'},
  {name: 'Heike', api_key: '9e9f4d7b-0125-4944-b9b5-7dce71f03027'},
  {name: 'Jennifer', api_key: '5cfe5fed-b082-42f7-b90a-a79b6975b1c2'}
])
