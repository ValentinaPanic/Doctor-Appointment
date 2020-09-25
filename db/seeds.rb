# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


patients = Patient.create(
    [
        {name: "James Rogers"}, 
        {name: "John Smith"}, 
        {name: "Stephen Colbert"}
    ]
) 
doctors = Doctor.create(
    [
        {name: "Valentina Panic", practice: "Chiropractor", rating: 10},
        {name: "Nick Riviera", practice: "Dr. Nick's Walk-In Clinic", rating: 1},
        {name: "Julius Hibbert", practice: "M.D. Family Practice", rating: 7}
    ]
) 