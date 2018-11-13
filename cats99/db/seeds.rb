# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  Cat.destroy_all


  c1 = Cat.create!(name: 'Markov', birth_date: '2015/01/20', color: 'BLACK', sex: 'M', description: 'A russian cat' )
  
end
