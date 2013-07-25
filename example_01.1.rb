# create a an instance of the Person class and assign it first and last name properties

class Person
  attr_accessor :first, :last

  def fullname
    "My full name is #{first} #{last}"
  end

end

person = Person.new

person.first = "Joe"

person.last = "Gesualdo"

puts person.fullname
