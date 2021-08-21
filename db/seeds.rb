# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Pet.destroy_all
Shelter.destroy_all
Veterinarian.destroy_all
VeterinaryOffice.destroy_all

btfs = Shelter.create!(id: 1, foster_program: true, name: "Big Time Family Shelter", address: "123 Main Street", city: "Denver", state: "CO")
rmas = Shelter.create!(id: 2, foster_program: false, name: "Rocky Mountain Animal Shelter", address: "987 South Street", city: "Arvada", state: "CO")

charlie = Pet.create!(adoptable: true, age: 6, color: "brown", breed: "Labrador Retriever", name: "Charlie", shelter_id: 1)
frankie = Pet.create!(adoptable: false, age: 11, color: "black spotted", breed: "Cat", name: "Frankie", shelter_id: 1)
francoise = Pet.create!(adoptable: true, age: 781, color: "blue grey", breed: "Clam", name: "Francoise", shelter_id: 2)

wcvo = VeterinaryOffice.create!(id:1, name: "West Charles Vet Office", address: "567 2nd Street", city: "Maintown", state: "NC", max_capacity: 200, overnight_stay: true)
tpvo = VeterinaryOffice.create!(id:2, name: "Twin Peaks Vet Office", address: "243 Elm Street", city: "Twin Peaks", state: "WA", max_capacity: 120, overnight_stay: false)

thomas = Veterinarian.create!(name: "Thomas", review_rating: 8, schedule: "Monday - Friday, 9am - 5pm", veterinary_office_id: 1)
bob = Veterinarian.create!(name: "Bob", review_rating: 5, schedule: "Friday - Monday, 8pm - 5am", veterinary_office_id: 1)
leeland = Veterinarian.create!(name: "Leeland", review_rating: 9, schedule: "Monday - Friday, 10am - 8pm", veterinary_office_id: 2)