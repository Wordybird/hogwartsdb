require_relative('../models/student')
require_relative('../models/house')

require ('pry-byebug')

Student.delete_all()
House.delete_all()

house1=House.new({
  "name"=>"Griffindor",
  "url"=>"http://vignette4.wikia.nocookie.net/pottermore/images/1/16/Gryffindor_crest.png/revision/latest?cb=20111112232412"
  })
house2=House.new({
  "name"=>"Hufflepuff",
  "url"=>"http://vignette1.wikia.nocookie.net/harrypotter/images/8/8c/Hufflepuff_ClearBG2.png/revision/latest?cb=20160702234018"
  })
house3=House.new({
  "name"=>"Ravenclaw",
  "url"=>"http://vignette1.wikia.nocookie.net/harrypotter/images/4/40/Ravenclaw_Crest_1.png/revision/latest?cb=20150413213520"
  })
house4=House.new({
  "name"=>"Slytherin",
  "url"=>"http://vignette1.wikia.nocookie.net/pottermore/images/4/45/Slytherin_Crest.png/revision/latest?cb=20111112232353"
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