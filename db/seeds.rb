100.times do |n|
  name  = "example-#{n+1}"
  Book.create!(name:  name)
end
