#Create a User first

new_user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456")
puts 'User created'

#Create 10 cars then

9.times do |n|
  Car.create(make: "Mercedes #{n}", model: "CLS 63", seats: "5", engine_size: "6", transmission: "auto", color: "Black", reg_year: "#{n}",  fuel_type: "Petrol", user: new_user)
end

puts "created 10 cars"
