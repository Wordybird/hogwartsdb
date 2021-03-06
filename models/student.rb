require_relative('../db/sql_runner')
require_relative('house.rb')

class Student

  attr_reader(:first_name, :last_name, :house_id, :age, :id)

  def initialize(options)
    @first_name=options['first_name']
    @last_name=options['last_name']
    @house_id=options['house_id'].to_i
    @age=options['age'].to_i
    @id=nil || options['id'].to_i
  end

  def save()
    sql="INSERT INTO students (first_name, last_name, house_id, age) VALUES ('#{@first_name}','#{@last_name}',#{@house_id},#{@age}) RETURNING *"
    student_data=SqlRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end

  def self.all()
    sql="SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(student) }
    return result
  end

  def self.find(id)
    sql="SELECT * FROM students WHERE id = #{id}"
    student= SqlRunner.run(sql)
    result=Student.new(student[0])
    return result
  end

  def self.delete_all()
    sql="DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.delete(id)
    sql = "DELETE FROM students WHERE id=#{id}"
    SqlRunner.run(sql)
  end

  def self.update(options)
    sql = "UPDATE students SET
          first_name='#{options['first_name']}',
          last_name='#{options['last_name']}',
          house_id='#{options['house_id']}',
          age='#{options['age']}'
          WHERE id='#{options['id']}'"
    SqlRunner.run(sql)
  end

  def house()
    sql = "SELECT * FROM houses WHERE id=#{@house_id};"
    result = SqlRunner.run(sql)
    house = House.new(result.first)
    return house
  end

end