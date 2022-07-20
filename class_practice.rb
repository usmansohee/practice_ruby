class School
  attr_accessor :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end

  def to_s
    "School object"
    "Name: #{@name}"
  end

end

obj1 = School.new("pubg", "ukrine")
obj2 = School.new("cod", "russia")
puts obj1
puts obj2

obj1.name=obj2.name
puts obj1