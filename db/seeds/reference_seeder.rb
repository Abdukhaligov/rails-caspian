references = [
    ["name" => "Email Newsletter"],
    ["name" => "Partners / Acquaintances"],
    ["name" => "Online advertising"],
    ["name" => "Social network advertising"],
    ["name" => "Advertising mail"],
    ["name" => "Another"]
]


references.each do |reference|
  Reference.create(reference)
end
