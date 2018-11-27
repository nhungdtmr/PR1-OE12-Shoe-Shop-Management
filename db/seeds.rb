User.create!(name: "Nhung",
             email: "nhung@gmail.com",
             password: "111111",
             password_confirmation: "111111",
             address: "hanoi",
             phone: "0123456789",
             admin: true)
99.times do |n|
  name  = Faker::Name.name
  email = "nhung-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password: password,
               password_confirmation: password,
               address: address,
               phone: phone)
end
