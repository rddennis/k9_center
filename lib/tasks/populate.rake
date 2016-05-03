namespace :db do
  desc "Clear the db and fill with excellent sample data"
  task :populate => :environment do
      require 'populator'
      require 'faker'

      #clears the db of old data
      [Dog, Owner, Vet].each(&:destroy_all)

      #Adds excellent data to DB
      Breed.all.each do |breed|
       Owner.populate 1..4 do |owner|
         owner.first_name = Faker::Name.first_name
         owner.last_name = Faker::Name.last_name
         owner.phone = Faker::PhoneNumber.cell_phone
         owner.emergency_name = Faker::Name.name
         owner.emergency_phone = Faker::PhoneNumber.cell_phone
         Vet.populate 1..2 do |vet|
          vet.doctor = "Dr. " + Faker::Name.name
          vet.clinic = Faker::Commerce.product_name
          vet.phone = Faker::PhoneNumber.phone_number
           Dog.populate 2..4 do |dog|
            dog.name = Faker::Book.title, Faker::Commerce.product_name
            dog.owner_id = owner.id
            dog.breed_id = breed.id
            dog.checked_in = true
            dog.vet_id = vet.id
            end
          end
        end
      end
      puts "Well done! You have populated the database!"
  end
end