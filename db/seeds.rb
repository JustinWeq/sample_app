User.create!(name: "Jeremy Red",email: "zoomdude111@hotmail.com",password: "zoom4000",password_confirmation:"zoom4000",admin: true)

99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@rails.org"
    password = "password"
    User.create!(name:name,email: email,password:password,password_confirmation:password)
end