# Modifying a Blank Object
o = Object.new # Creates a blank object
def o.my_method # Augment our blank object with a method
  1 + 1
end
o.my_method # => 2

### Instance variables are variables that each instance of an object gets. Starts with @.

def o.set_name (name) # Sets the instance varible "name"
  @name = name
end

def o.get_name # Gets the instance variable "name"
  @name
end

o.set_name "Andrew"
o.get_name # => Andrew


# CREATING A CLASS

class Person # Creates a Person Class
 
end


# CREATING PROPERTIS

class Person
  def name= name # this is the setter for property "name". Now we can set by intance.name = "joe"
    @name = name
  end

  def name
    @name
  end
end

class Person
  attr_accessor :name # This creates a setter and getter for you! Same as the above code. Must pass a symbol, not string (i.e. :name)
end

def greet
  "#{@name} says, Hello there!"
end

# TODO: What are attr_reader and attr_writer
#


# CREATING A CONSTRUCTOR

# A constructor function sets up code when an instance of a class is created. In ruby the
# constructor function is named initialize

class Person
  attr_accessor :name, :job, :age # need this to call the properties
  def initialize (name, age, job ='unemployed') # takes 3 parameters, job is optional.
    @name = name
    @age = age
    @job =job
  end
end


# CREATING PRIVATE METHODS

# Private methods are functions that can only be called by other functions within the class.
# They aren't exposed to the outside world. Private methods should be placed under all your 
# public code (instance and class methods), add the keyword private once above your private methods

private
def get_real_weight #if you try this on an instance of person, it wont work
  @weight
end


# CREATING CLASS METHODS AND VARIABLES

# Class methods and properties are functions and variable that aren't accessible from instance of a class
# but from the class itself. Class variable are prefixed with @@

Class Person
@@count = 0 # class variabel are prefixed with @@
  def initialize (name, age, job = 'unemployed')
    @name = name
    @age = age
    @job = job
    
    @@count += 1
  end

  def self.count # a class method is prefixed with self
    @@count
  end
end

Person.count # you should be able to call the class method like this






