# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create([{email: "admin@gmail.com", encrypted_password: "admin123", username: "Antima Singh", designation: "Administrator", status: true, age: 34, gender: "F", hospital_id: 1, role_id: 3, department_id: nil}])