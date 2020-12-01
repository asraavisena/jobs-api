# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.delete_all
Joblanguage.delete_all
Shiftdatejob.delete_all

# Language.delete_all
# User.delete_all
# Shiftdate.delete_all

# User.create(email: 'test2@test2.de',
#             password: '123test')
# User.create(email: 'test@test.com',
#             password: 'test123')

# Language.create(name: 'deutsch')
# Language.create(name: 'englisch')
# Language.create(name: 'indonesisch')

Job.create(title: 'seed jobs 1',
           salary: 20, language_ids: [16, 17], shiftdate_ids: [8,14])
Job.create(title: 'jobs 2',
           salary: 5, language_ids: [17, 16], shiftdate_ids: [9,10])
Job.create(title: 'seed 3',
           salary: 10, language_ids: [18], shiftdate_ids: [8,9,10,11,12])
Job.create(title: 'testing',
           salary: 8, language_ids: [16, 17], shiftdate_ids: [8,9,10,11,12,13,14])

# Shiftdate.create(name: "monday")
# Shiftdate.create(name: "tuesday")
# Shiftdate.create(name: "wednesday")
# Shiftdate.create(name: "thursday")
# Shiftdate.create(name: "friday")
# Shiftdate.create(name: "saturday")
# Shiftdate.create(name: "sunday")