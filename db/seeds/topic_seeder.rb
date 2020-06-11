topics = [
    ["name" => "Культурно-историческое наследие: история и современность", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Интеграционные процессы и право", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Экономическая безопасность", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Агропромышленный комплекс", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Эколого-биологические вопросы использования природных ресурсов", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Современная медицина: новые подходы и актуальные исследования", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Вопросы технических и физико-математических наук в свете современных интеграционных процессов", "description" => Faker::Lorem.paragraph(15),],
    ["name" => "Наука и образование", "description" => Faker::Lorem.paragraph(15),],
]

8.times do
  topics << [
      "name" => Faker::Lorem.sentence,
      "description" => Faker::Lorem.paragraph(15),
      "topic_id" => rand(1..8),
  ]
end

topics.each do |topic|
  Topic.create(topic)
end
