# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CityState = Struct.new(:city, :state)
city_states = [
  CityState.new('Boston',      'Massachusetts'),
  CityState.new('Worcester',   'Massachusetts'),
  CityState.new('Providence',  'Rhode Island'),
  CityState.new('Springfield', 'Massachusetts'),
  CityState.new('Bridgeport',  'Connecticut'),
  CityState.new('New Haven',   'Connecticut'),
  CityState.new('Hartford',    'Connecticut'),
  CityState.new('Stamford',    'Connecticut'),
  CityState.new('Waterbury',   'Connecticut'),
  CityState.new('Manchester',  'New Hampshire'),
  CityState.new('Lowell',      'Massachusetts'),
  CityState.new('Cambridge',   'Massachusetts'),
  CityState.new('New Bedford', 'Massachusetts'),
  CityState.new('Brockton',    'Massachusetts'),
  CityState.new('Quincy',      'Massachusetts'),
  CityState.new('Lynn',        'Massachusetts'),
  CityState.new('Fall River',  'Massachusetts'),
  CityState.new('Nashua',      'New Hampshire'),
  CityState.new('Norwalk',     'Connecticut'),
  CityState.new('Newton',      'Massachusetts'),
]

(1..10).each do

  city_state = city_states.sample

  # create person
  person = Person.create({
    first_name: RandomWord.nouns.next,
    last_name:  RandomWord.nouns.next,
    age:        Random.rand(1..100),
    city:       city_state.city,
    state:      city_state.state,
  })

  # create things
  things = (1..10).map do
    person.things.create({
      name:        RandomWord.nouns.next,
      description: RandomWord.nouns.next,
    })
  end

end
