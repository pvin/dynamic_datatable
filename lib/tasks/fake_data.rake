require 'faker'

namespace :populate_date do

  desc "generate 200 dummy data using faker"
  task :faker_data => :environment do
    (1..200).each do
      User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email,
                  gender:Faker::Gender.type)
    end
  end

  desc 'Say hello!'
  task :hello_world do
    puts "Hello"
  end

end