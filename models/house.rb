require_relative('../db/sql_runner')

class House

  attr_reader(:name, :url, :id)

  def initialize(options)
    @name=options['name']
    @url=options['url']
    @id=nil || options['id'].to_i
  end

  def save()
    sql="INSERT INTO houses (name,url) VALUES ('#{name}','#{url}') RETURNING *"
    house_data=SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end

  def self.all()
    sql="SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house) }
    return result
  end

  def self.find(id)
    sql="SELECT * FROM houses WHERE id = #{id}"
    house= SqlRunner.run(sql)
    result=House.new(house.first)
    return result
  end

  def self.delete_all()
    sql="DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def students()
    sql = "SELECT * FROM students WHERE house_id=#{@id};"
    results = SqlRunner.run(sql)
    students = results.map{ |result| Student.new(result)}
    return students
  end

end