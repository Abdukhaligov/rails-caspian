memberships = [
    ["name" => "Speaker", "reporter" => 0],
    ["name" => "Poster", "reporter" => 0],
    ["name" => "Listener", "reporter" => 0],
    ["name" => "Media", "reporter" => 0],
    ["name" => "Accompanying", "reporter" => 0],
    ["name" => "Guest", "reporter" => 0],
]

memberships.each do |membership|
  Membership.create(membership)
end
