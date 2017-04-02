User.create!(name: "Example user",email: "example@rails.org",password: "Testss",password_confirmation:"Testss")

99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@rails.org"
    password = "password"
    User.create!(name:name,email: email,password:password,password_confirmation:password)
end