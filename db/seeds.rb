

20.times do |i|
 checklist = Checklist.create(title: FFaker::Book.title, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ', user_id: 1)
 Audit.create(checklist: checklist, user_id: 1)
end


