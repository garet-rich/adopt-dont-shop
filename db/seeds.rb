# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Shelter.destroy_all
Pet.destroy_all

btfs = Shelter.create!(id: 1, foster_program: true, name: "Big Time Family Shelter", address: "123 Main Street", city: "Denver", state: "CO")
rmas = Shelter.create!(id: 2, foster_program: false, name: "Rocky Mountain Animal Shelter", address: "987 South Street", city: "Arvada", state: "CO")

charlie = Pet.create!(adoptable: true, age: 6, color: "brown", breed: "Labrador Retriever", name: "Charlie", shelter_id: 1)
frankie = Pet.create!(adoptable: false, age: 11, color: "black spotted", breed: "Cat", name: "Frankie", shelter_id: 1)
francoise = Pet.create!(adoptable: true, age: 781, color: "blue grey", breed: "Clam", name: "Francoise", shelter_id: 2)