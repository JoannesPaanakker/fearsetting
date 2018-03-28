# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds started"

Fix.destroy_all
Prevention.destroy_all
Fear.destroy_all
Benefit.destroy_all
Challenge.destroy_all
User.destroy_all

users = User.create([
  {
    email: 'test@test.com',
    password: '123456',
    name: 'John Doe',
  },
  {
    email: 'test2@test.com',
    password: '123456',
    name: 'Henk habraken',
  },
  {
    email: 'test3@test.com',
    password: '123456',
    name: 'Piet Hobbelduif',
  }
])

challenges = Challenge.create([
  {
    description: 'Going on an adventure',
    acceptable: 'false',
    cost_inaction_hy: 'bored',
    cost_inaction_yr: 'very bored',
    cost_inaction_3y: 'bored to death',
    user: users[0],
  },
  {
    description: 'Buy a new house',
    acceptable: 'true',
    cost_inaction_hy: 'Savings',
    cost_inaction_yr: 'More savings',
    cost_inaction_3y: 'Lots of savings',
    user: users[0],
  },
  {
    description: 'Going back to school',
    acceptable: 'false',
    cost_inaction_hy: 'uneducated',
    cost_inaction_yr: 'still unaducated',
    cost_inaction_3y: 'getting fired',
    user: users[1],
  },
  {
    description: 'Sell the house',
    acceptable: 'false',
    cost_inaction_hy: 'no money',
    cost_inaction_yr: 'still no money',
    cost_inaction_3y: 'House broke down and still no money...',
    user: users[2],
  },  
])

benefits = Benefit.create([
  {
    description: 'exciting',
    challenge: challenges[0]
  },
  {
    description: 'A new house!',
    challenge: challenges[1]
  },
  {
    description: 'Learn something',
    challenge: challenges[2]
  },
  {
    description: 'Lots of money',
    challenge: challenges[3]
  },
  {
    description: 'away from home',
    challenge: challenges[0]
  },
  {
    description: 'no repairs (for the time being)',
    challenge: challenges[1]
  },
])

fears = Fear.create([
  {
    description: 'scary',
    challenge: challenges[0]
  },
  {
    description: 'don\'t like the neighbourhood',
    challenge: challenges[1]
  },
  {
    description: 'I am too stupid',
    challenge: challenges[2]
  },
  {
    description: 'Nowhere to live',
    challenge: challenges[3]
  },
  {
    description: 'No income from work',
    challenge: challenges[0]
  },
  {
    description: 'will not like the weather',
    challenge: challenges[1]
  }
])

fixes = Fix.create([
  {
    description: 'Drink whiskey',
    fear: fears[0]
  },
  {
    description: 'Stay in all day',
    fear: fears[1]
  },
  {
    description: 'Work hard',
    fear: fears[2]
  },
  {
    description: 'Move in with parents',
    fear: fears[3]
  },
  {
    description: 'Get a job',
    fear: fears[4]
  },
  {
    description: 'Cheer up!',
    fear: fears[5]
  }
])

preventions = Prevention.create([
  {
    description: 'Go to known areas',
    fear: fears[0]
  },
  {
    description: 'Organise welcoming party',
    fear: fears[1]
  },
  {
    description: 'Go to highschool',
    fear: fears[2]
  },
  {
    description: 'Buy a new house',
    fear: fears[3]
  },
  {
    description: 'Get a job',
    fear: fears[4]
  },
  {
    description: 'Buy a house in a warm country',
    fear: fears[5]
  },
])

p "seeds successfull"


