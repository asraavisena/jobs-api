# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'test2@test2.de',
            password: '123test')

Job.create(title: 'seed jobs 1',
           salary: 20)
Job.create(title: 'jobs 2',
           salary: 5)
Job.create(title: 'seed 3',
           salary: 10)
Job.create(title: 'seed jobs 4',
           salary: 8)

Language.create(name: 'deutsch')
Language.create(name: 'englisch')
Language.create(name: 'indonesisch')
