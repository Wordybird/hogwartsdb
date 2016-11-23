require_relative('../db/sql_runner')

class Student

  attr_reader(:first_name, :last_name, :house, :age, :id)

  def initialize(options)
    @first_name=options['first_name']
    @last_name=options['last_name']
    @house=options['house']
    @age=options['age'].to_i
    @id=nil || options['id'].to_i
  end

  def save()
    sql="INSERT INTO students (first_name, last_name, house, age) VALUES ('#{first_name}','#{last_name}','#{house}',#{age}) RETURNING *"
    student_data=SqlRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end

end