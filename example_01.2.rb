# Create a constructor function for Person class and then call a property on an instance of Person

class Person
  attr_reader :name, :job, :age
  def initialize (name, age, job ='unemployed') # takes 3 parameters, job is optional.
    @name = name
    @age = age
    @job =job
  end
end

person = Person.new("joe", 22)

puts person.job
