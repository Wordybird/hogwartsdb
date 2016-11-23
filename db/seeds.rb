require_relative('../models/student')
require_relative('../models/house')

require ('pry-byebug')

House.delete_all()
Student.delete_all()

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
  "url"=>"http://yourwayscooler.weebly.com/uploads/1/7/5/4/17542421/_5095786_orig.png"
  })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
  "first_name" => "Val",
  "last_name" => "Dryden",
  "house_id" => house1.id,
  "age" => 11
})

student2 = Student.new({
  "first_name" => "Cameron",
  "last_name" => "Fulton",
  "house_id" => house2.id,
  "age" => 12
})

student3 = Student.new({
  "first_name" => "Ben",
  "last_name" => "Faulkner",
  "house_id" => house3.id,
  "age" => 11
})

student4 = Student.new({
  "first_name" => "Lewis",
  "last_name" => "MacNee",
  "house_id" => house4.id,
  "age" => 11
})

student1.save()
student2.save()
student3.save()
student4.save()

students = Student.all

binding.pry
nil