# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{username: 'Trevor'}, {username: 'Miso'}, {username: 'Carl Jungus'}])


poll1 = Poll.create(author_id: User.all.first.id, title: "Life's tough questions")

poll2 = Poll.create(author_id: User.all[1].id, title: "General Questions")

poll1_question_1 = Question.create(poll_id: poll1.id, q_text: "How many fish are in the sea?")
poll1_question_2 = Question.create(poll_id: poll1.id, q_text: "How many grains of sand are on a beach?")


# poll2_question_1 = Question.create(poll_id: poll2.id, q_text: "What is my name?")
# poll2_question_2 = Question.create(poll_id: poll2.id, q_text: "How old am I?")
# poll2_question_3 = Question.create(poll_id: poll2.id, q_text: "Whats my blood type?")

p1q1a1 = AnswerChoice.create(question_id: poll1_question_1.id, a_text: "too many")
p1q1a2 = AnswerChoice.create(question_id: poll1_question_1.id, a_text: "too few")

p1q2a1 = AnswerChoice.create(question_id: poll1_question_2.id, a_text: "too many")
p1q2a2 = AnswerChoice.create(question_id: poll1_question_2.id, a_text: "too few")


r1 = Response.create(user_id: User.all[1].id, answer_choice_id: p1q1a1.id)
r2 = Response.create(user_id: User.all[1].id, answer_choice_id: p1q2a2.id)

