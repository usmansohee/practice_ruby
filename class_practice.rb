class School
  attr_accessor :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end

  def to_s
    "School object"
  end

end

obj = School.new("pubg", "ukrine")

puts obj.name