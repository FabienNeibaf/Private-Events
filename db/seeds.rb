# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  name = Faker::Name.name
  email = "student.#{i + 1}@microverse.com"

  user = User.create(name: name, email: email)
  event1 = Event.create(title: 'Workshop Event', event_date: DateTime.now,
                        description: "Special Workshop Event for Microverse \
                                      students, hosted by #{name}!",
                        creator_id: user.id)
  event2 = Event.create(title: 'Coding Event',
                        event_date: DateTime.new(2019, 7, 3, 15, 0, 0, '+3'),
                        description: "Special Coding Event for Microverse \
                                      students, hosted by #{name}!",
                        creator_id: user.id)

  event1.attendees = [user]
  event2.attendees = [user]

  user.created_events = [event1, event2]
end