user = User.find_or_create_by(email: "user@example.com") do |user|
  user.first_name = "Emma"
  user.last_name = "Watson"
  user.email = "user@example.com"
  user.password = "password"
  user.password_confirmation = "password"
end

teams = Team.create!([
  { name: "Team A" },
  { name: "Team B" },
  { name: "Team C" }
])

teams.each do |team|
  team.users << user
end

spaceNames = ["front-end", "back-end", "research and development", "operations"]

spaceNames.each do |spaceName|
  teams[0].spaces << Space.create!(name: spaceName)
end
