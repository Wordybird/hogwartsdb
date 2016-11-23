require_relative('../models/student')
require ('pry-byebug')

Student.delete_all()

student1 = Student.new({
  "first_name" => "Val",
  "last_name" => "Dryden",
  "house" => "Griffindor",
  "age" => 11
})
student2 = Student.new({
  "first_name" => "Cameron",
  "last_name" => "Fulton",
  "house" => "Hufflepuff",
  "age" => 12
})

student3 = Student.new({
  "first_name" => "Ben",
  "last_name" => "Faulkner",
  "house" => "Ravenclaw",
  "age" => 11
})

student4 = Student.new({
  "first_name" => "Lewis",
  "last_name" => "MacNee",
  "house" => "Slytherin",
  "age" => 11
})

student1.save()
student2.save()
student3.save()
student4.save()

students = Student.all

binding.pry
nil