# User.create(
#         email: "user@gmail.com",
#         password: "123456"
#     )

20.times do |_i|
  checklist = Checklist.create(title: FFaker::Book.title,
                               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ', user_id: 1)
  Audit.create(checklist: checklist, user_id: 1)
  Question.create(title: FFaker::Book.title, description: 'Lorem ipsum', checklist: checklist)
end
