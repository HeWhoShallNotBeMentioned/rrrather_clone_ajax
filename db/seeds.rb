# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(option1: "be a doctor?", option2: "be a lawyer?")
Question.create(option1: "have a small dog?", option2: "have a big dog?")
Question.create(option1: "have mermaids be real?", option2: "have unicorns be real?")
Question.create(option1: "be a ninja?", option2: "be a wizard?")

Comment.create(title: "Doctor!", text: "You save people's lives!", question_id: 1)
Comment.create(title: "Big dog", text: "Who wants a yippie little designer dog?", question_id: 2)
Comment.create(title: "Wizard", text: "Magic! Think about the possibilities.", question_id: 4)
Comment.create(title: "Lawyer", text: "You can make peoples lives better by shaping the law.", question_id: 1)
