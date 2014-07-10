namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Anirudh",
                         email: "anirudh@chronus.com",
                         password: "anirudh",
                         password_confirmation: "anirudh")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@chronus.com"
      password  = "anirudh"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
