users = [
    ["name" => "admin", "email" => "admin@site.com", "password" => BCrypt::Password.create(123456), "admin" => 1, "public" => 0],
    ["name" => "admin", "email" => "admin@a.a", "password" => BCrypt::Password.create(123456), "admin" => 1, "public" => 0]
]

2.times do
  users << [
      "name" => Faker::Name.name + " " + Faker::Name.last_name,
      "email" => Faker::Internet.unique.email,
      "phone" => [55, 50, 51, 70, 77].shuffle.first.to_s + rand(221..795).to_s + rand(21..98).to_s + rand(10..85).to_s,
      "company" => Faker::Company.name,
      "rank" => 1,
      "description" => Faker::Lorem.paragraph,
      "position" => Faker::Job.position,
      "password" => BCrypt::Password.create(123456),
      "degree_id" => rand(1..4),
      "region_id" => rand(1..295),
      "reference_id" => rand(1..6),
  ]
end

4.times do
  users << [
      "name" => Faker::Name.name + " " + Faker::Name.last_name,
      "email" => Faker::Internet.unique.email,
      "phone" => [55, 50, 51, 70, 77].shuffle.first.to_s + rand(221..795).to_s + rand(21..98).to_s + rand(10..85).to_s,
      "company" => Faker::Company.name,
      "rank" => 2,
      "description" => Faker::Lorem.paragraph,
      "position" => Faker::Job.position,
      "password" => BCrypt::Password.create(123456),
      "degree_id" => rand(1..4),
      "region_id" => 20,
      "reference_id" => rand(1..6),
  ]
end

12.times do
  users << [
      "name" => Faker::Name.name + " " + Faker::Name.last_name,
      "email" => Faker::Internet.unique.email,
      "phone" => [55, 50, 51, 70, 77].shuffle.first.to_s + rand(221..795).to_s + rand(21..98).to_s + rand(10..85).to_s,
      "company" => Faker::Company.name,
      "rank" => 3,
      "description" => Faker::Lorem.paragraph,
      "position" => Faker::Job.position,
      "password" => BCrypt::Password.create(123456),
      "degree_id" => rand(1..4),
      "region_id" => 20,
      "reference_id" => rand(1..6),
  ]
end

50.times do
  users << [
      "name" => Faker::Name.name + " " + Faker::Name.last_name,
      "email" => Faker::Internet.unique.email,
      "phone" => [55, 50, 51, 70, 77].shuffle.first.to_s + rand(221..795).to_s + rand(21..98).to_s + rand(10..85).to_s,
      "company" => Faker::Company.name,
      "description" => Faker::Lorem.paragraph,
      "position" => Faker::Job.position,
      "password" => BCrypt::Password.create(123456),
      "degree_id" => rand(1..4),
      "region_id" => 20,
      "reference_id" => rand(1..6),
  ]
end


users.each do |user|
  User.create(user)
end
