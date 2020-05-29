# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chef1 = Chef.create(name: "Ronald McDonald")
chef2 = Chef.create(name: "Samantha Gates")

dish1 = chef1.dishes.create(name: "Nuggies", description: "100% real chicken (30% of the time)")
dish2 = chef1.dishes.create(name: "McFlurry", description: "The machine is broken")
dish3 = chef2.dishes.create(name: "Poptart Casserole", description: "World Famous")
dish2 = chef2.dishes.create(name: "Snail Legs", description: "Hard to find")
