# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SAMPLE_REACTS = [
  {
    name: 'Going around the world',
  },
  {
    name: 'graduating from college'
  },
  {
    name: 'publishing a book',
  }
]

SAMPLE_REACTS.each do |react|
  React.create(react)
end