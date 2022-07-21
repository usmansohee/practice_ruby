require_relative 'my_modules/brypt_password'

class School
  include BcryptPassword
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

hashed = obj1.create_bcrypt_password(obj1.name)

puts hashed