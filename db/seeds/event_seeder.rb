events = []

8.times do |i|
  events << [
      "name" => Faker::Lorem.sentence,
      "description" => Faker::Lorem.paragraph,
      "address" => Faker::Address.full_address,
      "date" => Faker::Date.between(from: 2.days.ago, to: 2.months.after),
      "active" => i == 3 ? 1 : 0,
  ]
end

events.each do |event|
  Event.create(event)
end
