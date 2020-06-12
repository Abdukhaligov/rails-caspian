topics = [
    ["name" => "Культурно-историческое наследие: история и современность", "description" => Faker::Lorem.paragraph,],
    ["name" => "Интеграционные процессы и право", "description" => Faker::Lorem.paragraph,],
    ["name" => "Экономическая безопасность", "description" => Faker::Lorem.paragraph,],
    ["name" => "Агропромышленный комплекс", "description" => Faker::Lorem.paragraph,],
    ["name" => "Эколого-биологические вопросы использования природных ресурсов", "description" => Faker::Lorem.paragraph,],
    ["name" => "Современная медицина: новые подходы и актуальные исследования", "description" => Faker::Lorem.paragraph,],
    ["name" => "Вопросы технических и физико-математических наук в свете современных интеграционных процессов", "description" => Faker::Lorem.paragraph,],
    ["name" => "Наука и образование", "description" => Faker::Lorem.paragraph,],
]

8.times do
  topics << [
      "name" => Faker::Lorem.sentence,
      "description" => Faker::Lorem.paragraph,
      "topic_id" => rand(1..8),
  ]
end

topics.each do |topic|
  Topic.create(topic)
end
