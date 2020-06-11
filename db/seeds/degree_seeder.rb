degree_list = [
    ["name" => "PhD"],
    ["name" => "Doctor"],
    ["name" => "Corresponding member"],
    ["name" => "Academician"]
]

degree_list.each do |degree|
  Degree.create(degree)
end
