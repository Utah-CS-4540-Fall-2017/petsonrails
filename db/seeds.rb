# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dog = AnimalType.find_or_create_by(name: 'dog')
cat = AnimalType.find_or_create_by(name: 'cat')
horse = AnimalType.find_or_create_by(name: 'horse')
cow = AnimalType.find_or_create_by(name: 'cow')
reptile = AnimalType.find_or_create_by(name: 'reptile')
bird = AnimalType.find_or_create_by(name: 'bird')

AnimalSubtype.find_or_create_by(name: 'mutt', animal_type: dog)
AnimalSubtype.find_or_create_by(name: 'bulldog', animal_type: dog)
AnimalSubtype.find_or_create_by(name: 'dachshund', animal_type: dog)
AnimalSubtype.find_or_create_by(name: 'rottweiler', animal_type: dog)
AnimalSubtype.find_or_create_by(name: 'angry', animal_type: cat)
AnimalSubtype.find_or_create_by(name: 'morose', animal_type: cat)
AnimalSubtype.find_or_create_by(name: 'indifferent', animal_type: cat)
AnimalSubtype.find_or_create_by(name: 'clydesdale', animal_type: horse)
AnimalSubtype.find_or_create_by(name: 'bay', animal_type: horse)
AnimalSubtype.find_or_create_by(name: 'palomino', animal_type: horse)
AnimalSubtype.find_or_create_by(name: 'hereford', animal_type: cow)
AnimalSubtype.find_or_create_by(name: 'holstein', animal_type: cow)
AnimalSubtype.find_or_create_by(name: 'iguana', animal_type: reptile)
AnimalSubtype.find_or_create_by(name: 'turtle', animal_type: reptile)
AnimalSubtype.find_or_create_by(name: 'kimodo dragon', animal_type: reptile)
AnimalSubtype.find_or_create_by(name: 'canary', animal_type: bird)
AnimalSubtype.find_or_create_by(name: 'eagle', animal_type: bird)
AnimalSubtype.find_or_create_by(name: 'owl', animal_type: bird)


50.times do
  u = User.find_or_create_by(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email)
  if u.owner.blank?
    u.create_owner(rating: Faker::Number.between(1, 10))
  end
  if u.owner.pets.blank?
    ast = AnimalSubtype.all.sample
    puts "Using AnimalSubtype #{ast.name}"
    u.owner.pets.create(animal_subtype: ast)
  end
end
