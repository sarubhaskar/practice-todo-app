# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
User.create(name: "Saru", email: "saru@example.com", password_digest: "password")
User.create(name: "Justin", email: "justin@example.com", password_digest: "password")
User.create(name: "Valerie", email: "valerie@example.com", password_digest: "password")
User.create(name: "Rexly", email: "rexly@example.com", password_digest: "password")

Todo.create(user_id: "1", category_id: 1, title: "Clean house", description: "Mop the floors", deadline: "Wednesday", completed: "No")
Todo.create(user_id: "2", category_id: 2, title: "Deliberate Practice", description: "Practice loops everyday", deadline: "Sunday", completed: "No")

Category.create(name: "To Do At Home")
Category.create(name: "To Do At School")

#   end
