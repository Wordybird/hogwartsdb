require_relative('../models/student')
require_relative('../models/house')

require ('pry-byebug')

Student.delete_all()
House.delete_all()

house1=House.new({
  "name"=>"Griffindor",
  "url"=>"http://vignette4.wikia.nocookie.net/harrypotter/images/3/37/Gryffindor_Crest.jpg/revision/latest?cb=20120317101541"
  })
house2=House.new({
  "name"=>"Hufflepuff",
  "url"=>"http://vignette1.wikia.nocookie.net/harrypotter/images/8/8c/Hufflepuff_ClearBG2.png/revision/latest?cb=20160702234018"
  })
house3=House.new({
  "name"=>"Ravenclaw",
  "url"=>"http://vignette3.wikia.nocookie.net/harrypotter/images/9/94/Ravenclaw_Logo.jpg/revision/latest?cb=20140627182803"
  })
house4=House.new({
  "name"=>"Slytherin",
  "url"=>"http://vignette4.wikia.nocookie.net/harrypotter/images/e/ef/Slytherin%E2%84%A2_Crest_(Painting).png/revision/latest?cb=20091129190321"
  })

house1.save()
house2.save()
house3.save()
house4.save()

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